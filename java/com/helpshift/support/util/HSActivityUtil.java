package com.helpshift.support.util;

import android.app.Activity;
import com.helpshift.support.HSSearch;

public final class HSActivityUtil {
    private static final String TAG = "HelpShiftDebug";

    public static Boolean isFullScreen(Activity a) {
        return Boolean.valueOf((a.getWindow().getAttributes().flags & 1024) == 1024);
    }

    public static void forceNotFullscreen(Activity a) {
        if (Boolean.valueOf(a.getIntent().getExtras().getBoolean("showInFullScreen")).booleanValue()) {
            a.getWindow().clearFlags(1024);
            a.getWindow().addFlags(2048);
        }
    }

    public static void restoreFullscreen(Activity a) {
        if (Boolean.valueOf(a.getIntent().getExtras().getBoolean("showInFullScreen")).booleanValue()) {
            a.getWindow().clearFlags(2048);
            a.getWindow().addFlags(1024);
        }
    }

    public static void sessionEnding() {
        HSSearch.deinit();
    }

    public static void sessionBeginning() {
        HSSearch.init();
    }
}
