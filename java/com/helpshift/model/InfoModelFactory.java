package com.helpshift.model;

import com.helpshift.storage.KeyValueStorage;
import com.helpshift.storage.StorageFactory;

public class InfoModelFactory {
    public final AppInfoModel appInfoModel;
    public final SdkInfoModel sdkInfoModel;

    private static final class LazyHolder {
        private static final InfoModelFactory INSTANCE = new InfoModelFactory();

        private LazyHolder() {
        }
    }

    private InfoModelFactory() {
        KeyValueStorage keyValueStorage = StorageFactory.getInstance().keyValueStorage;
        this.appInfoModel = new AppInfoModel(keyValueStorage);
        this.sdkInfoModel = new SdkInfoModel(keyValueStorage);
    }

    public static InfoModelFactory getInstance() {
        return LazyHolder.INSTANCE;
    }
}
