package com.scene53.utils;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.support.v4.util.ArrayMap;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.LogLevel;
import com.facebook.internal.ServerProtocol;
import com.scene53.Scene53App;
import java.util.HashMap;
import java.util.Map.Entry;

public class AdjustWrapper {

    private static final class AdjustLifecycleCallbacks implements ActivityLifecycleCallbacks {
        private AdjustLifecycleCallbacks() {
        }

        public void onActivityResumed(Activity activity) {
            Adjust.onResume();
        }

        public void onActivityPaused(Activity activity) {
            Adjust.onPause();
        }

        public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        }

        public void onActivityDestroyed(Activity activity) {
        }
    }

    public static void initAdjustConfig(String appToken, boolean isProd) {
        String environment = isProd ? AdjustConfig.ENVIRONMENT_PRODUCTION : AdjustConfig.ENVIRONMENT_SANDBOX;
        AdjustConfig config = new AdjustConfig(Scene53App.get(), appToken, environment);
        if (isProd) {
            config.setEventBufferingEnabled(Boolean.valueOf(false));
        } else {
            config.setLogLevel(LogLevel.VERBOSE);
        }
        ArrayMap<String, String> params = new ArrayMap();
        params.put("appToken", appToken);
        params.put("isProd", String.valueOf(isProd));
        params.put("env", environment);
        params.put("IDFA", Scene53App.get().getAdvertisingId());
        Utils.reportAnalytics("adjust", "debug", "initConfig", params);
        Adjust.onCreate(config);
        Scene53App.get().registerActivityLifecycleCallbacks(new AdjustLifecycleCallbacks());
        Adjust.onResume();
    }

    public static void sendTrackEvent(String eventToken, HashMap<String, String> metadata) {
        AdjustEvent adjustEvent = new AdjustEvent(eventToken);
        ArrayMap<String, String> params = new ArrayMap();
        params.put(ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN, eventToken);
        if (metadata != null) {
            for (Entry<String, String> e : metadata.entrySet()) {
                adjustEvent.addPartnerParameter((String) e.getKey(), (String) e.getValue());
                params.put(e.getKey(), "\"" + ((String) e.getValue()) + "\"");
            }
        }
        params.put("IDFA", Scene53App.get().getAdvertisingId());
        Utils.reportAnalytics("adjust", "debug", "trackEvent", params);
        Adjust.trackEvent(adjustEvent);
    }

    public static void sendRevenueTrackEvent(String eventToken, double revenue) {
        AdjustEvent adjustEvent = new AdjustEvent(eventToken);
        adjustEvent.setRevenue(revenue, "USD");
        Adjust.trackEvent(adjustEvent);
    }
}
