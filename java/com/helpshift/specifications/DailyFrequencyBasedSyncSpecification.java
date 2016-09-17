package com.helpshift.specifications;

import android.annotation.TargetApi;
import java.util.concurrent.TimeUnit;

public class DailyFrequencyBasedSyncSpecification implements SyncSpecification {
    private final String dataType;
    private final long elapsedTimeThreshold;

    @TargetApi(9)
    public DailyFrequencyBasedSyncSpecification(int dailyFrequency, String dataType) {
        this.elapsedTimeThreshold = TimeUnit.MILLISECONDS.convert((long) (24 / dailyFrequency), TimeUnit.HOURS);
        this.dataType = dataType;
    }

    public String getDataType() {
        return this.dataType;
    }

    public boolean isSatisfied(int dataChangeCount, long elapsedTimeSinceSync) {
        elapsedTimeSinceSync = Math.abs(elapsedTimeSinceSync);
        if (dataChangeCount <= 0 || elapsedTimeSinceSync <= this.elapsedTimeThreshold) {
            return false;
        }
        return true;
    }
}
