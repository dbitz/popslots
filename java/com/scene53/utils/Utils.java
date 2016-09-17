package com.scene53.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.support.v4.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.adjust.sdk.Constants;
import com.facebook.internal.AnalyticsEvents;
import com.scene53.Scene53App;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Locale;
import java.util.regex.Pattern;
import org.slf4j.Marker;

public class Utils {
    public static native void reportAnalytics(String str, String str2, String str3, String[] strArr, String[] strArr2);

    private Utils() {
    }

    public static String getUrlScheme(String url) {
        return Uri.parse(url).getScheme();
    }

    public static String getUrlQuery(String url) {
        return Uri.parse(url).getQuery();
    }

    public static boolean isEmptyOrNull(String str) {
        return str == null || str.isEmpty() || "null".equalsIgnoreCase(str);
    }

    public static String escapeString(String str) {
        return str.replaceAll("&", "&amp;").replaceAll("\"", "&quot;").replaceAll("'", "&#39;").replaceAll(">", "&gt;").replaceAll("<", "&lt;");
    }

    public static String urlEncode(String str) {
        try {
            str = URLEncoder.encode(str, Constants.ENCODING);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String urlDecode(String str) {
        try {
            str = URLDecoder.decode(str, Constants.ENCODING);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static void openUrl(Activity a, String url) {
        a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
    }

    public static int getBootTime() {
        return (int) ((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000);
    }

    public static String getLocale() {
        return Locale.getDefault().toString();
    }

    private static String getScreenSizeInInches() {
        DisplayMetrics dm = new DisplayMetrics();
        ((WindowManager) Scene53App.get().getSystemService("window")).getDefaultDisplay().getMetrics(dm);
        return new DecimalFormat("#.##").format(Math.sqrt(Math.pow((double) (((float) dm.widthPixels) / dm.xdpi), 2.0d) + Math.pow((double) (((float) dm.heightPixels) / dm.ydpi), 2.0d)));
    }

    public static String getDeviceSpecificModel() {
        return Build.MANUFACTURER + "/" + Build.MODEL + "/" + getScreenSizeInInches();
    }

    public static String getOSVersion() {
        return VERSION.RELEASE;
    }

    public static String getAppVersion() {
        try {
            return Scene53App.get().getPackageManager().getPackageInfo(Scene53App.get().getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    public static String getShortAppVersion() {
        String version = getAppVersion();
        if (version.indexOf(46) != -1) {
            return version.substring(0, version.lastIndexOf(46));
        }
        return version;
    }

    public static boolean isDevelopVersion() {
        String version = getShortAppVersion();
        if (version.indexOf(46) != -1) {
            version = version.substring(version.lastIndexOf(46) + 1);
        }
        return Integer.parseInt(version) % 2 != 0;
    }

    public static String getBuildVersion() {
        String version = getAppVersion();
        if (version.indexOf(46) != -1) {
            return version.substring(version.lastIndexOf(46) + 1);
        }
        return version;
    }

    public static String getDeviceModel() {
        return Build.FINGERPRINT;
    }

    public static int getScreenDpi() {
        return Scene53App.get().getResources().getDisplayMetrics().densityDpi;
    }

    public static String[] listFilesByExpression(String path, String expression) {
        final Pattern p = Pattern.compile(expression.replace(".", "\\.").replace(Marker.ANY_MARKER, ".*"));
        FilenameFilter filter = new FilenameFilter() {
            public boolean accept(File dir, String filename) {
                return p.matcher(filename).matches();
            }
        };
        File dir = new File(path);
        if (dir.exists()) {
            return dir.list(filter);
        }
        Log.w("Scene53", "listFilesByExpression directory doesn't exist: " + path);
        return new String[0];
    }

    public static String[] listAssetsByExpression(String path, String expression) {
        try {
            String regex = expression.replace(".", "\\.").replace(Marker.ANY_MARKER, ".*");
            if (path.endsWith("/")) {
                path = path.substring(0, path.length() - 1);
            }
            String[] assets = Scene53App.get().getAssets().list(path);
            ArrayList<String> list = new ArrayList();
            Pattern p = Pattern.compile(regex);
            for (String s : assets) {
                if (p.matcher(s).matches()) {
                    list.add(s);
                }
            }
            return (String[]) list.toArray(new String[0]);
        } catch (IOException e) {
            return new String[0];
        }
    }

    public static String[] listFilesByDate(String path) {
        File dir = new File(path);
        if (dir.exists()) {
            Log.d("Scene53DEBUG", "listFilesByDate Dir for " + path + " is " + dir + " / " + dir.listFiles());
            File[] files = dir.listFiles();
            Arrays.sort(files, new Comparator<File>() {
                public int compare(File f1, File f2) {
                    return Long.valueOf(f1.lastModified()).compareTo(Long.valueOf(f2.lastModified()));
                }
            });
            String[] list = new String[files.length];
            for (int i = 0; i < files.length; i++) {
                list[i] = files[i].getName();
            }
            Log.d("Scene53DEBUG", "listFilesByDate list size is " + list.length);
            return list;
        }
        Log.w("Scene53", "listFilesByDate directory doesn't exist: " + path);
        return new String[0];
    }

    public static String[] getSubFoldersAtPath(String path) {
        FileFilter filter = new FileFilter() {
            public boolean accept(File file) {
                return file.isDirectory();
            }
        };
        File dir = new File(path);
        if (dir.exists()) {
            File[] folders = dir.listFiles(filter);
            String[] list = new String[folders.length];
            for (int i = 0; i < folders.length; i++) {
                list[i] = folders[i].getName();
            }
            return list;
        }
        Log.w("Scene53", "getSubFoldersAtPath directory doesn't exist: " + path);
        return new String[0];
    }

    public static boolean copyFolder(String sourceLocation, String targetLocation, boolean isAssets) {
        sourceLocation = sourceLocation.replaceAll("//", "/");
        targetLocation = targetLocation.replaceAll("//", "/");
        if (isAssets) {
            try {
                saveFileToDest(Scene53App.get().getAssets().open(sourceLocation), targetLocation);
            } catch (FileNotFoundException e) {
                try {
                    copyFolderInternal(sourceLocation, targetLocation, isAssets);
                } catch (IOException e2) {
                    return false;
                }
            }
        } else if (new File(sourceLocation).isDirectory()) {
            copyFolderInternal(sourceLocation, targetLocation, isAssets);
        } else {
            saveFileToDest(new FileInputStream(new File(sourceLocation)), targetLocation);
        }
        return true;
    }

    private static void copyFolderInternal(String sourceLocation, String targetLocation, boolean isAssets) throws IOException {
        File folder = new File(targetLocation);
        if (!folder.exists()) {
            folder.mkdirs();
        }
        String[] children;
        int len;
        int i;
        if (isAssets) {
            children = Scene53App.get().getAssets().list(sourceLocation);
            len = children.length;
            for (i = 0; i < len; i++) {
                String childName = (sourceLocation + "/" + children[i]).replaceAll("//", "/");
                String targetName = (targetLocation + "/" + children[i]).replaceAll("//", "/");
                try {
                    saveFileToDest(Scene53App.get().getAssets().open(childName), targetName);
                } catch (FileNotFoundException e) {
                    copyFolderInternal(childName, targetName, isAssets);
                }
            }
            return;
        }
        children = new File(sourceLocation).list();
        len = children.length;
        for (i = 0; i < len; i++) {
            File sourceFile = new File(sourceLocation, children[i]);
            if (sourceFile.isDirectory()) {
                copyFolderInternal(sourceLocation + "/" + children[i], targetLocation + "/" + children[i], isAssets);
            } else {
                saveFileToDest(new FileInputStream(sourceFile), targetLocation + "/" + children[i]);
            }
        }
    }

    private static void saveFileToDest(InputStream in, String targetLocation) throws IOException {
        OutputStream out = new FileOutputStream(new File(targetLocation));
        byte[] buf = new byte[in.available()];
        while (true) {
            int len = in.read(buf);
            if (len > 0) {
                out.write(buf, 0, len);
            } else {
                in.close();
                out.close();
                return;
            }
        }
    }

    public static void reportAnalytics(String feature, String context, String action, ArrayMap<String, String> params) {
        int len = params != null ? params.size() : 0;
        String[] keysArray = new String[len];
        String[] valuesArray = new String[len];
        for (int i = 0; i < len; i++) {
            keysArray[i] = (String) params.keyAt(i);
            valuesArray[i] = (String) params.valueAt(i);
        }
        reportAnalytics(feature, context, action, keysArray, valuesArray);
    }

    public static boolean isExternalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static long getAvailableInternalMemorySize() {
        StatFs stat = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) stat.getAvailableBlocks()) * ((long) stat.getBlockSize());
    }

    public static long getTotalInternalMemorySize() {
        StatFs stat = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) stat.getBlockCount()) * ((long) stat.getBlockSize());
    }

    public static long getAvailableExternalMemorySize() {
        if (!isExternalMemoryAvailable()) {
            return 0;
        }
        StatFs stat = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) stat.getAvailableBlocks()) * ((long) stat.getBlockSize());
    }

    public static long getTotalExternalMemorySize() {
        if (!isExternalMemoryAvailable()) {
            return 0;
        }
        StatFs stat = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) stat.getBlockCount()) * ((long) stat.getBlockSize());
    }

    public static long getAvaialbeCacheSize() {
        if (isExternalMemoryAvailable()) {
            return getAvailableExternalMemorySize();
        }
        return getAvailableInternalMemorySize();
    }

    public static void openStorageSettings(Activity a) {
        try {
            a.startActivity(new Intent("android.settings.INTERNAL_STORAGE_SETTINGS"));
        } catch (ActivityNotFoundException e) {
        }
    }
}
