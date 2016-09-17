package org.slf4j.impl;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;

public class SimpleLoggerFactory implements ILoggerFactory {
    static final SimpleLoggerFactory INSTANCE = new SimpleLoggerFactory();
    Map loggerMap = new HashMap();

    public Logger getLogger(String name) {
        Throwable th;
        synchronized (this) {
            try {
                Logger slogger = (Logger) this.loggerMap.get(name);
                if (slogger == null) {
                    Logger slogger2 = new SimpleLogger(name);
                    try {
                        this.loggerMap.put(name, slogger2);
                        slogger = slogger2;
                    } catch (Throwable th2) {
                        th = th2;
                        slogger = slogger2;
                        throw th;
                    }
                }
                return slogger;
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }
}
