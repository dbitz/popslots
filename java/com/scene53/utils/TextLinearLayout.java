package com.scene53.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.widget.LinearLayout;

public class TextLinearLayout extends LinearLayout {
    private static final String TAG = "SearchLayout";
    private onBackPressedListener l;

    public interface onBackPressedListener {
        void onBackPressed();
    }

    public TextLinearLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TextLinearLayout(Context context) {
        super(context);
    }

    public void setOnBackPressedListener(onBackPressedListener l) {
        this.l = l;
    }

    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        Log.d(TAG, "dispatchKeyEventPreIme(" + event + ")");
        if (this.l != null && event.getKeyCode() == 4) {
            DispatcherState state = getKeyDispatcherState();
            if (state != null) {
                if (event.getAction() == 0 && event.getRepeatCount() == 0) {
                    state.startTracking(event, this);
                    return true;
                } else if (event.getAction() == 1 && !event.isCanceled() && state.isTracking(event)) {
                    this.l.onBackPressed();
                    return true;
                }
            }
        }
        return super.dispatchKeyEventPreIme(event);
    }
}
