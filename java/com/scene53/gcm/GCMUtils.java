package com.scene53.gcm;

import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.scene53.Scene53App;
import java.io.IOException;

public class GCMUtils {
    public static final String NOTIFICATION_TYPE_PUSH = "pushNotif";
    private static final String PROJECT_NUMBER = "119254686464";
    private static GoogleCloudMessaging gcm;
    private static String regid;

    public static native void setDeviceToken(String str);

    public static void getRegId() {
        new AsyncTask<Void, Void, String>() {
            protected String doInBackground(Void... params) {
                String msg = "";
                try {
                    if (GCMUtils.gcm == null) {
                        GCMUtils.gcm = GoogleCloudMessaging.getInstance(Scene53App.get().getApplicationContext());
                    }
                    GCMUtils.regid = GCMUtils.gcm.register(new String[]{GCMUtils.PROJECT_NUMBER});
                    GCMUtils.setDeviceToken(GCMUtils.regid);
                    msg = "Device registered, registration ID=" + GCMUtils.regid;
                    Log.i("GCM", msg);
                    return msg;
                } catch (IOException ex) {
                    return "Error :" + ex.getMessage();
                }
            }

            protected void onPostExecute(String msg) {
                Log.i("Scene53", "GCM " + msg);
            }
        }.execute(new Void[]{null, null, null});
    }
}
