package com.helpshift.controllers;

import com.helpshift.app.LifecycleListener;
import com.helpshift.listeners.SyncListener;
import com.helpshift.specifications.SyncSpecification;
import com.helpshift.storage.KeyValueStorage;
import com.helpshift.util.HelpshiftConnectionUtil;
import com.helpshift.util.HelpshiftContext;
import com.helpshift.util.TimeUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

public class SyncController implements LifecycleListener {
    protected static final String COUNT = "count";
    protected static final String SYNC_TIME = "sync_time";
    private final KeyValueStorage keyValueStorage;
    private final LinkedBlockingQueue<SyncListener> syncListeners = new LinkedBlockingQueue();
    private final Map<String, SyncSpecification> syncSpecificationMap = new HashMap();
    private final TimeUtil timeUtil;

    public static class DataTypes {
        public static final String ANALYTICS_EVENT = "data_type_analytics_event";
        public static final String DEVICE = "data_type_device";
        public static final String SESSION = "data_type_session";
        public static final String SWITCH_USER = "data_type_switch_user";
        public static final String USER = "data_type_user";
    }

    protected SyncController(KeyValueStorage keyValueStorage, TimeUtil timeUtil, SyncSpecification... syncSpecifications) {
        this.keyValueStorage = keyValueStorage;
        this.timeUtil = timeUtil;
        for (SyncSpecification syncSpecification : syncSpecifications) {
            this.syncSpecificationMap.put(syncSpecification.getDataType(), syncSpecification);
        }
        HelpshiftContext.getMainLifecycleCallback().addLifecycleListener(this);
    }

    public void addSpecification(SyncSpecification syncSpecification) {
        this.syncSpecificationMap.put(syncSpecification.getDataType(), syncSpecification);
    }

    public void addSyncListeners(SyncListener... listeners) {
        for (SyncListener listener : listeners) {
            if (this.syncSpecificationMap.containsKey(listener.getDataType())) {
                this.syncListeners.add(listener);
            }
        }
    }

    private void triggerSync(String... dataTypes) {
        for (String dataType : dataTypes) {
            SyncSpecification specification = (SyncSpecification) this.syncSpecificationMap.get(dataType);
            if (specification != null && specification.isSatisfied(getDataChangeCount(dataType), getElapsedTimeSinceLastSync(dataType))) {
                dispatchSync(dataType);
            }
        }
    }

    private void dispatchSync(String dataType) {
        Iterator it = this.syncListeners.iterator();
        while (it.hasNext()) {
            SyncListener listener = (SyncListener) it.next();
            if (listener.getDataType().equals(dataType)) {
                listener.sync();
            }
        }
    }

    public void incrementDataChangeCount(String dataType, int count) {
        HashMap<String, String> information = getSyncInformation(dataType);
        information.put(COUNT, Integer.toString(Integer.valueOf((String) information.get(COUNT)).intValue() + count));
        this.keyValueStorage.set(dataType, information);
    }

    public void setDataChangeCount(String dataType, int count) {
        HashMap<String, String> information = getSyncInformation(dataType);
        information.put(COUNT, Integer.toString(count));
        this.keyValueStorage.set(dataType, information);
    }

    public void dataSynced(String dataType) {
        HashMap<String, String> information = getSyncInformation(dataType);
        information.put(COUNT, Integer.toString(0));
        information.put(SYNC_TIME, Long.toString(this.timeUtil.elapsedTimeMillis()));
        this.keyValueStorage.set(dataType, information);
    }

    private int getDataChangeCount(String dataType) {
        return Integer.valueOf((String) getSyncInformation(dataType).get(COUNT)).intValue();
    }

    private long getElapsedTimeSinceLastSync(String dataType) {
        return this.timeUtil.elapsedTimeMillis() - Long.valueOf((String) getSyncInformation(dataType).get(SYNC_TIME)).longValue();
    }

    private HashMap<String, String> getSyncInformation(String dataType) {
        HashMap<String, String> information = (HashMap) this.keyValueStorage.get(dataType);
        if (information != null) {
            return information;
        }
        information = new HashMap();
        information.put(COUNT, Integer.toString(0));
        information.put(SYNC_TIME, Long.toString(0));
        return information;
    }

    public void onForeground() {
    }

    public void onBackground() {
        if (HelpshiftConnectionUtil.isOnline(HelpshiftContext.getApplicationContext())) {
            triggerSync(DataTypes.SWITCH_USER, DataTypes.DEVICE, DataTypes.USER, DataTypes.SESSION, DataTypes.ANALYTICS_EVENT);
        }
    }
}
