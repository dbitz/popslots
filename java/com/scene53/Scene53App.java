package com.scene53;

import android.app.Application;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

public class Scene53App extends Application {
    private static Scene53App _instance;
    private boolean isActive = false;

    public static Scene53App get() {
        return _instance;
    }

    public void onCreate() {
        super.onCreate();
        _instance = this;
    }

    public void setActive(boolean active) {
        this.isActive = active;
    }

    public boolean isActive() {
        return this.isActive;
    }

    public String getAdvertisingId() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(this).getId();
        } catch (Exception e) {
            Log.w("Scene53", "IDFA getAdvertisingId exception " + e.getLocalizedMessage());
            return "";
        }
    }
}
