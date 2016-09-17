package org.jboss.netty.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.ConcurrentIdentityHashMap;
import org.jboss.netty.util.internal.ReusableIterator;
import org.jboss.netty.util.internal.SharedResourceMisuseDetector;

public class HashedWheelTimer implements Timer {
    private static final AtomicInteger id = new AtomicInteger();
    static final InternalLogger logger = InternalLoggerFactory.getInstance(HashedWheelTimer.class);
    private static final SharedResourceMisuseDetector misuseDetector = new SharedResourceMisuseDetector(HashedWheelTimer.class);
    final ReusableIterator<HashedWheelTimeout>[] iterators;
    final ReadWriteLock lock;
    final int mask;
    private final long roundDuration;
    final AtomicBoolean shutdown;
    final long tickDuration;
    final Set<HashedWheelTimeout>[] wheel;
    volatile int wheelCursor;
    private final Worker worker;
    final Thread workerThread;

    private final class HashedWheelTimeout implements Timeout {
        private volatile boolean cancelled;
        final long deadline;
        volatile long remainingRounds;
        final int stopIndex;
        private final TimerTask task;

        HashedWheelTimeout(TimerTask task, long deadline, int stopIndex, long remainingRounds) {
            this.task = task;
            this.deadline = deadline;
            this.stopIndex = stopIndex;
            this.remainingRounds = remainingRounds;
        }

        public Timer getTimer() {
            return HashedWheelTimer.this;
        }

        public TimerTask getTask() {
            return this.task;
        }

        public void cancel() {
            if (!isExpired()) {
                this.cancelled = true;
                HashedWheelTimer.this.wheel[this.stopIndex].remove(this);
            }
        }

        public boolean isCancelled() {
            return this.cancelled;
        }

        public boolean isExpired() {
            return this.cancelled || System.currentTimeMillis() > this.deadline;
        }

        public void expire() {
            if (!this.cancelled) {
                try {
                    this.task.run(this);
                } catch (Throwable t) {
                    HashedWheelTimer.logger.warn("An exception was thrown by " + TimerTask.class.getSimpleName() + ".", t);
                }
            }
        }

        public String toString() {
            long remaining = this.deadline - System.currentTimeMillis();
            StringBuilder buf = new StringBuilder(192);
            buf.append(getClass().getSimpleName());
            buf.append('(');
            buf.append("deadline: ");
            if (remaining > 0) {
                buf.append(remaining);
                buf.append(" ms later, ");
            } else if (remaining < 0) {
                buf.append(-remaining);
                buf.append(" ms ago, ");
            } else {
                buf.append("now, ");
            }
            if (isCancelled()) {
                buf.append(", cancelled");
            }
            return buf.append(')').toString();
        }
    }

    private final class Worker implements Runnable {
        private long startTime;
        private long tick;

        Worker() {
        }

        public void run() {
            List<HashedWheelTimeout> expiredTimeouts = new ArrayList();
            this.startTime = System.currentTimeMillis();
            this.tick = 1;
            while (!HashedWheelTimer.this.shutdown.get()) {
                waitForNextTick();
                fetchExpiredTimeouts(expiredTimeouts);
                notifyExpiredTimeouts(expiredTimeouts);
            }
        }

        private void fetchExpiredTimeouts(List<HashedWheelTimeout> expiredTimeouts) {
            HashedWheelTimer.this.lock.writeLock().lock();
            try {
                int oldBucketHead = HashedWheelTimer.this.wheelCursor;
                HashedWheelTimer.this.wheelCursor = (oldBucketHead + 1) & HashedWheelTimer.this.mask;
                fetchExpiredTimeouts(expiredTimeouts, HashedWheelTimer.this.iterators[oldBucketHead]);
            } finally {
                HashedWheelTimer.this.lock.writeLock().unlock();
            }
        }

        private void fetchExpiredTimeouts(List<HashedWheelTimeout> expiredTimeouts, ReusableIterator<HashedWheelTimeout> i) {
            long currentDeadline = System.currentTimeMillis() + HashedWheelTimer.this.tickDuration;
            i.rewind();
            while (i.hasNext()) {
                HashedWheelTimeout timeout = (HashedWheelTimeout) i.next();
                if (timeout.remainingRounds > 0) {
                    timeout.remainingRounds--;
                } else if (timeout.deadline < currentDeadline) {
                    i.remove();
                    expiredTimeouts.add(timeout);
                }
            }
        }

        private void notifyExpiredTimeouts(List<HashedWheelTimeout> expiredTimeouts) {
            for (int i = expiredTimeouts.size() - 1; i >= 0; i--) {
                ((HashedWheelTimeout) expiredTimeouts.get(i)).expire();
            }
            expiredTimeouts.clear();
        }

        private void waitForNextTick() {
            while (true) {
                long sleepTime = (HashedWheelTimer.this.tickDuration * this.tick) - (System.currentTimeMillis() - this.startTime);
                if (sleepTime <= 0) {
                    break;
                }
                try {
                    Thread.sleep(sleepTime);
                } catch (InterruptedException e) {
                    if (HashedWheelTimer.this.shutdown.get()) {
                        return;
                    }
                }
            }
            if (HashedWheelTimer.this.tickDuration * this.tick > Long.MAX_VALUE - HashedWheelTimer.this.tickDuration) {
                this.startTime = System.currentTimeMillis();
                this.tick = 1;
                return;
            }
            this.tick++;
        }
    }

    public HashedWheelTimer() {
        this(Executors.defaultThreadFactory());
    }

    public HashedWheelTimer(long tickDuration, TimeUnit unit) {
        this(Executors.defaultThreadFactory(), tickDuration, unit);
    }

    public HashedWheelTimer(long tickDuration, TimeUnit unit, int ticksPerWheel) {
        this(Executors.defaultThreadFactory(), tickDuration, unit, ticksPerWheel);
    }

    public HashedWheelTimer(ThreadFactory threadFactory) {
        this(threadFactory, 100, TimeUnit.MILLISECONDS);
    }

    public HashedWheelTimer(ThreadFactory threadFactory, long tickDuration, TimeUnit unit) {
        this(threadFactory, tickDuration, unit, 512);
    }

    public HashedWheelTimer(ThreadFactory threadFactory, long tickDuration, TimeUnit unit, int ticksPerWheel) {
        this.worker = new Worker();
        this.shutdown = new AtomicBoolean();
        this.lock = new ReentrantReadWriteLock();
        if (threadFactory == null) {
            throw new NullPointerException("threadFactory");
        } else if (unit == null) {
            throw new NullPointerException("unit");
        } else if (tickDuration <= 0) {
            throw new IllegalArgumentException("tickDuration must be greater than 0: " + tickDuration);
        } else if (ticksPerWheel <= 0) {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + ticksPerWheel);
        } else {
            this.wheel = createWheel(ticksPerWheel);
            this.iterators = createIterators(this.wheel);
            this.mask = this.wheel.length - 1;
            tickDuration = unit.toMillis(tickDuration);
            this.tickDuration = tickDuration;
            if (tickDuration == Long.MAX_VALUE || tickDuration >= Long.MAX_VALUE / ((long) this.wheel.length)) {
                throw new IllegalArgumentException("tickDuration is too long: " + tickDuration + ' ' + unit);
            }
            this.roundDuration = ((long) this.wheel.length) * tickDuration;
            this.workerThread = threadFactory.newThread(new ThreadRenamingRunnable(this.worker, "Hashed wheel timer #" + id.incrementAndGet()));
            misuseDetector.increase();
        }
    }

    private static Set<HashedWheelTimeout>[] createWheel(int ticksPerWheel) {
        if (ticksPerWheel <= 0) {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + ticksPerWheel);
        } else if (ticksPerWheel > 1073741824) {
            throw new IllegalArgumentException("ticksPerWheel may not be greater than 2^30: " + ticksPerWheel);
        } else {
            Set<HashedWheelTimeout>[] wheel = new Set[normalizeTicksPerWheel(ticksPerWheel)];
            for (int i = 0; i < wheel.length; i++) {
                wheel[i] = new MapBackedSet(new ConcurrentIdentityHashMap(16, 0.95f, 4));
            }
            return wheel;
        }
    }

    private static ReusableIterator<HashedWheelTimeout>[] createIterators(Set<HashedWheelTimeout>[] wheel) {
        ReusableIterator<HashedWheelTimeout>[] iterators = new ReusableIterator[wheel.length];
        for (int i = 0; i < wheel.length; i++) {
            iterators[i] = (ReusableIterator) wheel[i].iterator();
        }
        return iterators;
    }

    private static int normalizeTicksPerWheel(int ticksPerWheel) {
        int normalizedTicksPerWheel = 1;
        while (normalizedTicksPerWheel < ticksPerWheel) {
            normalizedTicksPerWheel <<= 1;
        }
        return normalizedTicksPerWheel;
    }

    public synchronized void start() {
        if (this.shutdown.get()) {
            throw new IllegalStateException("cannot be started once stopped");
        } else if (!this.workerThread.isAlive()) {
            this.workerThread.start();
        }
    }

    public synchronized Set<Timeout> stop() {
        Set<Timeout> unmodifiableSet;
        if (this.shutdown.compareAndSet(false, true)) {
            boolean interrupted = false;
            while (this.workerThread.isAlive()) {
                this.workerThread.interrupt();
                try {
                    this.workerThread.join(100);
                } catch (InterruptedException e) {
                    interrupted = true;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            misuseDetector.decrease();
            Set<Timeout> unprocessedTimeouts = new HashSet();
            for (Set<HashedWheelTimeout> bucket : this.wheel) {
                unprocessedTimeouts.addAll(bucket);
                bucket.clear();
            }
            unmodifiableSet = Collections.unmodifiableSet(unprocessedTimeouts);
        } else {
            unmodifiableSet = Collections.emptySet();
        }
        return unmodifiableSet;
    }

    public Timeout newTimeout(TimerTask task, long delay, TimeUnit unit) {
        long currentTime = System.currentTimeMillis();
        if (task == null) {
            throw new NullPointerException("task");
        } else if (unit == null) {
            throw new NullPointerException("unit");
        } else {
            delay = unit.toMillis(delay);
            if (delay < this.tickDuration) {
                delay = this.tickDuration;
            }
            if (!this.workerThread.isAlive()) {
                start();
            }
            long relativeIndex = ((delay % this.roundDuration) / this.tickDuration) + ((long) (delay % this.tickDuration != 0 ? 1 : 0));
            long deadline = currentTime + delay;
            long remainingRounds = (delay / this.roundDuration) - ((long) (delay % this.roundDuration == 0 ? 1 : 0));
            this.lock.readLock().lock();
            try {
                HashedWheelTimeout timeout = new HashedWheelTimeout(task, deadline, (int) ((((long) this.wheelCursor) + relativeIndex) & ((long) this.mask)), remainingRounds);
                this.wheel[timeout.stopIndex].add(timeout);
                return timeout;
            } finally {
                this.lock.readLock().unlock();
            }
        }
    }
}
