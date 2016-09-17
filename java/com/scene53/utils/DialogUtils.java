package com.scene53.utils;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import com.playstudios.popslots.R;

public class DialogUtils {
    private static Dialog d;
    private static ProgressDialog progressDialog = null;

    public static native void onDialogButtonClicked(long j, int i);

    public static native void onDisconnectDialogButtonClicked();

    public static native void onInactiveDialogButtonClicked();

    public static native void onUpdateDialogButtonClicked(int i);

    private DialogUtils() {
    }

    private static void showDialogAndMaintainSticky(Activity context, Dialog dialog) {
        dialog.getWindow().setFlags(8, 8);
        dialog.show();
        dialog.getWindow().getDecorView().setSystemUiVisibility(context.getWindow().getDecorView().getSystemUiVisibility());
        dialog.getWindow().clearFlags(8);
    }

    public static void showSimpleAlert(final Activity context, final String title, final String message, final String btnText) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                DialogUtils.showDialogAndMaintainSticky(context, new Builder(context).setTitle(title).setMessage(message).setPositiveButton(btnText, null).setCancelable(false).create());
            }
        });
    }

    public static void showInteractiveAlert(Activity context, String title, String message, int numButtons, long listenerPtr, String[] btnTexts) {
        Log.i("Scene53", "Alert::DialogUtils::showInteractiveAlert " + numButtons + " / " + listenerPtr);
        final Activity activity = context;
        final String str = title;
        final String str2 = message;
        final int i = numButtons;
        final String[] strArr = btnTexts;
        final long j = listenerPtr;
        context.runOnUiThread(new Runnable() {
            /* JADX WARNING: inconsistent code. */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                r5 = this;
                r4 = 0;
                r2 = new android.app.AlertDialog$Builder;
                r3 = r1;
                r2.<init>(r3);
                r3 = r2;
                r2 = r2.setTitle(r3);
                r3 = r3;
                r0 = r2.setMessage(r3);
                r2 = r4;
                switch(r2) {
                    case 1: goto L_0x0041;
                    case 2: goto L_0x0034;
                    case 3: goto L_0x0027;
                    default: goto L_0x0019;
                };
            L_0x0019:
                r2 = r0.setCancelable(r4);
                r1 = r2.create();
                r2 = r1;
                com.scene53.utils.DialogUtils.showDialogAndMaintainSticky(r2, r1);
                return;
            L_0x0027:
                r2 = r5;
                r3 = 2;
                r2 = r2[r3];
                r3 = new com.scene53.utils.DialogUtils$2$1;
                r3.<init>();
                r0.setPositiveButton(r2, r3);
            L_0x0034:
                r2 = r5;
                r3 = 1;
                r2 = r2[r3];
                r3 = new com.scene53.utils.DialogUtils$2$2;
                r3.<init>();
                r0.setNeutralButton(r2, r3);
            L_0x0041:
                r2 = r5;
                r2 = r2[r4];
                r3 = new com.scene53.utils.DialogUtils$2$3;
                r3.<init>();
                r0.setNegativeButton(r2, r3);
                goto L_0x0019;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.scene53.utils.DialogUtils.2.run():void");
            }
        });
    }

    public static void showPleaseWait(final Activity context, final String message) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                if (DialogUtils.progressDialog != null) {
                    DialogUtils.progressDialog.dismiss();
                }
                DialogUtils.progressDialog = ProgressDialog.show(context, "", message, true);
            }
        });
    }

    public static void dismissPleaseWait(Activity context) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                if (DialogUtils.progressDialog != null) {
                    DialogUtils.progressDialog.dismiss();
                    DialogUtils.progressDialog = null;
                }
            }
        });
    }

    public static void showUpdateAlert(final Activity context) {
        Log.i("Scene53", "Alert::DialogUtils::showUpdateAlert");
        context.runOnUiThread(new Runnable() {
            public void run() {
                Builder builder = new Builder(context).setTitle(context.getString(R.string.STR_UPDATE_VERSION_TITLE)).setMessage(context.getString(R.string.STR_UPDATE_VERSION_MSG_MANDATORY));
                builder.setNeutralButton(context.getString(R.string.STR_UPDATE_VERSION_BTN_UPDATE), new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        DialogUtils.onUpdateDialogButtonClicked(0);
                    }
                });
                DialogUtils.showDialogAndMaintainSticky(context, builder.setCancelable(false).create());
            }
        });
    }

    public static void showDisconnectedPopup(final Activity context) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                DialogUtils.dismissDisconnectDialog();
                DialogUtils.d = new Builder(context).setTitle(R.string.STR_DISCONNECT_POPUP_TITLE).setMessage(R.string.STR_DISCONNECT_POPUP_MESSAGE).setPositiveButton(R.string.STR_DISCONNECT_POPUP_BUTTON, new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        DialogUtils.onDisconnectDialogButtonClicked();
                    }
                }).setCancelable(false).create();
                DialogUtils.showDialogAndMaintainSticky(context, DialogUtils.d);
            }
        });
    }

    public static void showInactivePopup(final Activity context) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                DialogUtils.dismissDisconnectDialog();
                DialogUtils.d = new Builder(context).setTitle(R.string.STR_INACTIVE_POPUP_TITLE).setMessage(R.string.STR_INACTIVE_POPUP_MESSAGE).setPositiveButton(R.string.STR_INACTIVE_POPUP_BUTTON, null).setCancelable(false).create();
                DialogUtils.showDialogAndMaintainSticky(context, DialogUtils.d);
            }
        });
    }

    public static void showCommunicationErrorPopup(final Activity context, final int errCode) {
        context.runOnUiThread(new Runnable() {
            public void run() {
                DialogUtils.dismissDisconnectDialog();
                DialogUtils.d = new Builder(context).setTitle(R.string.STR_CONNECTION_FAILED_POPUP_TITLE).setMessage(context.getString(R.string.STR_CONNECTION_FAILED_POPUP_MESSAGE, new Object[]{Integer.valueOf(errCode)})).setPositiveButton(R.string.STR_CONNECTION_FAILED_POPUP_BUTTON, new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        DialogUtils.onDisconnectDialogButtonClicked();
                    }
                }).setCancelable(false).create();
                DialogUtils.showDialogAndMaintainSticky(context, DialogUtils.d);
            }
        });
    }

    public static void dismissDisconnectDialog() {
        if (d != null && d.isShowing()) {
            d.dismiss();
        }
    }
}
