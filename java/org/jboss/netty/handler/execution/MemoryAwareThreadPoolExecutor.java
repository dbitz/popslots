package org.jboss.netty.handler.execution;

import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.WriteCompletionEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.DefaultObjectSizeEstimator;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.internal.ConcurrentIdentityHashMap;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import org.jboss.netty.util.internal.SharedResourceMisuseDetector;

public class MemoryAwareThreadPoolExecutor extends ThreadPoolExecutor {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(MemoryAwareThreadPoolExecutor.class);
    private static final SharedResourceMisuseDetector misuseDetector = new SharedResourceMisuseDetector(MemoryAwareThreadPoolExecutor.class);
    private final ConcurrentMap<Channel, AtomicLong> channelCounters;
    private final Semaphore semaphore;
    private volatile Settings settings;
    private final AtomicLong totalCounter;

    private static final class MemoryAwareRunnable implements Runnable {
        int estimatedSize;
        final Runnable task;

        MemoryAwareRunnable(Runnable task) {
            this.task = task;
        }

        public void run() {
            this.task.run();
        }
    }

    private static final class NewThreadRunsPolicy implements RejectedExecutionHandler {
        NewThreadRunsPolicy() {
        }

        public void rejectedExecution(Runnable r, ThreadPoolExecutor executor) {
            try {
                new Thread(r, "Temporary task executor").start();
            } catch (Throwable e) {
                RejectedExecutionException rejectedExecutionException = new RejectedExecutionException("Failed to start a new thread", e);
            }
        }
    }

    private static final class Settings {
        final long maxChannelMemorySize;
        final long maxTotalMemorySize;
        final ObjectSizeEstimator objectSizeEstimator;

        Settings(ObjectSizeEstimator objectSizeEstimator, long maxChannelMemorySize, long maxTotalMemorySize) {
            this.objectSizeEstimator = objectSizeEstimator;
            this.maxChannelMemorySize = maxChannelMemorySize;
            this.maxTotalMemorySize = maxTotalMemorySize;
        }
    }

    public MemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize) {
        this(corePoolSize, maxChannelMemorySize, maxTotalMemorySize, 30, TimeUnit.SECONDS);
    }

    public MemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize, long keepAliveTime, TimeUnit unit) {
        this(corePoolSize, maxChannelMemorySize, maxTotalMemorySize, keepAliveTime, unit, Executors.defaultThreadFactory());
    }

    public MemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize, long keepAliveTime, TimeUnit unit, ThreadFactory threadFactory) {
        this(corePoolSize, maxChannelMemorySize, maxTotalMemorySize, keepAliveTime, unit, new DefaultObjectSizeEstimator(), threadFactory);
    }

    public MemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize, long keepAliveTime, TimeUnit unit, ObjectSizeEstimator objectSizeEstimator, ThreadFactory threadFactory) {
        super(corePoolSize, corePoolSize, keepAliveTime, unit, new LinkedTransferQueue(), threadFactory, new NewThreadRunsPolicy());
        this.channelCounters = new ConcurrentIdentityHashMap();
        this.totalCounter = new AtomicLong();
        this.semaphore = new Semaphore(0);
        if (objectSizeEstimator == null) {
            throw new NullPointerException("objectSizeEstimator");
        } else if (maxChannelMemorySize < 0) {
            throw new IllegalArgumentException("maxChannelMemorySize: " + maxChannelMemorySize);
        } else if (maxTotalMemorySize < 0) {
            throw new IllegalArgumentException("maxTotalMemorySize: " + maxTotalMemorySize);
        } else {
            try {
                getClass().getMethod("allowCoreThreadTimeOut", new Class[]{Boolean.TYPE}).invoke(this, new Object[]{Boolean.TRUE});
            } catch (Throwable th) {
                logger.debug("ThreadPoolExecutor.allowCoreThreadTimeOut() is not supported in this platform.");
            }
            this.settings = new Settings(objectSizeEstimator, maxChannelMemorySize, maxTotalMemorySize);
            misuseDetector.increase();
        }
    }

    protected void terminated() {
        super.terminated();
        misuseDetector.decrease();
    }

    public ObjectSizeEstimator getObjectSizeEstimator() {
        return this.settings.objectSizeEstimator;
    }

    public void setObjectSizeEstimator(ObjectSizeEstimator objectSizeEstimator) {
        if (objectSizeEstimator == null) {
            throw new NullPointerException("objectSizeEstimator");
        }
        this.settings = new Settings(objectSizeEstimator, this.settings.maxChannelMemorySize, this.settings.maxTotalMemorySize);
    }

    public long getMaxChannelMemorySize() {
        return this.settings.maxChannelMemorySize;
    }

    public void setMaxChannelMemorySize(long maxChannelMemorySize) {
        if (maxChannelMemorySize < 0) {
            throw new IllegalArgumentException("maxChannelMemorySize: " + maxChannelMemorySize);
        } else if (getTaskCount() > 0) {
            throw new IllegalStateException("can't be changed after a task is executed");
        } else {
            this.settings = new Settings(this.settings.objectSizeEstimator, maxChannelMemorySize, this.settings.maxTotalMemorySize);
        }
    }

    public long getMaxTotalMemorySize() {
        return this.settings.maxTotalMemorySize;
    }

    public void setMaxTotalMemorySize(long maxTotalMemorySize) {
        if (maxTotalMemorySize < 0) {
            throw new IllegalArgumentException("maxTotalMemorySize: " + maxTotalMemorySize);
        } else if (getTaskCount() > 0) {
            throw new IllegalStateException("can't be changed after a task is executed");
        } else {
            this.settings = new Settings(this.settings.objectSizeEstimator, this.settings.maxChannelMemorySize, maxTotalMemorySize);
        }
    }

    public void execute(Runnable command) {
        if (!(command instanceof ChannelEventRunnable)) {
            command = new MemoryAwareRunnable(command);
        }
        boolean pause = increaseCounter(command);
        doExecute(command);
        if (pause) {
            this.semaphore.acquireUninterruptibly();
        }
    }

    protected void doExecute(Runnable task) {
        doUnorderedExecute(task);
    }

    protected final void doUnorderedExecute(Runnable task) {
        super.execute(task);
    }

    public boolean remove(Runnable task) {
        boolean removed = super.remove(task);
        if (removed) {
            decreaseCounter(task);
        }
        return removed;
    }

    protected void beforeExecute(Thread t, Runnable r) {
        super.beforeExecute(t, r);
        decreaseCounter(r);
    }

    protected boolean increaseCounter(Runnable task) {
        if (!shouldCount(task)) {
            return false;
        }
        Settings settings = this.settings;
        long maxTotalMemorySize = settings.maxTotalMemorySize;
        long maxChannelMemorySize = settings.maxChannelMemorySize;
        int increment = settings.objectSizeEstimator.estimateSize(task);
        long totalCounter = this.totalCounter.addAndGet((long) increment);
        if (task instanceof ChannelEventRunnable) {
            ChannelEventRunnable eventTask = (ChannelEventRunnable) task;
            eventTask.estimatedSize = increment;
            Channel channel = eventTask.getEvent().getChannel();
            long channelCounter = getChannelCounter(channel).addAndGet((long) increment);
            if (maxChannelMemorySize != 0 && channelCounter >= maxChannelMemorySize && channel.isOpen() && channel.isReadable()) {
                ChannelHandlerContext ctx = eventTask.getContext();
                if (ctx.getHandler() instanceof ExecutionHandler) {
                    ctx.setAttachment(Boolean.TRUE);
                }
                channel.setReadable(false);
            }
        } else {
            ((MemoryAwareRunnable) task).estimatedSize = increment;
        }
        return maxTotalMemorySize != 0 && totalCounter >= maxTotalMemorySize;
    }

    protected void decreaseCounter(Runnable task) {
        if (shouldCount(task)) {
            int increment;
            Settings settings = this.settings;
            long maxTotalMemorySize = settings.maxTotalMemorySize;
            long maxChannelMemorySize = settings.maxChannelMemorySize;
            if (task instanceof ChannelEventRunnable) {
                increment = ((ChannelEventRunnable) task).estimatedSize;
            } else {
                increment = ((MemoryAwareRunnable) task).estimatedSize;
            }
            long totalCounter = this.totalCounter.addAndGet((long) (-increment));
            if (maxTotalMemorySize != 0 && ((long) increment) + totalCounter >= maxTotalMemorySize) {
                while (this.semaphore.hasQueuedThreads()) {
                    this.semaphore.release();
                }
            }
            if (task instanceof ChannelEventRunnable) {
                ChannelEventRunnable eventTask = (ChannelEventRunnable) task;
                Channel channel = eventTask.getEvent().getChannel();
                long channelCounter = getChannelCounter(channel).addAndGet((long) (-increment));
                if (maxChannelMemorySize != 0 && channelCounter < maxChannelMemorySize && channel.isOpen() && !channel.isReadable()) {
                    ChannelHandlerContext ctx = eventTask.getContext();
                    if (ctx.getHandler() instanceof ExecutionHandler) {
                        ctx.setAttachment(null);
                    }
                    channel.setReadable(true);
                }
            }
        }
    }

    private AtomicLong getChannelCounter(Channel channel) {
        AtomicLong counter = (AtomicLong) this.channelCounters.get(channel);
        if (counter == null) {
            counter = new AtomicLong();
            AtomicLong oldCounter = (AtomicLong) this.channelCounters.putIfAbsent(channel, counter);
            if (oldCounter != null) {
                counter = oldCounter;
            }
        }
        if (!channel.isOpen()) {
            this.channelCounters.remove(channel);
        }
        return counter;
    }

    protected boolean shouldCount(Runnable task) {
        if (task instanceof ChannelEventRunnable) {
            ChannelEvent e = ((ChannelEventRunnable) task).getEvent();
            if (e instanceof WriteCompletionEvent) {
                return false;
            }
            if ((e instanceof ChannelStateEvent) && ((ChannelStateEvent) e).getState() == ChannelState.INTEREST_OPS) {
                return false;
            }
        }
        return true;
    }
}
