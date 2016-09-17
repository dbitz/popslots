package com.scene53.utils;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import com.playstudios.popslots.R;
import com.scene53.Scene53NativeActivity;
import com.scene53.gcm.GCMUtils;

public class NotificationUtils {
    private static final String DELIM = "~~~";
    public static String NOTIFICATION = PREFS_FILENAME;
    public static String NOTIFICATION_AD_SET_NAME = "notification_adSetName";
    public static String NOTIFICATION_AGENCY = "notification_agency";
    public static String NOTIFICATION_CAMPAIGN = "notification_campaign";
    public static String NOTIFICATION_ID = "notification-id";
    public static String NOTIFICATION_NAME = "notification_name";
    public static String NOTIFICATION_TYPE = "notification_type";
    private static final String PREFIX = "Notification.";
    public static final String PREFS_FILENAME = "notification";

    private NotificationUtils() {
    }

    private static Notification createNotification(Context ctx, int nId, String type, String name, String title, String message, String sound, Bundle extras) {
        Builder builder = new Builder(ctx);
        if (Utils.isEmptyOrNull(title)) {
            title = ctx.getString(ctx.getApplicationInfo().labelRes);
        }
        builder.setContentTitle(title);
        builder.setContentText(message);
        builder.setSmallIcon(R.drawable.notification);
        if (VERSION.SDK_INT >= 21) {
            setColorForNotification(builder, 16676354);
        }
        builder.setLargeIcon(BitmapFactory.decodeResource(ctx.getResources(), R.drawable.icon_popslots));
        builder.setAutoCancel(true);
        if (Utils.isEmptyOrNull(sound)) {
            builder.setSound(RingtoneManager.getDefaultUri(2));
        } else {
            Log.i("Scene53", "Trying to parse sound '" + sound + "'");
            builder.setSound(Uri.parse("android.resource://com.scene53.partyLive/raw/" + sound));
        }
        Intent casaCasinoIntent = new Intent(ctx, Scene53NativeActivity.class);
        casaCasinoIntent.putExtra(NOTIFICATION, true);
        casaCasinoIntent.putExtra(NOTIFICATION_NAME, name);
        casaCasinoIntent.putExtra(NOTIFICATION_TYPE, type);
        if (extras != null) {
            casaCasinoIntent.putExtras(extras);
        }
        builder.setContentIntent(PendingIntent.getActivity(ctx, nId, casaCasinoIntent, 268435456));
        return builder.build();
    }

    @TargetApi(21)
    private static void setColorForNotification(Builder b, int color) {
        b.setColor(color);
    }

    public static void scheduleNotification(Context ctx, String type, String name, String title, String message, int delay, String sound) {
        long ts = System.currentTimeMillis() + (((long) delay) * 1000);
        actuallyScheduleNotification(ctx, type, name, title, message, ts, sound);
        Editor edit = ctx.getSharedPreferences(PREFS_FILENAME, 0).edit();
        storeNotificationInPrefs(edit, type, name, title, message, ts, sound);
        edit.commit();
    }

    private static void storeNotificationInPrefs(Editor edit, String type, String name, String title, String message, long ts, String sound) {
        edit.putString(PREFIX + name, type + DELIM + name + DELIM + title + DELIM + message + DELIM + ts + DELIM + sound);
    }

    public static void removeNotificationFromPrefs(Editor edit, String name) {
        edit.remove(PREFIX + name).commit();
    }

    public static void parseNotifications(Context ctx) {
        SharedPreferences prefs = ctx.getSharedPreferences(PREFS_FILENAME, 0);
        for (String key : prefs.getAll().keySet()) {
            if (key.startsWith(PREFIX)) {
                String str = prefs.getString(key, null);
                String[] values = str.split(DELIM);
                Log.d("Scene53", "Parsing notification: " + str);
                if (values.length == 6) {
                    actuallyScheduleNotification(ctx, values[0], values[1], values[2], values[3], Long.parseLong(values[4]), values[5]);
                } else {
                    Log.e("Scene53", "Invalid notification in preferences: " + str);
                }
            }
        }
    }

    private static void actuallyScheduleNotification(Context ctx, String type, String name, String title, String message, long ts, String sound) {
        int nId = name.hashCode();
        Notification n = createNotification(ctx, nId, type, name, title, message, sound, null);
        Intent notificationIntent = new Intent(ctx, NotificationPublisher.class);
        notificationIntent.putExtra(NOTIFICATION_ID, nId);
        notificationIntent.putExtra(NOTIFICATION, n);
        notificationIntent.putExtra(NOTIFICATION_NAME, name);
        notificationIntent.putExtra(NOTIFICATION_TYPE, type);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(ctx, nId, notificationIntent, 134217728);
        AlarmManager alarmManager = (AlarmManager) ctx.getSystemService("alarm");
        Log.i("Scene53", "Scheduling notification " + name + " for " + ts + " (" + System.currentTimeMillis() + ")");
        alarmManager.set(0, ts, pendingIntent);
    }

    public static void displayPushNotification(Context ctx, String title, String message, String sound, int id, Bundle extras) {
        ((NotificationManager) ctx.getSystemService(PREFS_FILENAME)).notify(id, createNotification(ctx, id, GCMUtils.NOTIFICATION_TYPE_PUSH, null, title, message, sound, extras));
    }

    public static void cancelNotification(Context ctx, String type, String name) {
        Intent notificationIntent = new Intent(ctx, NotificationPublisher.class);
        notificationIntent.putExtra(NOTIFICATION_ID, name.hashCode());
        notificationIntent.putExtra(NOTIFICATION_NAME, name);
        notificationIntent.putExtra(NOTIFICATION_TYPE, type);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(ctx, name.hashCode(), notificationIntent, 134217728);
        AlarmManager alarmManager = (AlarmManager) ctx.getSystemService("alarm");
        Log.i("Scene53", "Scheduling notification cancel " + name);
        pendingIntent.cancel();
        alarmManager.cancel(pendingIntent);
        ctx.getSharedPreferences(PREFS_FILENAME, 0).edit().remove(PREFIX + name).commit();
    }

    public static void cancelAllNotifications(Context ctx, String type) {
        SharedPreferences prefs = ctx.getSharedPreferences(PREFS_FILENAME, 0);
        for (String key : prefs.getAll().keySet()) {
            if (key.startsWith(PREFIX)) {
                String[] values = prefs.getString(key, null).split(DELIM);
                if (type == null || type.equals("") || type.equalsIgnoreCase(values[0])) {
                    cancelNotification(ctx, values[0], values[1]);
                }
            }
        }
    }

    public static int getScheduledNotificationCount(Context ctx, String type) {
        int count = 0;
        SharedPreferences prefs = ctx.getSharedPreferences(PREFS_FILENAME, 0);
        for (String key : prefs.getAll().keySet()) {
            if (key.startsWith(PREFIX)) {
                String[] values = prefs.getString(key, null).split(DELIM);
                if (type == null || type.equals("") || type.equalsIgnoreCase(values[0])) {
                    count++;
                }
            }
        }
        return count;
    }
}
