package com.helpshift.model;

import android.text.TextUtils;
import com.helpshift.storage.KeyValueStorage;
import com.helpshift.util.SchemaUtil;

public class AppInfoModel {
    private String apiKey = ((String) this.storage.get("apiKey"));
    private String domainName = ((String) this.storage.get("domainName"));
    private Integer notificationIconId;
    private Integer notificationSoundId;
    private String platformId;
    private KeyValueStorage storage;

    protected AppInfoModel(KeyValueStorage kvStore) {
        this.storage = kvStore;
        if (!(this.domainName == null || SchemaUtil.validateDomainName(this.domainName))) {
            this.domainName = null;
        }
        this.platformId = (String) this.storage.get("platformId");
        if (!(this.platformId == null || SchemaUtil.validatePlatformId(this.platformId))) {
            this.platformId = null;
        }
        this.notificationSoundId = (Integer) this.storage.get("notificationSound");
        this.notificationIconId = (Integer) this.storage.get("notificationIconId");
    }

    public String getApiKey() {
        return this.apiKey;
    }

    public String getDomainName() {
        return this.domainName;
    }

    public String getPlatformId() {
        return this.platformId;
    }

    public Integer getNotificationSoundId() {
        return this.notificationSoundId;
    }

    public Integer getNotificationIconId() {
        return this.notificationIconId;
    }

    public void setNotificationSoundId(Integer notificationSoundId) {
        this.notificationSoundId = notificationSoundId;
        this.storage.set("notificationSound", this.notificationSoundId);
    }

    public void setNotificationIconId(Integer notificationIconId) {
        this.notificationIconId = notificationIconId;
        this.storage.set("notificationIcon", this.notificationIconId);
    }

    public void install(String apiKey, String domainName, String platformId) {
        this.apiKey = apiKey;
        this.domainName = domainName;
        this.platformId = platformId;
        if (!(this.domainName == null || SchemaUtil.validateDomainName(this.domainName))) {
            this.domainName = null;
        }
        if (!(this.platformId == null || SchemaUtil.validatePlatformId(this.platformId))) {
            this.platformId = null;
        }
        this.storage.set("apiKey", this.apiKey);
        this.storage.set("domainName", this.domainName);
        this.storage.set("platformId", this.platformId);
    }

    public boolean isInstalled() {
        return (TextUtils.isEmpty(this.apiKey) || TextUtils.isEmpty(this.domainName) || TextUtils.isEmpty(this.platformId)) ? false : true;
    }
}
