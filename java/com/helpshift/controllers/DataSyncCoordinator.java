package com.helpshift.controllers;

public interface DataSyncCoordinator {
    boolean canSyncSessionProperties(String str);

    boolean canSyncUserProperties(String str);

    void firstDeviceSyncComplete();

    boolean isFirstDeviceSyncComplete();

    void switchUserComplete(String str);

    void switchUserPending(String str);
}
