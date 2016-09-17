package com.helpshift.support;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.helpshift.support.constants.ErrorReportTypes;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.res.values.HSConfig;
import com.helpshift.support.storage.ErrorReportsDataSource;
import com.helpshift.util.HelpshiftConnectionUtil;
import com.helpshift.util.TimeUtil;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(14)
final class HSLifecycleCallbacks implements ActivityLifecycleCallbacks {
    private static final String TAG = "HelpShiftDebug";
    private static HSApiData data = null;
    private static HSLifecycleCallbacks instance = null;
    private static boolean isConfigurationChanged = false;
    private static boolean isForeground;
    private static int started;
    private static int stopped;
    private static HSStorage storage = null;

    private HSLifecycleCallbacks() {
    }

    public static HSLifecycleCallbacks getInstance() {
        if (instance == null) {
            instance = new HSLifecycleCallbacks();
        }
        return instance;
    }

    public static boolean isForeground() {
        return isForeground;
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    public void onActivityStarted(Activity activity) {
        if (!isConfigurationChanged) {
            if (data == null) {
                data = new HSApiData(activity.getApplication());
                storage = data.storage;
            }
            started++;
            if (!isForeground) {
                data.updateReviewCounter();
                Context c = activity.getApplicationContext();
                if (data.showReviewP().booleanValue()) {
                    Intent i = new Intent(c, HSReview.class);
                    i.setFlags(268435456);
                    c.startActivity(i);
                }
                try {
                    data.getConfig(new Handler() {
                        public void handleMessage(Message msg) {
                            HSConfig.updateConfig((JSONObject) msg.obj);
                            String profileId = HSLifecycleCallbacks.data.getProfileId();
                            if (!TextUtils.isEmpty(profileId)) {
                                HSLifecycleCallbacks.storage.updateActiveConversation(profileId);
                            }
                        }
                    }, new Handler());
                } catch (JSONException e) {
                    Log.d(TAG, e.toString(), e);
                }
                if (HelpshiftConnectionUtil.isOnline(c)) {
                    c.startService(new Intent(c, HSRetryService.class));
                }
                data.startInAppService();
                data.reportAppStartEvent();
                synchronized (this) {
                    if (ErrorReportsDataSource.hasReports()) {
                        long lastReportedTime = storage.getLastErrorReportedTime();
                        long currentElapsedTime = TimeUtil.getAdjustedTimeInMillis(storage.getServerTimeDelta());
                        if (currentElapsedTime - lastReportedTime > ErrorReport.BATCH_TIME) {
                            storage.setLastErrorReportedTime(currentElapsedTime);
                            data.sendErrorReports(ErrorReportTypes.RUNTIME_ERROR);
                        }
                    }
                }
            }
            isForeground = true;
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
            stopped++;
            if (started == stopped) {
                isForeground = false;
                return;
            }
            return;
        }
        isConfigurationChanged = true;
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }
}
