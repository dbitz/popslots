package com.helpshift.util;

import android.os.SystemClock;
import com.helpshift.model.InfoModelFactory;
import java.util.Date;

public class TimeUtil {
    public static long EARLIEST_ALLOWED_UNIX_TIME = 0;
    private static final String TAG = "HelpshiftDebug";

    public static Float calculateTimeAdjustment(String serverTime) {
        return Float.valueOf((float) (((double) (new Date((long) Double.valueOf(Double.parseDouble(serverTime) * 1000.0d).doubleValue()).getTime() / 1000)) - Double.parseDouble(HSFormat.tsSecFormatter.format(((double) System.currentTimeMillis()) / 1000.0d))));
    }

    @Deprecated
    public static String getAdjustedTimestamp(Float timeDelta) {
        String deviceTs = HSFormat.tsSecFormatter.format(((double) System.currentTimeMillis()) / 1000.0d);
        if (timeDelta == null || timeDelta.floatValue() == 0.0f) {
            return deviceTs;
        }
        return HSFormat.tsSecFormatter.format(Double.valueOf(((double) System.currentTimeMillis()) / 1000.0d).doubleValue() + ((double) timeDelta.floatValue()));
    }

    public static long getAdjustedTimeInMillis(Float timeDelta) {
        long deviceTs = System.currentTimeMillis();
        if (timeDelta == null || timeDelta.floatValue() == 0.0f) {
            return deviceTs;
        }
        return (long) (((float) deviceTs) + (timeDelta.floatValue() * 1000.0f));
    }

    public static long getCurrentTimeInMillis() {
        return getAdjustedTimeInMillis(InfoModelFactory.getInstance().sdkInfoModel.getServerTimeDelta());
    }

    public static String getCurrentTimestamp() {
        return getAdjustedTimestamp(InfoModelFactory.getInstance().sdkInfoModel.getServerTimeDelta());
    }

    public long elapsedTimeMillis() {
        return SystemClock.elapsedRealtime();
    }
}
