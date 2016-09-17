package com.helpshift.util;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;

public class ApplicationUtil {
    private static final String TAG = "HelpshiftDebug";

    public static String getApplicationVersion(Context c) {
        String appVersion = null;
        try {
            return c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            Log.d(TAG, "Package not found exception", e);
            return appVersion;
        }
    }

    public static String getApplicationName(Context context) {
        String appName = null;
        try {
            appName = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        } catch (NullPointerException e) {
            Log.d(TAG, "getApplicationName", e);
        }
        if (appName == null) {
            return "Support";
        }
        return appName;
    }

    public static boolean hasVibratePermission(Context context) {
        return context.getPackageManager().checkPermission("android.permission.VIBRATE", context.getPackageName()) == 0;
    }

    public static int getDeviceApiVersion() {
        return VERSION.SDK_INT;
    }

    public static boolean isPermissionGranted(Context context, String permissionName) {
        return context.getPackageManager().checkPermission(permissionName, context.getPackageName()) == 0;
    }
}
