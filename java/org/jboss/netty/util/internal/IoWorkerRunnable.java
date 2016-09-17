package org.jboss.netty.util.internal;

public class IoWorkerRunnable implements Runnable {
    public static final ThreadLocal<Boolean> IN_IO_THREAD = new ThreadLocalBoolean();
    private final Runnable runnable;

    public IoWorkerRunnable(Runnable runnable) {
        if (runnable == null) {
            throw new NullPointerException("runnable");
        }
        this.runnable = runnable;
    }

    public void run() {
        IN_IO_THREAD.set(Boolean.TRUE);
        try {
            this.runnable.run();
        } finally {
            IN_IO_THREAD.remove();
        }
    }
}
