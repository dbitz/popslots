package com.scene53.gcm;

import android.util.Log;
import com.google.android.gms.iid.InstanceIDListenerService;

public class Scene53GcmInstanceIDListenerService extends InstanceIDListenerService {
    public void onTokenRefresh() {
        Log.i("Scene53", "GCM onTokenRefresh");
    }
}
