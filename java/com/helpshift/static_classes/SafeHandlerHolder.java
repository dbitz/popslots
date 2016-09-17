package com.helpshift.static_classes;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.lang.ref.WeakReference;

public class SafeHandlerHolder {

    public static class SafeHandler extends Handler {
        private final WeakReference<Callback> callbackWeakReference;

        public SafeHandler(Callback callback) {
            this.callbackWeakReference = new WeakReference(callback);
        }

        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Callback callback = (Callback) this.callbackWeakReference.get();
            if (callback != null) {
                callback.handleMessage(msg);
            }
        }
    }
}
