package com.helpshift.support.util;

import android.annotation.TargetApi;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import com.helpshift.R;

public class PermissionUtil {
    @TargetApi(9)
    public static void showSettingsPage(Context context) {
        try {
            Intent settingsIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            settingsIntent.addCategory("android.intent.category.DEFAULT");
            settingsIntent.setData(Uri.parse("package:" + context.getPackageName()));
            context.startActivity(settingsIntent);
        } catch (ActivityNotFoundException e) {
            Intent i = new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
            i.addCategory("android.intent.category.DEFAULT");
            context.startActivity(i);
        }
    }

    public static Snackbar requestPermissions(final Fragment fragment, final String[] permissions, final int requestCode, View view) {
        if (fragment.shouldShowRequestPermissionRationale(permissions[0])) {
            Snackbar showRationaleSnackbar = Snackbar.make(view, R.string.hs__permission_denied_message, -2).setAction(R.string.hs__permission_rationale_snackbar_action_label, new OnClickListener() {
                public void onClick(View view) {
                    fragment.requestPermissions(permissions, requestCode);
                }
            });
            showRationaleSnackbar.show();
            return showRationaleSnackbar;
        }
        fragment.requestPermissions(permissions, requestCode);
        return null;
    }
}
