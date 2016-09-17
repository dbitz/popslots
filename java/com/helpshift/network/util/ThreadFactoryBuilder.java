package com.helpshift.network.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public class ThreadFactoryBuilder {
    private boolean daemon = false;
    private String name = null;
    private int priority = 5;

    public ThreadFactoryBuilder setName(String name) {
        this.name = name;
        return this;
    }

    public ThreadFactoryBuilder setPriority(int priority) {
        if (priority > 10) {
            priority = 10;
        } else if (priority < 1) {
            priority = 1;
        }
        this.priority = priority;
        return this;
    }

    public ThreadFactory build() {
        return build(this);
    }

    private static ThreadFactory build(ThreadFactoryBuilder builder) {
        final String namePrefix = builder.name;
        final Boolean daemon = Boolean.valueOf(builder.daemon);
        final Integer priority = Integer.valueOf(builder.priority);
        final AtomicLong count = new AtomicLong(0);
        return new ThreadFactory() {
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                if (namePrefix != null) {
                    thread.setName(namePrefix + "-" + count.getAndIncrement());
                }
                thread.setDaemon(daemon.booleanValue());
                thread.setPriority(priority.intValue());
                return thread;
            }
        };
    }
}
