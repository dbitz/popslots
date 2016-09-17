package com.helpshift.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;

@TargetApi(14)
public class MainLifecycleCallback implements ActivityLifecycleCallbacks {
    public static final int BACKGROUND = 2;
    public static final int FOREGROUND = 1;
    private static boolean isConfigurationChanged = false;
    private final ExecutorService cachedExecutorService = Executors.newCachedThreadPool();
    private boolean foreground;
    private final LinkedBlockingDeque<LifecycleListener> lifecycleListeners = new LinkedBlockingDeque();
    private int start;
    private int stop;

    private void dispatchLifecycleEvent(final int lifecycleEvent) {
        this.cachedExecutorService.execute(new Runnable() {
            public void run() {
                Iterator it = MainLifecycleCallback.this.lifecycleListeners.iterator();
                while (it.hasNext()) {
                    LifecycleListener listener = (LifecycleListener) it.next();
                    switch (lifecycleEvent) {
                        case MainLifecycleCallback.FOREGROUND /*1*/:
                            listener.onForeground();
                            break;
                        case MainLifecycleCallback.BACKGROUND /*2*/:
                            listener.onBackground();
                            break;
                        default:
                            break;
                    }
                }
            }
        });
    }

    public void addLifecycleListener(LifecycleListener listener) {
        this.lifecycleListeners.addFirst(listener);
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        if (!isConfigurationChanged) {
            if (!this.foreground) {
                dispatchLifecycleEvent(FOREGROUND);
                this.foreground = true;
            }
            this.start += FOREGROUND;
        }
        isConfigurationChanged = false;
    }

    public void onActivityResumed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
        if (activity == null || !activity.isChangingConfigurations()) {
            isConfigurationChanged = false;
            this.stop += FOREGROUND;
            if (this.start == this.stop) {
                dispatchLifecycleEvent(BACKGROUND);
                this.foreground = false;
                return;
            }
            return;
        }
        isConfigurationChanged = true;
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }
}
