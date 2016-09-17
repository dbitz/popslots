package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class ExecutorUtil {
    public static boolean isShutdown(Executor executor) {
        if ((executor instanceof ExecutorService) && ((ExecutorService) executor).isShutdown()) {
            return true;
        }
        return false;
    }

    public static void terminate(Executor... executors) {
        Executor[] executorsCopy = new Executor[executors.length];
        for (int i = 0; i < executors.length; i++) {
            if (executors[i] == null) {
                throw new NullPointerException("executors[" + i + "]");
            }
            executorsCopy[i] = executors[i];
        }
        boolean interrupted = false;
        for (Executor e : executorsCopy) {
            if (e instanceof ExecutorService) {
                ExecutorService es = (ExecutorService) e;
                while (true) {
                    try {
                        es.shutdownNow();
                    } catch (SecurityException e2) {
                        try {
                            es.shutdown();
                        } catch (SecurityException e3) {
                        } catch (NullPointerException e4) {
                        }
                    } catch (NullPointerException e5) {
                    }
                    try {
                        if (es.awaitTermination(100, TimeUnit.MILLISECONDS)) {
                            break;
                        }
                    } catch (InterruptedException e6) {
                        interrupted = true;
                    }
                }
            }
        }
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
    }

    private ExecutorUtil() {
    }
}
