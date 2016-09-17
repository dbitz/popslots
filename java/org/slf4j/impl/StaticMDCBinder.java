package org.slf4j.impl;

import org.slf4j.helpers.NOPMDCAdapter;
import org.slf4j.spi.MDCAdapter;

public class StaticMDCBinder {
    public static final StaticMDCBinder SINGLETON = new StaticMDCBinder();
    static Class class$org$slf4j$helpers$NOPMDCAdapter;

    private StaticMDCBinder() {
    }

    public MDCAdapter getMDCA() {
        return new NOPMDCAdapter();
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public String getMDCAdapterClassStr() {
        Class class$;
        if (class$org$slf4j$helpers$NOPMDCAdapter == null) {
            class$ = class$("org.slf4j.helpers.NOPMDCAdapter");
            class$org$slf4j$helpers$NOPMDCAdapter = class$;
        } else {
            class$ = class$org$slf4j$helpers$NOPMDCAdapter;
        }
        return class$.getName();
    }
}
