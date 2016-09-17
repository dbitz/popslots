package org.jboss.netty.util;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

public class VirtualExecutorService extends AbstractExecutorService {
    Set<Thread> activeThreads = new MapBackedSet(new IdentityHashMap());
    private final Executor e;
    private final ExecutorService s;
    volatile boolean shutdown;
    final Object startStopLock = new Object();

    private class ChildExecutorRunnable implements Runnable {
        static final /* synthetic */ boolean $assertionsDisabled = (!VirtualExecutorService.class.desiredAssertionStatus());
        private final Runnable runnable;

        ChildExecutorRunnable(Runnable runnable) {
            this.runnable = runnable;
        }

        public void run() {
            boolean removed;
            Thread thread = Thread.currentThread();
            synchronized (VirtualExecutorService.this.startStopLock) {
                VirtualExecutorService.this.activeThreads.add(thread);
            }
            try {
                this.runnable.run();
                synchronized (VirtualExecutorService.this.startStopLock) {
                    removed = VirtualExecutorService.this.activeThreads.remove(thread);
                    if ($assertionsDisabled || removed) {
                        if (VirtualExecutorService.this.isTerminated()) {
                            VirtualExecutorService.this.startStopLock.notifyAll();
                        }
                    } else {
                        throw new AssertionError();
                    }
                }
            } catch (Throwable th) {
                synchronized (VirtualExecutorService.this.startStopLock) {
                    removed = VirtualExecutorService.this.activeThreads.remove(thread);
                    if (!$assertionsDisabled && !removed) {
                        AssertionError assertionError = new AssertionError();
                    } else if (VirtualExecutorService.this.isTerminated()) {
                        VirtualExecutorService.this.startStopLock.notifyAll();
                    }
                }
            }
        }
    }

    public VirtualExecutorService(Executor parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        } else if (parent instanceof ExecutorService) {
            this.e = null;
            this.s = (ExecutorService) parent;
        } else {
            this.e = parent;
            this.s = null;
        }
    }

    public boolean isShutdown() {
        boolean z;
        synchronized (this.startStopLock) {
            z = this.shutdown;
        }
        return z;
    }

    public boolean isTerminated() {
        boolean z;
        synchronized (this.startStopLock) {
            z = this.shutdown && this.activeThreads.isEmpty();
        }
        return z;
    }

    public void shutdown() {
        synchronized (this.startStopLock) {
            if (this.shutdown) {
                return;
            }
            this.shutdown = true;
        }
    }

    public List<Runnable> shutdownNow() {
        synchronized (this.startStopLock) {
            if (!isTerminated()) {
                shutdown();
                for (Thread t : this.activeThreads) {
                    t.interrupt();
                }
            }
        }
        return Collections.emptyList();
    }

    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        boolean isTerminated;
        synchronized (this.startStopLock) {
            while (!isTerminated()) {
                this.startStopLock.wait(TimeUnit.MILLISECONDS.convert(timeout, unit));
            }
            isTerminated = isTerminated();
        }
        return isTerminated;
    }

    public void execute(Runnable command) {
        if (command == null) {
            throw new NullPointerException("command");
        } else if (this.shutdown) {
            throw new RejectedExecutionException();
        } else if (this.s != null) {
            this.s.execute(new ChildExecutorRunnable(command));
        } else {
            this.e.execute(new ChildExecutorRunnable(command));
        }
    }
}