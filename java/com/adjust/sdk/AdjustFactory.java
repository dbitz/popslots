package com.adjust.sdk;

import android.content.Context;
import java.io.IOException;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

public class AdjustFactory {
    private static IActivityHandler activityHandler = null;
    private static IAttributionHandler attributionHandler = null;
    private static ILogger logger = null;
    private static HttpsURLConnection mockHttpsURLConnection = null;
    private static IPackageHandler packageHandler = null;
    private static IRequestHandler requestHandler = null;
    private static long sessionInterval = -1;
    private static long subsessionInterval = -1;
    private static long timerInterval = -1;
    private static long timerStart = -1;

    public static IPackageHandler getPackageHandler(ActivityHandler activityHandler, Context context, boolean startPaused) {
        if (packageHandler == null) {
            return new PackageHandler(activityHandler, context, startPaused);
        }
        packageHandler.init(activityHandler, context, startPaused);
        return packageHandler;
    }

    public static IRequestHandler getRequestHandler(IPackageHandler packageHandler) {
        if (requestHandler == null) {
            return new RequestHandler(packageHandler);
        }
        requestHandler.init(packageHandler);
        return requestHandler;
    }

    public static ILogger getLogger() {
        if (logger == null) {
            logger = new Logger();
        }
        return logger;
    }

    public static long getTimerInterval() {
        if (timerInterval == -1) {
            return 60000;
        }
        return timerInterval;
    }

    public static long getTimerStart() {
        if (timerStart == -1) {
            return 0;
        }
        return timerStart;
    }

    public static long getSessionInterval() {
        if (sessionInterval == -1) {
            return 1800000;
        }
        return sessionInterval;
    }

    public static long getSubsessionInterval() {
        if (subsessionInterval == -1) {
            return 1000;
        }
        return subsessionInterval;
    }

    public static IActivityHandler getActivityHandler(AdjustConfig config) {
        if (activityHandler == null) {
            return ActivityHandler.getInstance(config);
        }
        activityHandler.init(config);
        return activityHandler;
    }

    public static IAttributionHandler getAttributionHandler(IActivityHandler activityHandler, ActivityPackage attributionPackage, boolean startPaused, boolean hasListener) {
        if (attributionHandler == null) {
            return new AttributionHandler(activityHandler, attributionPackage, startPaused, hasListener);
        }
        attributionHandler.init(activityHandler, attributionPackage, startPaused, hasListener);
        return attributionHandler;
    }

    public static HttpsURLConnection getHttpsURLConnection(URL url) throws IOException {
        if (mockHttpsURLConnection == null) {
            return (HttpsURLConnection) url.openConnection();
        }
        return mockHttpsURLConnection;
    }

    public static void setPackageHandler(IPackageHandler packageHandler) {
        packageHandler = packageHandler;
    }

    public static void setRequestHandler(IRequestHandler requestHandler) {
        requestHandler = requestHandler;
    }

    public static void setLogger(ILogger logger) {
        logger = logger;
    }

    public static void setTimerInterval(long timerInterval) {
        timerInterval = timerInterval;
    }

    public static void setTimerStart(long timerStart) {
        timerStart = timerStart;
    }

    public static void setSessionInterval(long sessionInterval) {
        sessionInterval = sessionInterval;
    }

    public static void setSubsessionInterval(long subsessionInterval) {
        subsessionInterval = subsessionInterval;
    }

    public static void setActivityHandler(IActivityHandler activityHandler) {
        activityHandler = activityHandler;
    }

    public static void setAttributionHandler(IAttributionHandler attributionHandler) {
        attributionHandler = attributionHandler;
    }

    public static void setMockHttpsURLConnection(HttpsURLConnection mockHttpsURLConnection) {
        mockHttpsURLConnection = mockHttpsURLConnection;
    }
}
