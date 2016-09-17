package com.helpshift.storage;

public class StorageFactory {
    public final KeyValueStorage keyValueStorage;

    private static final class LazyHolder {
        private static final StorageFactory INSTANCE = new StorageFactory();

        private LazyHolder() {
        }
    }

    private StorageFactory() {
        this.keyValueStorage = new KeyValueDbStorage();
    }

    public static StorageFactory getInstance() {
        return LazyHolder.INSTANCE;
    }
}
