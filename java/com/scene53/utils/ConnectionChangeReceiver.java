package com.scene53.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class ConnectionChangeReceiver extends BroadcastReceiver {
    public static native void onNetworkChange(int i);

    public void onReceive(Context context, Intent intent) {
        NetworkInfo activeNetInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        int newStatus = 0;
        if (activeNetInfo != null && activeNetInfo.isConnected()) {
            newStatus = activeNetInfo.getType() == 1 ? 1 : 2;
        }
        onNetworkChange(newStatus);
    }
}
