package com.helpshift.specifications;

import java.util.concurrent.TimeUnit;

public class GenericSyncSpecification implements SyncSpecification {
    private final int dataChangeThreshold;
    private final String dataType;
    private final long elapsedTimeThreshold;

    public GenericSyncSpecification(int dataChangeThreshold, long elapsedTimeThreshold, TimeUnit timeUnit, String dataType) {
        this.dataChangeThreshold = dataChangeThreshold;
        this.elapsedTimeThreshold = TimeUnit.MILLISECONDS.convert(elapsedTimeThreshold, timeUnit);
        this.dataType = dataType;
    }

    public String getDataType() {
        return this.dataType;
    }

    public boolean isSatisfied(int dataChangeCount, long elapsedTimeSinceSync) {
        elapsedTimeSinceSync = Math.abs(elapsedTimeSinceSync);
        if (dataChangeCount >= this.dataChangeThreshold || elapsedTimeSinceSync > this.elapsedTimeThreshold) {
            return true;
        }
        return false;
    }
}
