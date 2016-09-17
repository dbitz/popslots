package com.scene53.utils;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.helpshift.Core;
import com.helpshift.support.Support;
import com.helpshift.support.Support.Delegate;
import com.helpshift.support.SupportInternal;
import com.helpshift.util.constants.KeyValueStoreColumns;
import com.playstudios.popslots.R;
import com.scene53.Scene53App;
import java.io.File;
import java.util.HashMap;

public class HelpshiftWrapper {

    private static class MyHelpshiftDelegate implements Delegate {
        private MyHelpshiftDelegate() {
        }

        public void didReceiveNotification(int count) {
            Log.d("Scene53", "helpshift: The user has " + count + " pending help notifications");
        }

        public void displayAttachmentFile(File arg0) {
            Log.d("Scene53", "Helpshift displayAttachmentFile " + arg0.getAbsolutePath());
        }

        public void newConversationStarted(String arg0) {
            Log.d("Scene53", "Helpshift newConversationStarted " + arg0);
        }

        public void userCompletedCustomerSatisfactionSurvey(int arg0, String arg1) {
            Log.d("Scene53", "Helpshift userCompletedCustomerSatisfactionSurvey " + arg0 + " " + arg1);
        }

        public void userRepliedToConversation(String arg0) {
            Log.d("Scene53", "Helpshift userRepliedToConversation " + arg0);
        }

        public void sessionBegan() {
            Log.d("Scene53", "Helpshift sessionBegan");
        }

        public void sessionEnded() {
            Log.d("Scene53", "Helpshift sessionEnded");
        }
    }

    public static void initialize(Activity a, String apiKey, String domain, String appId, String userId, String userName) {
        final Object mutex = new Object();
        synchronized (mutex) {
            final String str = apiKey;
            final String str2 = domain;
            final String str3 = appId;
            final String str4 = userId;
            final String str5 = userName;
            a.runOnUiThread(new Runnable() {
                public void run() {
                    Core.init(Support.getInstance());
                    HashMap config = new HashMap();
                    config.put("notificationIcon", Integer.valueOf(R.drawable.notification));
                    Core.install(Scene53App.get(), str, str2, str3, config);
                    Core.login(str4, str5, "");
                    Support.setDelegate(new MyHelpshiftDelegate());
                    Support.getNotificationCount(new Handler() {
                        public void handleMessage(Message msg) {
                            super.handleMessage(msg);
                            Bundle countData = msg.obj;
                            Integer count = Integer.valueOf(countData.getInt(KeyValueStoreColumns.value));
                            if (Boolean.valueOf(countData.getBoolean("cache")).booleanValue()) {
                                Log.d("Notification Count", "local" + count);
                            } else {
                                Log.d("Notification Count", "server" + count);
                            }
                        }
                    }, new Handler());
                    synchronized (mutex) {
                        mutex.notify();
                    }
                }
            });
            try {
                mutex.wait();
            } catch (InterruptedException e) {
            }
            Log.i("Scene53", "Helpshift initialize finished");
        }
    }

    public static void registerDeviceToken(final Activity context, final String token) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                Core.registerDeviceToken(context, token);
            }
        });
    }

    public static void openDialog(Activity a, String username, HashMap metadata, String[] hashTags) {
        Log.i("Scene53", "Helpshift openDialog for " + username);
        Core.setNameAndEmail(username, "");
        metadata.put(SupportInternal.TagsKey, hashTags);
        HashMap config = new HashMap();
        config.put(SupportInternal.CustomMetadataKey, metadata);
        Support.showFAQs(a, config);
    }
}
