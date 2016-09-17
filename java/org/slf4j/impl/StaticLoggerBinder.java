package org.slf4j.impl;

import org.slf4j.ILoggerFactory;
import org.slf4j.spi.LoggerFactoryBinder;

public class StaticLoggerBinder implements LoggerFactoryBinder {
    public static String REQUESTED_API_VERSION = "1.6";
    private static final StaticLoggerBinder SINGLETON = new StaticLoggerBinder();
    static Class class$org$slf4j$impl$SimpleLoggerFactory;
    private static final String loggerFactoryClassStr;
    private final ILoggerFactory loggerFactory = new SimpleLoggerFactory();

    static {
        Class class$;
        if (class$org$slf4j$impl$SimpleLoggerFactory == null) {
            class$ = class$("org.slf4j.impl.SimpleLoggerFactory");
            class$org$slf4j$impl$SimpleLoggerFactory = class$;
        } else {
            class$ = class$org$slf4j$impl$SimpleLoggerFactory;
        }
        loggerFactoryClassStr = class$.getName();
    }

    public static final StaticLoggerBinder getSingleton() {
        return SINGLETON;
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    private StaticLoggerBinder() {
    }

    public ILoggerFactory getLoggerFactory() {
        return this.loggerFactory;
    }

    public String getLoggerFactoryClassStr() {
        return loggerFactoryClassStr;
    }
}
