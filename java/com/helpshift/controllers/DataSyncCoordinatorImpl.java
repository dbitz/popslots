package com.helpshift.controllers;

import com.helpshift.storage.KeyValueStorage;

public class DataSyncCoordinatorImpl implements DataSyncCoordinator {
    private KeyValueStorage storage;

    protected DataSyncCoordinatorImpl(KeyValueStorage keyValueStorage) {
        this.storage = keyValueStorage;
    }

    private static boolean isBoolean(Boolean value) {
        return value != null && value.booleanValue();
    }

    private boolean canSyncProperties(String userId) {
        return isBoolean((Boolean) this.storage.get("firstDeviceSyncComplete")) && isBoolean((Boolean) this.storage.get("switchUserCompleteFor" + userId));
    }

    public boolean canSyncUserProperties(String userId) {
        return canSyncProperties(userId);
    }

    public boolean canSyncSessionProperties(String userId) {
        return canSyncProperties(userId);
    }

    public void firstDeviceSyncComplete() {
        this.storage.set("firstDeviceSyncComplete", Boolean.valueOf(true));
    }

    public boolean isFirstDeviceSyncComplete() {
        return isBoolean((Boolean) this.storage.get("firstDeviceSyncComplete"));
    }

    public void switchUserPending(String userId) {
        this.storage.set("switchUserCompleteFor" + userId, Boolean.valueOf(false));
    }

    public void switchUserComplete(String userId) {
        this.storage.set("switchUserCompleteFor" + userId, Boolean.valueOf(true));
    }
}
