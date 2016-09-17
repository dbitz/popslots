package com.helpshift.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class ConnectivityUtil {
    private final Context context;
    private final int defaultBatchSize;
    private final int maximumBatchSize;

    public ConnectivityUtil(int defaultBatchSize, int maximumBatchSize, Context context) {
        this.defaultBatchSize = defaultBatchSize;
        this.maximumBatchSize = maximumBatchSize;
        this.context = context;
    }

    public int getBatchSize() {
        int returnBatchSize = this.defaultBatchSize;
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        NetworkInfo networkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkInfo == null) {
            return returnBatchSize;
        }
        switch (networkInfo.getType()) {
            case Base64.NO_OPTIONS /*0*/:
                switch (telephonyManager.getNetworkType()) {
                    case BuddyOnlineState.OFFLINE /*1*/:
                    case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                        return this.defaultBatchSize / 2;
                    case BaseRequest.CallExtension /*13*/:
                    case BaseRequest.SubscribeRoomGroup /*15*/:
                        return this.defaultBatchSize * 4;
                    default:
                        return returnBatchSize;
                }
            case BuddyOnlineState.OFFLINE /*1*/:
                return this.maximumBatchSize;
            default:
                return returnBatchSize;
        }
    }
}
