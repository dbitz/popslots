package com.helpshift.support.fragments;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.helpshift.R;
import com.helpshift.support.contracts.ScreenshotPreviewListener;
import com.helpshift.support.util.AttachmentUtil;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.BuddyOnlineState;

public class ScreenshotPreviewFragment extends MainFragment implements OnClickListener {
    private int mode;
    private String screenshotPath;
    private ImageView screenshotPreview;
    private ScreenshotPreviewListener screenshotPreviewListener;
    private Button secondaryButton;

    public static class Modes {
        public static final int ADD = 1;
        public static final int REMOVE = 2;
        public static final int SEND = 3;
    }

    public static ScreenshotPreviewFragment newInstance(Bundle bundle, ScreenshotPreviewListener listener, int mode) {
        ScreenshotPreviewFragment screenshotPreviewFragment = new ScreenshotPreviewFragment();
        screenshotPreviewFragment.setArguments(bundle);
        screenshotPreviewFragment.screenshotPreviewListener = listener;
        screenshotPreviewFragment.mode = mode;
        return screenshotPreviewFragment;
    }

    public void setScreenshotPath(String screenshotPath) {
        this.screenshotPath = screenshotPath;
        setScreenshotPreview();
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__screenshot_preview_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.screenshotPreview = (ImageView) view.findViewById(R.id.screenshot_preview);
        ((Button) view.findViewById(R.id.change)).setOnClickListener(this);
        this.secondaryButton = (Button) view.findViewById(R.id.secondary_button);
        this.secondaryButton.setOnClickListener(this);
    }

    public void onResume() {
        super.onResume();
        setSecondaryButtonText(this.secondaryButton, this.mode);
        setScreenshotPreview();
    }

    private static void setSecondaryButtonText(Button button, int mode) {
        String buttonText;
        Resources resources = button.getResources();
        switch (mode) {
            case BuddyOnlineState.OFFLINE /*1*/:
                buttonText = resources.getString(R.string.hs__screenshot_add);
                break;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                buttonText = resources.getString(R.string.hs__screenshot_remove);
                break;
            case MessageRecipientMode.TO_ZONE /*3*/:
                buttonText = resources.getString(R.string.hs__send_msg_btn);
                break;
            default:
                buttonText = "";
                break;
        }
        button.setText(buttonText);
    }

    private void setScreenshotPreview() {
        if (isResumed() && !TextUtils.isEmpty(this.screenshotPath)) {
            this.screenshotPreview.setImageBitmap(AttachmentUtil.getBitmap(this.screenshotPath, -1));
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.secondary_button && !TextUtils.isEmpty(this.screenshotPath)) {
            switch (this.mode) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    this.screenshotPreviewListener.add(this.screenshotPath);
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    this.screenshotPreviewListener.remove();
                    return;
                case MessageRecipientMode.TO_ZONE /*3*/:
                    this.screenshotPreviewListener.send(this.screenshotPath);
                    return;
                default:
                    return;
            }
        } else if (id == R.id.change) {
            if (this.mode == 2) {
                this.mode = 1;
            }
            this.screenshotPreviewListener.change();
        }
    }
}
