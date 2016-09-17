package com.helpshift.util;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import com.helpshift.app.MainLifecycleCallback;

public class HelpshiftContext {
    private static Context context;
    private static final Object lock = new Object();
    private static final MainLifecycleCallback mainLifecycleCallback = new MainLifecycleCallback();
    private static String viewState;

    private HelpshiftContext() {
    }

    public static MainLifecycleCallback getMainLifecycleCallback() {
        return mainLifecycleCallback;
    }

    @TargetApi(14)
    private static void setupMainLifecycleCallback(Context context) {
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(mainLifecycleCallback);
    }

    public static Context getApplicationContext() {
        return context;
    }

    public static void setApplicationContext(Context c) {
        synchronized (lock) {
            if (context == null) {
                context = c;
                setupMainLifecycleCallback(c);
            }
        }
    }

    public static String getViewState() {
        return viewState;
    }

    public static void setViewState(String viewState) {
        viewState = viewState;
    }
}
