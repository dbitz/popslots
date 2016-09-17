package com.helpshift.specifications;

import com.helpshift.support.model.ErrorReport;
import java.util.concurrent.TimeUnit;

public class DecayingIntervalSyncSpecification implements SyncSpecification {
    private final String dataType;
    private long elapsedTimeThreshold;
    private long maxTimeThresholdLimit = ErrorReport.BATCH_TIME;

    public DecayingIntervalSyncSpecification(int seedValue, TimeUnit unit, String dataType) {
        this.elapsedTimeThreshold = TimeUnit.MILLISECONDS.convert((long) seedValue, unit);
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

    public void decayElapsedTimeThreshold() {
        this.elapsedTimeThreshold = (long) (1.618d * ((double) this.elapsedTimeThreshold));
        if (this.elapsedTimeThreshold > this.maxTimeThresholdLimit) {
            this.elapsedTimeThreshold = this.maxTimeThresholdLimit;
        }
    }
}
