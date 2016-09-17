package org.jboss.netty.channel;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.IoWorkerRunnable;

public class DefaultChannelFuture implements ChannelFuture {
    private static final Throwable CANCELLED = new Throwable();
    private static boolean disabledDeadLockCheckerOnce;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultChannelFuture.class);
    private static volatile boolean useDeadLockChecker = true;
    private final boolean cancellable;
    private Throwable cause;
    private final Channel channel;
    private boolean done;
    private ChannelFutureListener firstListener;
    private List<ChannelFutureListener> otherListeners;
    private List<ChannelFutureProgressListener> progressListeners;
    private int waiters;

    public static boolean isUseDeadLockChecker() {
        return useDeadLockChecker;
    }

    public static void setUseDeadLockChecker(boolean useDeadLockChecker) {
        if (!(useDeadLockChecker || disabledDeadLockCheckerOnce)) {
            disabledDeadLockCheckerOnce = true;
            logger.debug("The dead lock checker in " + DefaultChannelFuture.class.getSimpleName() + " has been disabled as requested at your own risk.");
        }
        useDeadLockChecker = useDeadLockChecker;
    }

    public DefaultChannelFuture(Channel channel, boolean cancellable) {
        this.channel = channel;
        this.cancellable = cancellable;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public synchronized boolean isDone() {
        return this.done;
    }

    public synchronized boolean isSuccess() {
        boolean z;
        z = this.done && this.cause == null;
        return z;
    }

    public synchronized Throwable getCause() {
        Throwable th;
        if (this.cause != CANCELLED) {
            th = this.cause;
        } else {
            th = null;
        }
        return th;
    }

    public synchronized boolean isCancelled() {
        return this.cause == CANCELLED;
    }

    public void addListener(ChannelFutureListener listener) {
        if (listener == null) {
            throw new NullPointerException("listener");
        }
        boolean notifyNow = false;
        synchronized (this) {
            if (this.done) {
                notifyNow = true;
            } else {
                if (this.firstListener == null) {
                    this.firstListener = listener;
                } else {
                    if (this.otherListeners == null) {
                        this.otherListeners = new ArrayList(1);
                    }
                    this.otherListeners.add(listener);
                }
                if (listener instanceof ChannelFutureProgressListener) {
                    if (this.progressListeners == null) {
                        this.progressListeners = new ArrayList(1);
                    }
                    this.progressListeners.add((ChannelFutureProgressListener) listener);
                }
            }
        }
        if (notifyNow) {
            notifyListener(listener);
        }
    }

    public void removeListener(ChannelFutureListener listener) {
        if (listener == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            if (!this.done) {
                if (listener == this.firstListener) {
                    if (this.otherListeners == null || this.otherListeners.isEmpty()) {
                        this.firstListener = null;
                    } else {
                        this.firstListener = (ChannelFutureListener) this.otherListeners.remove(0);
                    }
                } else if (this.otherListeners != null) {
                    this.otherListeners.remove(listener);
                }
                if (listener instanceof ChannelFutureProgressListener) {
                    this.progressListeners.remove(listener);
                }
            }
        }
    }

    public ChannelFuture await() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        synchronized (this) {
            while (!this.done) {
                checkDeadLock();
                this.waiters++;
                try {
                    wait();
                    this.waiters--;
                } catch (Throwable th) {
                    this.waiters--;
                }
            }
        }
        return this;
    }

    public boolean await(long timeout, TimeUnit unit) throws InterruptedException {
        return await0(unit.toNanos(timeout), true);
    }

    public boolean await(long timeoutMillis) throws InterruptedException {
        return await0(TimeUnit.MILLISECONDS.toNanos(timeoutMillis), true);
    }

    public ChannelFuture awaitUninterruptibly() {
        boolean interrupted = false;
        synchronized (this) {
            while (!this.done) {
                checkDeadLock();
                this.waiters++;
                try {
                    wait();
                } catch (InterruptedException e) {
                    interrupted = true;
                } finally {
                    this.waiters--;
                }
            }
        }
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
        return this;
    }

    public boolean awaitUninterruptibly(long timeout, TimeUnit unit) {
        try {
            return await0(unit.toNanos(timeout), false);
        } catch (InterruptedException e) {
            throw new InternalError();
        }
    }

    public boolean awaitUninterruptibly(long timeoutMillis) {
        try {
            return await0(TimeUnit.MILLISECONDS.toNanos(timeoutMillis), false);
        } catch (InterruptedException e) {
            throw new InternalError();
        }
    }

    private boolean await0(long timeoutNanos, boolean interruptable) throws InterruptedException {
        if (interruptable && Thread.interrupted()) {
            throw new InterruptedException();
        }
        long startTime = timeoutNanos <= 0 ? 0 : System.nanoTime();
        long waitTime = timeoutNanos;
        boolean interrupted = false;
        try {
            boolean z;
            synchronized (this) {
                if (this.done) {
                    z = this.done;
                    if (null != null) {
                        Thread.currentThread().interrupt();
                    }
                } else if (waitTime <= 0) {
                    z = this.done;
                    if (null != null) {
                        Thread.currentThread().interrupt();
                    }
                } else {
                    checkDeadLock();
                    this.waiters++;
                    do {
                        try {
                            wait(waitTime / 1000000, (int) (waitTime % 1000000));
                        } catch (InterruptedException e) {
                            if (interruptable) {
                                throw e;
                            } else {
                                interrupted = true;
                            }
                        } catch (Throwable th) {
                            this.waiters--;
                        }
                        if (this.done) {
                            z = true;
                            this.waiters--;
                            if (interrupted) {
                                Thread.currentThread().interrupt();
                            }
                        } else {
                            waitTime = timeoutNanos - (System.nanoTime() - startTime);
                        }
                    } while (waitTime > 0);
                    z = this.done;
                    this.waiters--;
                    if (interrupted) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
            return z;
        } catch (Throwable th2) {
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
        }
    }

    private void checkDeadLock() {
        if (isUseDeadLockChecker() && ((Boolean) IoWorkerRunnable.IN_IO_THREAD.get()).booleanValue()) {
            throw new IllegalStateException("await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread.");
        }
    }

    public boolean setSuccess() {
        boolean z = true;
        synchronized (this) {
            if (this.done) {
                z = false;
            } else {
                this.done = true;
                if (this.waiters > 0) {
                    notifyAll();
                }
                notifyListeners();
            }
        }
        return z;
    }

    public boolean setFailure(Throwable cause) {
        boolean z = true;
        synchronized (this) {
            if (this.done) {
                z = false;
            } else {
                this.cause = cause;
                this.done = true;
                if (this.waiters > 0) {
                    notifyAll();
                }
                notifyListeners();
            }
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean cancel() {
        /*
        r3 = this;
        r1 = 1;
        r0 = 0;
        r2 = r3.cancellable;
        if (r2 != 0) goto L_0x0007;
    L_0x0006:
        return r0;
    L_0x0007:
        monitor-enter(r3);
        r2 = r3.done;	 Catch:{ all -> 0x000e }
        if (r2 == 0) goto L_0x0011;
    L_0x000c:
        monitor-exit(r3);	 Catch:{ all -> 0x000e }
        goto L_0x0006;
    L_0x000e:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x000e }
        throw r0;
    L_0x0011:
        r0 = CANCELLED;	 Catch:{ all -> 0x000e }
        r3.cause = r0;	 Catch:{ all -> 0x000e }
        r0 = 1;
        r3.done = r0;	 Catch:{ all -> 0x000e }
        r0 = r3.waiters;	 Catch:{ all -> 0x000e }
        if (r0 <= 0) goto L_0x001f;
    L_0x001c:
        r3.notifyAll();	 Catch:{ all -> 0x000e }
    L_0x001f:
        monitor-exit(r3);	 Catch:{ all -> 0x000e }
        r3.notifyListeners();
        r0 = r1;
        goto L_0x0006;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.DefaultChannelFuture.cancel():boolean");
    }

    private void notifyListeners() {
        if (this.firstListener != null) {
            notifyListener(this.firstListener);
            this.firstListener = null;
            if (this.otherListeners != null) {
                for (ChannelFutureListener l : this.otherListeners) {
                    notifyListener(l);
                }
                this.otherListeners = null;
            }
        }
    }

    private void notifyListener(ChannelFutureListener l) {
        try {
            l.operationComplete(this);
        } catch (Throwable t) {
            logger.warn("An exception was thrown by " + ChannelFutureListener.class.getSimpleName() + ".", t);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean setProgress(long r14, long r16, long r18) {
        /*
        r13 = this;
        monitor-enter(r13);
        r0 = r13.done;	 Catch:{ all -> 0x0015 }
        if (r0 == 0) goto L_0x0008;
    L_0x0005:
        r0 = 0;
        monitor-exit(r13);	 Catch:{ all -> 0x0015 }
    L_0x0007:
        return r0;
    L_0x0008:
        r12 = r13.progressListeners;	 Catch:{ all -> 0x0015 }
        if (r12 == 0) goto L_0x0012;
    L_0x000c:
        r0 = r12.isEmpty();	 Catch:{ all -> 0x0015 }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r0 = 1;
        monitor-exit(r13);	 Catch:{ all -> 0x0015 }
        goto L_0x0007;
    L_0x0015:
        r0 = move-exception;
        monitor-exit(r13);	 Catch:{ all -> 0x0015 }
        throw r0;
    L_0x0018:
        r0 = r12.size();	 Catch:{ all -> 0x0015 }
        r0 = new org.jboss.netty.channel.ChannelFutureProgressListener[r0];	 Catch:{ all -> 0x0015 }
        r11 = r12.toArray(r0);	 Catch:{ all -> 0x0015 }
        r11 = (org.jboss.netty.channel.ChannelFutureProgressListener[]) r11;	 Catch:{ all -> 0x0015 }
        monitor-exit(r13);	 Catch:{ all -> 0x0015 }
        r8 = r11;
        r10 = r8.length;
        r9 = 0;
    L_0x0028:
        if (r9 >= r10) goto L_0x0038;
    L_0x002a:
        r1 = r8[r9];
        r0 = r13;
        r2 = r14;
        r4 = r16;
        r6 = r18;
        r0.notifyProgressListener(r1, r2, r4, r6);
        r9 = r9 + 1;
        goto L_0x0028;
    L_0x0038:
        r0 = 1;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.DefaultChannelFuture.setProgress(long, long, long):boolean");
    }

    private void notifyProgressListener(ChannelFutureProgressListener l, long amount, long current, long total) {
        try {
            l.operationProgressed(this, amount, current, total);
        } catch (Throwable t) {
            logger.warn("An exception was thrown by " + ChannelFutureProgressListener.class.getSimpleName() + ".", t);
        }
    }
}
