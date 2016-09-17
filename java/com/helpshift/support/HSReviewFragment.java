package com.helpshift.support;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.text.TextUtils;
import com.helpshift.support.D.string;
import com.helpshift.support.activities.ParentActivity;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.util.HSActivityUtil;
import com.helpshift.support.util.HSCustomFont;
import org.json.JSONException;

public final class HSReviewFragment extends DialogFragment {
    private static AlertToRateAppListener alertToRateAppListener;
    private final String TAG = HSCustomFont.TAG;
    private HSApiData data;
    private boolean disableReview = true;
    private String rurl = "";
    private HSStorage storage;

    protected static void setAlertToRateAppListener(AlertToRateAppListener listener) {
        alertToRateAppListener = listener;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        FragmentActivity activity = getActivity();
        Bundle extras = activity.getIntent().getExtras();
        if (extras != null) {
            this.disableReview = extras.getBoolean("disableReview", true);
            this.rurl = extras.getString("rurl");
        }
        this.data = new HSApiData(activity);
        this.storage = this.data.storage;
        return initAlertDialog(activity);
    }

    private void gotoApp(String url) {
        if (!TextUtils.isEmpty(url)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(url.trim()));
            if (intent.resolveActivity(getContext().getPackageManager()) != null) {
                getContext().startActivity(intent);
            }
        }
    }

    public void onCancel(DialogInterface dialog) {
        HSFunnel.pushAppReviewedEvent("later");
        sendAlertToRateAppAction(2);
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.disableReview) {
            this.data.disableReview();
        }
        getActivity().finish();
    }

    private void sendAlertToRateAppAction(int action) {
        if (alertToRateAppListener != null) {
            alertToRateAppListener.onAction(action);
        }
        alertToRateAppListener = null;
    }

    private Dialog initAlertDialog(FragmentActivity activity) {
        Builder builder = new Builder(activity);
        builder.setMessage(string.hs__review_message);
        AlertDialog dialog = builder.create();
        dialog.setTitle(string.hs__review_title);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setButton(-1, getResources().getString(string.hs__rate_button), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                try {
                    if (TextUtils.isEmpty(HSReviewFragment.this.rurl)) {
                        HSReviewFragment.this.rurl = HSReviewFragment.this.storage.getConfig().optString("rurl", "");
                    }
                    HSReviewFragment.this.rurl = HSReviewFragment.this.rurl.trim();
                    if (!TextUtils.isEmpty(HSReviewFragment.this.rurl)) {
                        HSReviewFragment.this.gotoApp(HSReviewFragment.this.rurl);
                    }
                } catch (JSONException e) {
                    Log.d(HSCustomFont.TAG, e.getMessage());
                }
                HSFunnel.pushAppReviewedEvent("reviewed");
                HSReviewFragment.this.sendAlertToRateAppAction(0);
            }
        });
        dialog.setButton(-3, getResources().getString(string.hs__feedback_button), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                HSFunnel.pushAppReviewedEvent("feedback");
                HSReviewFragment.this.sendAlertToRateAppAction(1);
                if (!HSReviewFragment.this.storage.getIsConversationShowing().booleanValue()) {
                    Intent i = new Intent(HSReviewFragment.this.getContext(), ParentActivity.class);
                    i.putExtra(SupportFragment.SUPPORT_MODE, 1);
                    i.putExtra("decomp", true);
                    i.putExtra("showInFullScreen", HSActivityUtil.isFullScreen(HSReviewFragment.this.getActivity()));
                    i.putExtra("chatLaunchSource", HSConsts.SRC_SUPPORT);
                    i.putExtra("isRoot", true);
                    i.putExtra(HSConsts.SEARCH_PERFORMED, true);
                    HSReviewFragment.this.getActivity().startActivity(i);
                }
            }
        });
        dialog.setButton(-2, getResources().getString(string.hs__review_close_button), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                HSFunnel.pushAppReviewedEvent("later");
                HSReviewFragment.this.sendAlertToRateAppAction(2);
            }
        });
        return dialog;
    }
}
