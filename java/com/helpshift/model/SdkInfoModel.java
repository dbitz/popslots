package com.helpshift.model;

import android.text.TextUtils;
import com.helpshift.storage.KeyValueStorage;
import java.util.HashMap;

public class SdkInfoModel {
    private HashMap<String, String> etags = ((HashMap) this.storage.get("etags"));
    private KeyValueStorage storage;

    protected SdkInfoModel(KeyValueStorage kvStore) {
        this.storage = kvStore;
        if (this.etags == null) {
            this.etags = new HashMap();
        }
    }

    public void addEtag(String etag, String route) {
        this.etags.put(route, etag);
        this.storage.set("etags", this.etags);
    }

    public String getEtag(String route) {
        return (String) this.etags.get(route);
    }

    public void clearEtag(String route) {
        if (this.etags.containsKey(route)) {
            this.etags.remove(route);
            this.storage.set("etags", this.etags);
        }
    }

    public Float getServerTimeDelta() {
        return (Float) this.storage.get("server-time-delta");
    }

    public void setServerTimeDelta(Float serverTimeDelta) {
        this.storage.set("server-time-delta", serverTimeDelta);
    }

    public String getCurrentLoggedInId() {
        return (String) this.storage.get("current-logged-in-id");
    }

    public void setCurrentLoggedInId(String identifier) throws IllegalArgumentException {
        if (identifier != null) {
            identifier = identifier.trim();
        }
        if (TextUtils.isEmpty(identifier)) {
            throw new IllegalArgumentException();
        }
        this.storage.set("current-logged-in-id", identifier);
    }

    public void addDeviceId(String deviceId) throws IllegalArgumentException {
        if (deviceId != null) {
            deviceId = deviceId.trim();
        }
        if (TextUtils.isEmpty(deviceId)) {
            throw new IllegalArgumentException();
        }
        this.storage.setWithBackup("hs-device-id", deviceId);
    }

    public String getDeviceId() {
        return (String) this.storage.get("hs-device-id");
    }
}
