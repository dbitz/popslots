package com.helpshift.listeners;

public abstract class SyncListener {
    private String dataType;

    public abstract void sync();

    public SyncListener(String dataType) {
        this.dataType = dataType;
    }

    public String getDataType() {
        return this.dataType;
    }
}
