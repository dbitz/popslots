package com.scene53.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import android.support.v4.util.ArrayMap;
import com.helpshift.support.Log;
import com.helpshift.support.model.ErrorReport;
import com.scene53.Scene53App;

public class NetworkMonitor extends BroadcastReceiver {
    private static final String NETWORK_DISCONNECTED = "networkDisconnected";

    public void onReceive(Context context, Intent intent) {
        if (Scene53App.get().isActive()) {
            onNetworkChanged(context);
        }
    }

    public static void onNetworkChanged(Context context) {
        NetworkInfo activeNetwork = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean isConnected = activeNetwork != null && activeNetwork.isConnectedOrConnecting();
        Log.d("Scene53", "Network status changed " + isConnected + " / " + (activeNetwork != null ? Integer.valueOf(activeNetwork.getType()) : "null"));
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        long ts = prefs.getLong(NETWORK_DISCONNECTED, -1);
        if (isConnected) {
            if (ts >= 0) {
                ArrayMap<String, String> params = new ArrayMap();
                params.put(ErrorReport.KEY_TIMESTAMP, String.valueOf(ts));
                Utils.reportAnalytics("disconnection", "debug", "networkDisconnection", params);
                prefs.edit().remove(NETWORK_DISCONNECTED).commit();
            }
        } else if (ts <= 0) {
            prefs.edit().putLong(NETWORK_DISCONNECTED, System.currentTimeMillis()).commit();
        }
    }
}
