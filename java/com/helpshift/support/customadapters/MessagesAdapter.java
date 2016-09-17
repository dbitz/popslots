package com.helpshift.support.customadapters;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.D.id;
import com.helpshift.support.D.layout;
import com.helpshift.support.D.string;
import com.helpshift.support.HSMessagesFragment;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.util.AttachmentUtil;
import com.helpshift.support.util.Styles;
import com.helpshift.support.viewstructs.HSMsg;
import java.io.File;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;

public final class MessagesAdapter extends ArrayAdapter {
    private static final int TYPE_AR_MOBILE = 12;
    private static final int TYPE_CA_MOBILE = 6;
    private static final int TYPE_CB = 5;
    private static final int TYPE_CR_MOBILE = 7;
    private static final int TYPE_GENERIC_ATTACHMENT_ADMIN = 16;
    private static final int TYPE_IMAGE_ATTACHMENT_ADMIN = 15;
    private static final int TYPE_LOCAL_RSC = 14;
    private static final int TYPE_RAR = 11;
    private static final int TYPE_RSC = 13;
    private static final int TYPE_SC_MOBILE = 8;
    private static final int TYPE_TXT_ADMIN = 1;
    private static final int TYPE_TXT_MOBILE = 2;
    private Context c;
    private boolean enableBtn;
    private HSMessagesFragment f;
    private final LayoutInflater inflater = ((LayoutInflater) this.c.getSystemService("layout_inflater"));
    private List<HSMsg> items;

    private static class ARViewHolder {
        public TextView date;
        public TextView text1;

        private ARViewHolder() {
        }
    }

    private static class AdminAttachmentGenericViewHolder {
        public ImageView attachmentIcon;
        public TextView date;
        public View downloadButton;
        public ImageView downloadIcon;
        public TextView fileName;
        public TextView fileSize;
        public TextView fileType;
        public ProgressBar progress;

        private AdminAttachmentGenericViewHolder() {
        }
    }

    private static class AdminAttachmentImageViewHolder {
        public TextView date;
        public View downloadBtn;
        public ImageView downloadIcon;
        public TextView errorText;
        public TextView fileName;
        public TextView fileSize;
        public TextView fileType;
        public ImageView image;
        public ImageView imageIcon;
        public ProgressBar progress;

        private AdminAttachmentImageViewHolder() {
        }
    }

    private static class CBViewHolder {
        public LinearLayout btnContainer;
        public ImageButton button1;
        public ImageButton button2;
        public ProgressBar progress;
        public TextView text1;

        private CBViewHolder() {
        }
    }

    private static class CSViewHolder {
        public TextView message;
        public TextView text1;
        public TextView text2;

        private CSViewHolder() {
        }
    }

    private static class LocalRSCViewHolder {
        public View doneBtn;
        public TextView errorText;
        public ImageView image;
        public LinearLayout imagePreview;
        public ProgressBar progress;
        public TextView textRetry;

        private LocalRSCViewHolder() {
        }
    }

    private static class RARViewHolder {
        public TextView date;
        public TextView message;
        public ProgressBar progress;
        public Button reviewBtn;

        private RARViewHolder() {
        }
    }

    private static class RSCViewHolder {
        public LinearLayout adminMessage;
        public Button attachBtn;
        public View doneBtn;
        public TextView errorText;
        public ImageView image;
        public LinearLayout imagePreview;
        public ProgressBar progress;
        public TextView text1;
        public TextView textRetry;

        private RSCViewHolder() {
        }
    }

    private static class SCViewHolder {
        public ImageView image;
        public ProgressBar progress;

        private SCViewHolder() {
        }
    }

    private static class TxtAdminHolder {
        public TextView text1;
        public TextView text2;

        private TxtAdminHolder() {
        }
    }

    private static class TxtUserHolder {
        public TextView text1;
        public TextView text2;

        private TxtUserHolder() {
        }
    }

    public MessagesAdapter(Fragment f, int textViewResourceId, List<HSMsg> objects) {
        super(f.getContext(), textViewResourceId, objects);
        this.f = (HSMessagesFragment) f;
        this.c = f.getContext();
        this.items = objects;
    }

    public void enableButtons(boolean enable) {
        this.enableBtn = enable;
    }

    public boolean isEnabled(int position) {
        return false;
    }

    public int getViewTypeCount() {
        return 20;
    }

    public int getItemViewType(int position) {
        HSMsg item = (HSMsg) this.items.get(position);
        if ((item.type.equals("txt") && (item.state == -1 || item.state == TYPE_TXT_ADMIN)) || ((item.type.equals("txt") && item.state <= -2) || (item.type.equals("txt") && item.origin.equals("mobile")))) {
            return TYPE_TXT_MOBILE;
        }
        if (item.origin.equals("admin") && (item.type.equals("txt") || item.type.equals("rfr"))) {
            return TYPE_TXT_ADMIN;
        }
        if (item.type.equals("cb") && item.origin.equals("admin")) {
            return TYPE_CB;
        }
        if (item.type.equals("rsc") && item.origin.equals("admin")) {
            if (item.id.startsWith(AttachmentUtil.LOCAL_RSC_MSG_ID_PREFIX)) {
                return TYPE_LOCAL_RSC;
            }
            return TYPE_RSC;
        } else if (item.type.equals("ca") && item.origin.equals("mobile")) {
            return TYPE_CA_MOBILE;
        } else {
            if (item.type.equals("ncr") && item.origin.equals("mobile")) {
                return TYPE_CR_MOBILE;
            }
            if (item.type.equals("sc") && item.origin.equals("mobile")) {
                return TYPE_SC_MOBILE;
            }
            if (item.type.equals("rar") && item.origin.equals("admin")) {
                return TYPE_RAR;
            }
            if (item.type.equals("ar") && item.origin.equals("mobile")) {
                return TYPE_AR_MOBILE;
            }
            if (item.type.equals(HSConsts.ADMIN_ATTACHMENT_IMAGE_TYPE)) {
                return TYPE_IMAGE_ATTACHMENT_ADMIN;
            }
            if (item.type.equals(HSConsts.ADMIN_ATTACHMENT_GENERIC_TYPE)) {
                return TYPE_GENERIC_ATTACHMENT_ADMIN;
            }
            return item.type.equals(HSConsts.ADMIN_ATTACHMENT_IMAGE_TYPE) ? TYPE_IMAGE_ATTACHMENT_ADMIN : 0;
        }
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        HSMsg item = (HSMsg) this.items.get(position);
        if (item == null) {
            return null;
        }
        switch (getItemViewType(position)) {
            case TYPE_TXT_ADMIN /*1*/:
                return setConvertView(convertView, item, new TxtAdminHolder());
            case TYPE_TXT_MOBILE /*2*/:
                return setConvertView(convertView, item, new TxtUserHolder());
            case TYPE_CB /*5*/:
                return setConvertView(convertView, item, position, new CBViewHolder());
            case TYPE_CA_MOBILE /*6*/:
                return setConvertView(convertView, item, true, new CSViewHolder());
            case TYPE_CR_MOBILE /*7*/:
                return setConvertView(convertView, item, false, new CSViewHolder());
            case TYPE_SC_MOBILE /*8*/:
                return setConvertView(convertView, item, new SCViewHolder());
            case TYPE_RAR /*11*/:
                return setConvertView(convertView, item, position, new RARViewHolder());
            case TYPE_AR_MOBILE /*12*/:
                return setConvertView(convertView, item, new ARViewHolder());
            case TYPE_RSC /*13*/:
                return setConvertView(convertView, item, position, new RSCViewHolder());
            case TYPE_LOCAL_RSC /*14*/:
                return setConvertView(convertView, item, position, new LocalRSCViewHolder());
            case TYPE_IMAGE_ATTACHMENT_ADMIN /*15*/:
                return setConvertView(convertView, item, position, new AdminAttachmentImageViewHolder());
            case TYPE_GENERIC_ATTACHMENT_ADMIN /*16*/:
                return setConvertView(convertView, item, position, new AdminAttachmentGenericViewHolder());
            default:
                return null;
        }
    }

    private View setConvertView(View convertView, HSMsg item, TxtAdminHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_txt_admin, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            holder.text1 = (TextView) convertView.findViewById(16908308);
            holder.text2 = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (TxtAdminHolder) convertView.getTag();
        }
        holder.text1.setText(getText(item.body));
        holder.text2.setText(item.date);
        return convertView;
    }

    private View setConvertView(View convertView, final HSMsg item, TxtUserHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_txt_user, null);
            Styles.setUserChatBubbleColor(this.c, convertView.findViewById(id.user_message).getBackground());
            holder.text1 = (TextView) convertView.findViewById(16908308);
            holder.text2 = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (TxtUserHolder) convertView.getTag();
        }
        if (item.type.equals("txt") && (item.state == -1 || item.state == TYPE_TXT_ADMIN)) {
            holder.text1.setText(getText(item.body));
            holder.text2.setText(string.hs__sending_msg);
        } else if (!item.type.equals("txt") || item.state > -2) {
            holder.text1.setText(getText(item.body));
            holder.text2.setText(item.date);
        } else {
            holder.text1.setText(getText(item.body));
            holder.text1.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    MessagesAdapter.this.f.retryMessage(item.id);
                }
            });
            holder.text2.setText(string.hs__sending_fail_msg);
        }
        return convertView;
    }

    private View setConvertView(View convertView, final HSMsg item, final int position, CBViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_confirmation_box, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            holder.text1 = (TextView) convertView.findViewById(16908308);
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.btnContainer = (LinearLayout) convertView.findViewById(16908312);
            holder.button1 = (ImageButton) convertView.findViewById(16908313);
            holder.button2 = (ImageButton) convertView.findViewById(16908314);
            Styles.setAcceptButtonIconColor(this.c, holder.button1.getDrawable());
            Styles.setRejectButtonIconColor(this.c, holder.button2.getDrawable());
            convertView.setTag(holder);
        } else {
            holder = (CBViewHolder) convertView.getTag();
        }
        holder.text1.setText(getText(item.body));
        if (item.inProgress.booleanValue()) {
            holder.progress.setVisibility(0);
            holder.btnContainer.setVisibility(TYPE_SC_MOBILE);
        } else if (item.invisible.booleanValue()) {
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.btnContainer.setVisibility(TYPE_SC_MOBILE);
        } else {
            holder.btnContainer.setVisibility(0);
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.button1.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (item.clickable.booleanValue()) {
                        MessagesAdapter.this.f.replyConfirmation(item.id, Boolean.valueOf(true), position);
                    }
                }
            });
            holder.button2.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (item.clickable.booleanValue()) {
                        MessagesAdapter.this.f.replyConfirmation(item.id, Boolean.valueOf(false), position);
                    }
                }
            });
            holder.button1.setEnabled(this.enableBtn);
            holder.button2.setEnabled(this.enableBtn);
        }
        return convertView;
    }

    private View setConvertView(View convertView, HSMsg item, boolean accepted, CSViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_confirmation_status, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            holder.text1 = (TextView) convertView.findViewById(16908308);
            holder.text2 = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (CSViewHolder) convertView.getTag();
        }
        if (accepted) {
            holder.text1.setText(string.hs__ca_msg);
        } else {
            holder.text1.setText(string.hs__cr_msg);
        }
        holder.text2.setText(item.date);
        return convertView;
    }

    private View setConvertView(View convertView, final HSMsg item, final int position, RSCViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_request_screenshot, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            Styles.setUserChatBubbleColor(this.c, convertView.findViewById(id.user_message).getBackground());
            holder.text1 = (TextView) convertView.findViewById(16908308);
            holder.attachBtn = (Button) convertView.findViewById(16908313);
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.imagePreview = (LinearLayout) convertView.findViewById(16908291);
            holder.image = (ImageView) convertView.findViewById(16908304);
            holder.doneBtn = convertView.findViewById(R.id.user_message);
            holder.adminMessage = (LinearLayout) convertView.findViewById(id.admin_message);
            holder.errorText = (TextView) convertView.findViewById(R.id.errorText);
            holder.textRetry = (TextView) convertView.findViewById(R.id.text_retry);
            convertView.setTag(holder);
        } else {
            holder = (RSCViewHolder) convertView.getTag();
        }
        holder.text1.setText(getText(item.body));
        holder.image.setVisibility(0);
        if (item.inProgress.booleanValue()) {
            holder.adminMessage.setVisibility(0);
            holder.attachBtn.setVisibility(TYPE_SC_MOBILE);
            holder.imagePreview.setVisibility(0);
            holder.image.setImageBitmap(AttachmentUtil.getBitmap(item.screenshot, 250));
            holder.progress.setVisibility(0);
            holder.doneBtn.setVisibility(0);
            holder.textRetry.setVisibility(TYPE_SC_MOBILE);
            holder.errorText.setVisibility(TYPE_SC_MOBILE);
        } else if (item.screenshot != null && !TextUtils.isEmpty(item.screenshot)) {
            holder.adminMessage.setVisibility(0);
            holder.attachBtn.setVisibility(TYPE_SC_MOBILE);
            holder.imagePreview.setVisibility(0);
            Bitmap screenshotImage = AttachmentUtil.getBitmap(item.screenshot, 250);
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.errorText.setVisibility(TYPE_SC_MOBILE);
            holder.textRetry.setVisibility(TYPE_SC_MOBILE);
            if (screenshotImage == null) {
                holder.image.setVisibility(TYPE_SC_MOBILE);
                holder.errorText.setVisibility(0);
            } else {
                holder.image.setImageBitmap(screenshotImage);
                holder.doneBtn.setVisibility(0);
                if (VERSION.SDK_INT >= TYPE_RAR) {
                    holder.image.setAlpha(0.5f);
                }
                holder.textRetry.setVisibility(0);
                if (holder.errorText.getVisibility() != 0) {
                    holder.doneBtn.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            if (item.clickable.booleanValue()) {
                                MessagesAdapter.this.f.attachImage(position);
                            }
                        }
                    });
                }
            }
        } else if (item.invisible.booleanValue()) {
            holder.adminMessage.setVisibility(0);
            holder.attachBtn.setVisibility(TYPE_SC_MOBILE);
            holder.imagePreview.setVisibility(TYPE_SC_MOBILE);
            holder.image.setImageBitmap(null);
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.errorText.setVisibility(TYPE_SC_MOBILE);
            holder.textRetry.setVisibility(TYPE_SC_MOBILE);
        } else {
            holder.adminMessage.setVisibility(0);
            holder.attachBtn.setVisibility(0);
            holder.attachBtn.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (item.clickable.booleanValue()) {
                        MessagesAdapter.this.f.selectImagePopup(position);
                    }
                }
            });
            holder.imagePreview.setVisibility(TYPE_SC_MOBILE);
            holder.image.setImageBitmap(null);
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.errorText.setVisibility(TYPE_SC_MOBILE);
            holder.textRetry.setVisibility(TYPE_SC_MOBILE);
        }
        holder.doneBtn.setEnabled(this.enableBtn);
        holder.attachBtn.setEnabled(this.enableBtn);
        return convertView;
    }

    private View setConvertView(View convertView, final HSMsg item, final int position, LocalRSCViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__local_msg_request_screenshot, null);
            Styles.setUserChatBubbleColor(this.c, convertView.findViewById(id.user_message).getBackground());
            holder.imagePreview = (LinearLayout) convertView.findViewById(16908299);
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.image = (ImageView) convertView.findViewById(16908304);
            holder.doneBtn = convertView.findViewById(R.id.user_message);
            holder.errorText = (TextView) convertView.findViewById(R.id.errorText);
            holder.textRetry = (TextView) convertView.findViewById(R.id.text_retry);
            convertView.setTag(holder);
        } else {
            holder = (LocalRSCViewHolder) convertView.getTag();
        }
        Bitmap screenshotImage = AttachmentUtil.getBitmap(item.screenshot, 250);
        if (item.inProgress.booleanValue()) {
            holder.image.setImageBitmap(screenshotImage);
            holder.image.setVisibility(0);
            holder.imagePreview.setVisibility(0);
            holder.progress.setVisibility(0);
            holder.errorText.setVisibility(TYPE_SC_MOBILE);
            holder.textRetry.setVisibility(TYPE_SC_MOBILE);
        } else if (!TextUtils.isEmpty(item.screenshot)) {
            holder.imagePreview.setVisibility(0);
            if (screenshotImage == null) {
                holder.image.setVisibility(TYPE_SC_MOBILE);
                holder.errorText.setVisibility(0);
                holder.progress.setVisibility(TYPE_SC_MOBILE);
                holder.textRetry.setVisibility(TYPE_SC_MOBILE);
            } else {
                holder.image.setImageBitmap(screenshotImage);
                holder.image.setVisibility(0);
                if (VERSION.SDK_INT >= TYPE_RAR) {
                    holder.image.setAlpha(0.5f);
                }
                holder.errorText.setVisibility(TYPE_SC_MOBILE);
                holder.progress.setVisibility(TYPE_SC_MOBILE);
                holder.doneBtn.setVisibility(0);
                holder.doneBtn.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        if (item.clickable.booleanValue()) {
                            MessagesAdapter.this.f.attachImage(position);
                        }
                    }
                });
                holder.textRetry.setVisibility(0);
            }
        } else if (item.invisible.booleanValue()) {
            holder.imagePreview.setVisibility(TYPE_SC_MOBILE);
            holder.textRetry.setVisibility(TYPE_SC_MOBILE);
        }
        holder.doneBtn.setEnabled(this.enableBtn);
        return convertView;
    }

    private View setConvertView(View convertView, HSMsg item, SCViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_screenshot_status, null);
            Styles.setUserChatBubbleColor(this.c, convertView.findViewById(id.user_message).getBackground());
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.image = (ImageView) convertView.findViewById(16908304);
            convertView.setTag(holder);
        } else {
            holder = (SCViewHolder) convertView.getTag();
        }
        if (TextUtils.isEmpty(item.screenshot)) {
            holder.progress.setVisibility(0);
            holder.image.setVisibility(TYPE_SC_MOBILE);
            holder.image.setImageBitmap(null);
        } else {
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.image.setVisibility(0);
            holder.image.setImageBitmap(AttachmentUtil.getBitmap(item.screenshot, -1));
        }
        return convertView;
    }

    private View setConvertView(View convertView, final HSMsg item, final int position, RARViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_review_request, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            holder.message = (TextView) convertView.findViewById(16908308);
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.reviewBtn = (Button) convertView.findViewById(16908313);
            holder.date = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (RARViewHolder) convertView.getTag();
        }
        holder.message.setText(string.hs__review_request_message);
        holder.date.setText(item.date);
        if (item.inProgress.booleanValue()) {
            holder.progress.setVisibility(0);
            holder.reviewBtn.setVisibility(TYPE_SC_MOBILE);
        } else if (item.invisible.booleanValue()) {
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.reviewBtn.setVisibility(TYPE_SC_MOBILE);
        } else {
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.reviewBtn.setVisibility(0);
            holder.reviewBtn.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (item.clickable.booleanValue()) {
                        MessagesAdapter.this.f.replyReview(item.id, position);
                    }
                }
            });
        }
        return convertView;
    }

    private View setConvertView(View convertView, HSMsg item, ARViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_review_accepted, null);
            Styles.setUserChatBubbleColor(convertView.getContext(), convertView.findViewById(id.user_message).getBackground());
            holder.text1 = (TextView) convertView.findViewById(16908308);
            holder.date = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (ARViewHolder) convertView.getTag();
        }
        holder.text1.setText(string.hs__review_accepted_message);
        holder.date.setText(item.date);
        return convertView;
    }

    private View setConvertView(View convertView, HSMsg item, int position, AdminAttachmentGenericViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_attachment_generic, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            holder.fileName = (TextView) convertView.findViewById(R.id.attachment_file_name);
            holder.fileType = (TextView) convertView.findViewById(R.id.attachment_file_type);
            holder.fileSize = (TextView) convertView.findViewById(R.id.attachment_file_size);
            holder.downloadButton = convertView.findViewById(R.id.admin_message);
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.downloadIcon = (ImageView) convertView.findViewById(R.id.download_icon);
            holder.attachmentIcon = (ImageView) convertView.findViewById(R.id.attachment_icon);
            Styles.setAccentColor(this.c, holder.downloadIcon.getDrawable());
            Styles.setAccentColor(this.c, holder.attachmentIcon.getDrawable());
            holder.date = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (AdminAttachmentGenericViewHolder) convertView.getTag();
        }
        holder.date.setText(item.date);
        try {
            String fileSize;
            final JSONObject attachmentObj = new JSONObject(item.body);
            String fileName = attachmentObj.getString("file-name");
            String fileType = AttachmentUtil.getFileType(this.f.getContext(), attachmentObj.getString("content-type"), fileName);
            int size = attachmentObj.getInt("size");
            if (size < 1024) {
                fileSize = size + " B";
            } else if (size < 1048576) {
                fileSize = (size / 1024) + " KB";
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                Object[] objArr = new Object[TYPE_TXT_ADMIN];
                objArr[0] = Float.valueOf(((float) size) / 1048576.0f);
                fileSize = stringBuilder.append(String.format("%.1f", objArr)).append(" MB").toString();
            }
            holder.fileName.setText(fileName);
            holder.fileType.setText(fileType);
            holder.fileSize.setText(fileSize);
            holder.downloadIcon.setVisibility(TYPE_SC_MOBILE);
            holder.attachmentIcon.setVisibility(TYPE_SC_MOBILE);
            holder.progress.setVisibility(TYPE_SC_MOBILE);
            holder.progress.setIndeterminate(true);
            switch (item.state) {
                case Base64.NO_OPTIONS /*0*/:
                    holder.downloadIcon.setVisibility(0);
                    break;
                case TYPE_TXT_ADMIN /*1*/:
                    holder.downloadIcon.setVisibility(0);
                    holder.progress.setVisibility(0);
                    break;
                case TYPE_TXT_MOBILE /*2*/:
                    holder.downloadIcon.setVisibility(0);
                    holder.progress.setVisibility(0);
                    holder.progress.setIndeterminate(false);
                    break;
                case MessageRecipientMode.TO_ZONE /*3*/:
                    holder.attachmentIcon.setVisibility(0);
                    break;
            }
            final HSMsg hSMsg = item;
            final int i = position;
            holder.downloadButton.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (hSMsg.state == 3) {
                        MessagesAdapter.this.f.launchAttachment(hSMsg);
                    } else if (hSMsg.state == 0) {
                        MessagesAdapter.this.f.downloadAdminAttachment(attachmentObj, i, MessagesAdapter.TYPE_CA_MOBILE);
                    }
                }
            });
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return convertView;
    }

    private View setConvertView(View convertView, HSMsg item, int position, AdminAttachmentImageViewHolder holder) {
        if (convertView == null) {
            convertView = this.inflater.inflate(layout.hs__msg_attachment_image, null);
            Styles.setAdminChatBubbleColor(this.c, convertView.findViewById(id.admin_message).getBackground());
            holder.image = (ImageView) convertView.findViewById(16908304);
            holder.progress = (ProgressBar) convertView.findViewById(16908301);
            holder.downloadBtn = convertView.findViewById(R.id.admin_message);
            holder.errorText = (TextView) convertView.findViewById(R.id.errorText);
            holder.downloadIcon = (ImageView) convertView.findViewById(R.id.download_icon);
            holder.imageIcon = (ImageView) convertView.findViewById(R.id.image_icon);
            Styles.setAccentColor(this.c, holder.downloadIcon.getDrawable());
            Styles.setAccentColor(this.c, holder.imageIcon.getDrawable());
            holder.fileName = (TextView) convertView.findViewById(R.id.attachment_file_name);
            holder.fileType = (TextView) convertView.findViewById(R.id.attachment_file_type);
            holder.fileSize = (TextView) convertView.findViewById(R.id.attachment_file_size);
            holder.date = (TextView) convertView.findViewById(16908309);
            convertView.setTag(holder);
        } else {
            holder = (AdminAttachmentImageViewHolder) convertView.getTag();
        }
        holder.date.setText(item.date);
        try {
            String fileSize;
            final JSONObject attachmentObj = new JSONObject(item.body);
            String fileName = attachmentObj.getString("file-name");
            String fileType = AttachmentUtil.getFileType(this.f.getActivity(), attachmentObj.getString("content-type"), fileName);
            int size = attachmentObj.getInt("size");
            if (size < 1024) {
                fileSize = size + " B";
            } else if (size < 1048576) {
                fileSize = (size / 1024) + " KB";
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                Object[] objArr = new Object[TYPE_TXT_ADMIN];
                objArr[0] = Float.valueOf(((float) size) / 1048576.0f);
                fileSize = stringBuilder.append(String.format("%.1f", objArr)).append(" MB").toString();
            }
            holder.fileName.setText(fileName);
            holder.fileType.setText(fileType);
            holder.fileSize.setText(fileSize);
            File imageFile = new File(item.screenshot);
            holder.downloadIcon.setVisibility(TYPE_SC_MOBILE);
            holder.imageIcon.setVisibility(TYPE_SC_MOBILE);
            if (VERSION.SDK_INT >= TYPE_RAR) {
                holder.image.setAlpha(1.0f);
            }
            holder.errorText.setVisibility(TYPE_SC_MOBILE);
            switch (item.state) {
                case Base64.NO_OPTIONS /*0*/:
                    holder.downloadIcon.setVisibility(0);
                    holder.image.setVisibility(TYPE_SC_MOBILE);
                    holder.progress.setVisibility(0);
                    this.f.downloadAdminAttachment(attachmentObj, position, TYPE_SC_MOBILE);
                    break;
                case TYPE_TXT_ADMIN /*1*/:
                    holder.downloadIcon.setVisibility(0);
                    holder.progress.setVisibility(TYPE_SC_MOBILE);
                    if (imageFile.exists()) {
                        holder.image.setImageBitmap(AttachmentUtil.getBitmap(item.screenshot, 250));
                        holder.image.setVisibility(0);
                        break;
                    }
                    break;
                case TYPE_TXT_MOBILE /*2*/:
                    holder.downloadIcon.setVisibility(0);
                    if (imageFile.exists()) {
                        holder.image.setImageBitmap(AttachmentUtil.getBitmap(item.screenshot, 250));
                        holder.image.setVisibility(0);
                    }
                    holder.progress.setVisibility(0);
                    break;
                case MessageRecipientMode.TO_ZONE /*3*/:
                    holder.progress.setVisibility(TYPE_SC_MOBILE);
                    holder.imageIcon.setVisibility(0);
                    if (imageFile.exists()) {
                        Bitmap imageBitmap = AttachmentUtil.getBitmap(item.screenshot, 250);
                        if (imageBitmap != null) {
                            holder.errorText.setVisibility(TYPE_SC_MOBILE);
                            holder.image.setImageBitmap(imageBitmap);
                            holder.image.setVisibility(0);
                            break;
                        }
                        holder.image.setVisibility(TYPE_SC_MOBILE);
                        holder.imageIcon.setVisibility(TYPE_SC_MOBILE);
                        holder.downloadIcon.setVisibility(TYPE_SC_MOBILE);
                        holder.errorText.setVisibility(0);
                        holder.fileName.setVisibility(TYPE_SC_MOBILE);
                        holder.fileType.setVisibility(TYPE_SC_MOBILE);
                        holder.fileSize.setVisibility(TYPE_SC_MOBILE);
                        break;
                    }
                    break;
            }
            if (holder.errorText.getVisibility() != 0) {
                final HSMsg hSMsg = item;
                final int i = position;
                holder.downloadBtn.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        if (hSMsg.state == 3) {
                            MessagesAdapter.this.f.launchAttachment(hSMsg);
                        } else if (hSMsg.state != MessagesAdapter.TYPE_TXT_MOBILE) {
                            MessagesAdapter.this.f.downloadAdminAttachment(attachmentObj, i, MessagesAdapter.TYPE_CR_MOBILE);
                        }
                    }
                });
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return convertView;
    }

    private String getText(String input) {
        return Html.fromHtml(input.replace("\n", "<br/>")).toString();
    }
}
