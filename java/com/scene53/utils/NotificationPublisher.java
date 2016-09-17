package com.scene53.utils;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.scene53.Scene53App;

public class NotificationPublisher extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String name = intent.getStringExtra(NotificationUtils.NOTIFICATION_NAME);
        if (name == null) {
            Log.e("Scene53", "NotificationPublisher: Invalid notification name");
            return;
        }
        Notification notification = (Notification) intent.getParcelableExtra(NotificationUtils.NOTIFICATION);
        if (notification == null) {
            Log.e("Scene53", "NotificationPublisher: Invalid notification!");
            return;
        }
        NotificationUtils.removeNotificationFromPrefs(context.getSharedPreferences(NotificationUtils.PREFS_FILENAME, 0).edit(), name);
        Log.d("Scene53", "Scheduling notification publishing " + name + Scene53App.get().isActive());
        if (!Scene53App.get().isActive()) {
            ((NotificationManager) context.getSystemService(NotificationUtils.PREFS_FILENAME)).notify(intent.getIntExtra(NotificationUtils.NOTIFICATION_ID, 0), notification);
        }
    }
}
