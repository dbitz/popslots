package org.slf4j.impl;

import org.slf4j.IMarkerFactory;
import org.slf4j.helpers.BasicMarkerFactory;
import org.slf4j.spi.MarkerFactoryBinder;

public class StaticMarkerBinder implements MarkerFactoryBinder {
    public static final StaticMarkerBinder SINGLETON = new StaticMarkerBinder();
    static Class class$org$slf4j$helpers$BasicMarkerFactory;
    final IMarkerFactory markerFactory = new BasicMarkerFactory();

    private StaticMarkerBinder() {
    }

    public IMarkerFactory getMarkerFactory() {
        return this.markerFactory;
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public String getMarkerFactoryClassStr() {
        Class class$;
        if (class$org$slf4j$helpers$BasicMarkerFactory == null) {
            class$ = class$("org.slf4j.helpers.BasicMarkerFactory");
            class$org$slf4j$helpers$BasicMarkerFactory = class$;
        } else {
            class$ = class$org$slf4j$helpers$BasicMarkerFactory;
        }
        return class$.getName();
    }
}
