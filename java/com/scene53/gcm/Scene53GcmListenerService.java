package com.scene53.gcm;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.gcm.GcmListenerService;
import com.helpshift.Core;
import com.helpshift.support.Support;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.constants.SectionsColumns;
import com.helpshift.support.model.ErrorReport;
import com.scene53.utils.NotificationUtils;

public class Scene53GcmListenerService extends GcmListenerService {
    public void onMessageReceived(String from, Bundle data) {
        String origin = data.getString(MessageColumns.ORIGIN);
        if (origin == null || !origin.equals("helpshift")) {
            String message = data.getString(ErrorReport.KEY_MESSAGE);
            String title = data.getString(SectionsColumns.TITLE);
            Log.d("Scene53", "GCM From: " + from);
            Log.d("Scene53", "GCM Message: " + message);
            Bundle extras = new Bundle();
            extras.putString(NotificationUtils.NOTIFICATION_AGENCY, data.getString("agency"));
            extras.putString(NotificationUtils.NOTIFICATION_AD_SET_NAME, data.getString("adSetName"));
            extras.putString(NotificationUtils.NOTIFICATION_CAMPAIGN, data.getString("campaign"));
            NotificationUtils.displayPushNotification(this, title, message, null, 0, extras);
            return;
        }
        Core.init(Support.getInstance());
        Core.handlePush((Context) this, data);
    }
}
