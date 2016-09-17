package com.helpshift.specifications;

public interface SyncSpecification {
    public static final int APP_SESSIONS_DATA_CHANGE_THRESHOLD = 5;
    public static final int DAILY_SYNC_FREQUENCY = 4;
    public static final int DECAY_SEED_VALUE = 5;
    public static final int USER_PROPERTIES_DATA_CHANGE_THRESHOLD = 2;

    String getDataType();

    boolean isSatisfied(int i, long j);
}
