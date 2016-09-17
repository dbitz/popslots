package com.helpshift.support.util;

import android.os.Handler;
import android.os.HandlerThread;
import com.facebook.widget.PlacePickerFragment;
import com.helpshift.support.HSApiData;
import org.json.JSONException;

public class ConversationsPoller {
    private final Handler conversationsPollerThreadHandler;
    private boolean pollerStarted = false;
    private final Runnable runnableTask;

    public ConversationsPoller(int interval, Handler success, Handler failure, HSApiData data) {
        HandlerThread conversationsPollerThread = new HandlerThread("ConversationsPoller");
        conversationsPollerThread.start();
        this.conversationsPollerThreadHandler = new Handler(conversationsPollerThread.getLooper());
        final HSApiData hSApiData = data;
        final Handler handler = success;
        final Handler handler2 = failure;
        final int i = interval;
        this.runnableTask = new Runnable() {
            public void run() {
                try {
                    hSApiData.getLatestIssues(handler, handler2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                ConversationsPoller.this.conversationsPollerThreadHandler.postDelayed(ConversationsPoller.this.runnableTask, (long) (i * PlacePickerFragment.DEFAULT_RADIUS_IN_METERS));
            }
        };
    }

    public void start() {
        if (!this.pollerStarted) {
            this.conversationsPollerThreadHandler.post(this.runnableTask);
            this.pollerStarted = true;
        }
    }

    public void stop() {
        if (this.pollerStarted) {
            this.conversationsPollerThreadHandler.removeCallbacks(this.runnableTask);
            this.pollerStarted = false;
        }
    }

    public void quit() {
        this.conversationsPollerThreadHandler.getLooper().quit();
    }
}
