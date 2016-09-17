package com.helpshift.controllers;

import com.helpshift.specifications.SyncSpecification;
import com.helpshift.storage.KeyValueStorage;
import com.helpshift.storage.StorageFactory;
import com.helpshift.util.TimeUtil;

public class ControllerFactory {
    public final DataSyncCoordinator dataSyncCoordinator;
    public final SyncController syncController;

    private static class LazyHolder {
        private static final ControllerFactory INSTANCE = new ControllerFactory();

        private LazyHolder() {
        }
    }

    private ControllerFactory() {
        KeyValueStorage keyValueStorage = StorageFactory.getInstance().keyValueStorage;
        this.syncController = new SyncController(keyValueStorage, new TimeUtil(), new SyncSpecification[0]);
        this.dataSyncCoordinator = new DataSyncCoordinatorImpl(keyValueStorage);
    }

    public static ControllerFactory getInstance() {
        return LazyHolder.INSTANCE;
    }
}
