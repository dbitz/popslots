package com.helpshift.support.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.widget.Toast;
import com.facebook.widget.ToolTipPopup;
import com.helpshift.network.HttpStatus;
import com.helpshift.support.D.string;
import java.util.HashMap;

public final class HSErrors {
    private static final String TAG = "HelpShiftDebug";
    private static Long cooldown;
    private static HashMap<Integer, Long> cooldowns = new HashMap();
    private static HashMap<Integer, Long> errors = new HashMap();
    private static Long previousTimestamp;

    static {
        cooldowns.put(Integer.valueOf(0), Long.valueOf(90000));
        cooldowns.put(Integer.valueOf(HttpStatus.SC_NOT_FOUND), Long.valueOf(1000));
        cooldowns.put(Integer.valueOf(1), Long.valueOf(5000));
        cooldowns.put(Integer.valueOf(2), Long.valueOf(ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME));
    }

    public static void showFailToast(int status, ProgressDialog progressDialog, Context c) {
        CharSequence text;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        if (status == 0) {
            text = c.getResources().getString(string.hs__network_unavailable_msg);
        } else if (status == HttpStatus.SC_NOT_FOUND) {
            text = c.getResources().getString(string.hs__data_not_found_msg);
        } else if (status == 2) {
            text = c.getResources().getString(string.hs__screenshot_upload_error_msg);
        } else if (status == 3) {
            text = c.getResources().getString(string.hs__could_not_reach_support_msg);
        } else if (status == 4) {
            text = c.getResources().getString(string.hs__could_not_open_attachment_msg);
        } else if (status == 5) {
            text = c.getResources().getString(string.hs__file_not_found_msg);
        } else {
            text = c.getResources().getString(string.hs__network_error_msg);
        }
        previousTimestamp = (Long) errors.get(Integer.valueOf(status));
        if (cooldowns.containsKey(Integer.valueOf(status))) {
            cooldown = (Long) cooldowns.get(Integer.valueOf(status));
        } else {
            cooldown = Long.valueOf(1000);
        }
        if (status != -1) {
            if (previousTimestamp == null) {
                showFailToast(c, text);
            } else if (System.currentTimeMillis() - previousTimestamp.longValue() > cooldown.longValue()) {
                showFailToast(c, text);
            }
        }
        errors.put(Integer.valueOf(status), Long.valueOf(System.currentTimeMillis()));
    }

    private static void showFailToast(Context c, CharSequence text) {
        Toast toast = Toast.makeText(c, text, 0);
        toast.setGravity(16, 0, 0);
        toast.show();
    }
}
