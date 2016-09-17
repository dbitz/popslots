package com.helpshift.support.util;

import android.content.Context;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.helpshift.R;
import com.helpshift.network.HttpStatus;

public class SnackbarUtil {
    public static void showSnackbar(View view, String message, int duration) {
        if (view != null) {
            Snackbar.make(view, message, duration).show();
        }
    }

    public static void showSnackbar(View view, int resId, int duration) {
        if (view != null) {
            Snackbar.make(view, resId, duration).show();
        }
    }

    public static void showErrorSnackbar(int errorCode, View view) {
        if (view != null && errorCode != -1) {
            String message;
            Context context = view.getContext();
            if (errorCode == 0) {
                message = context.getResources().getString(R.string.hs__network_unavailable_msg);
            } else if (errorCode == HttpStatus.SC_NOT_FOUND) {
                message = context.getResources().getString(R.string.hs__data_not_found_msg);
            } else if (errorCode == 2) {
                message = context.getResources().getString(R.string.hs__screenshot_upload_error_msg);
            } else if (errorCode == 3) {
                message = context.getResources().getString(R.string.hs__could_not_reach_support_msg);
            } else if (errorCode == 4) {
                message = context.getResources().getString(R.string.hs__could_not_open_attachment_msg);
            } else if (errorCode == 5) {
                message = context.getResources().getString(R.string.hs__file_not_found_msg);
            } else {
                message = context.getResources().getString(R.string.hs__network_error_msg);
            }
            Snackbar.make(view, message, -1).show();
        }
    }
}
