package com.helpshift.support.adapters;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.model.Message;

public class MessageListAdapterHolders {

    public static class AdminAttachmentImageHolder extends ViewHolder {
        private TextView textView;

        public AdminAttachmentImageHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }

        public static AdminAttachmentImageHolder create(ViewGroup parent, OnLongClickListener onLongClickListener) {
            TextView textView = (TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__admin_txt, parent, false);
            textView.setOnLongClickListener(onLongClickListener);
            return new AdminAttachmentImageHolder(textView);
        }

        public static void configure(AdminAttachmentImageHolder holder, Message message) {
            holder.textView.setTag(message.getMessageId());
            holder.textView.setText(message.getBody());
        }
    }

    public static class AdminRarHolder extends ViewHolder {
        private TextView messageBody;
        private ProgressBar progressBar;
        private ImageButton reviewButton;

        public AdminRarHolder(LinearLayout rootView, OnClickListener onClickListener) {
            super(rootView);
            this.messageBody = (TextView) rootView.findViewById(R.id.message_body);
            this.progressBar = (ProgressBar) rootView.findViewById(R.id.progress_bar);
            this.reviewButton = (ImageButton) rootView.findViewById(R.id.review_button);
            this.reviewButton.setOnClickListener(onClickListener);
        }

        public static AdminRarHolder create(ViewGroup parent, OnLongClickListener onLongClickListener, OnClickListener onClickListener) {
            LinearLayout rootView = (LinearLayout) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__admin_rar, parent, false);
            rootView.setOnLongClickListener(onLongClickListener);
            return new AdminRarHolder(rootView, onClickListener);
        }

        public static void configure(AdminRarHolder holder, Message message) {
            holder.messageBody.setTag(message.getMessageId());
            holder.messageBody.setText(message.getBody());
        }
    }

    public static class AdminTxtHolder extends ViewHolder {
        private TextView textView;

        public AdminTxtHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }

        public static AdminTxtHolder create(ViewGroup parent, OnLongClickListener onLongClickListener) {
            TextView textView = (TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__admin_txt, parent, false);
            textView.setOnLongClickListener(onLongClickListener);
            return new AdminTxtHolder(textView);
        }

        public static void configure(AdminTxtHolder holder, Message message) {
            holder.textView.setTag(message.getMessageId());
            holder.textView.setText(message.getBody());
        }
    }

    public static class MobileTxtHolder extends ViewHolder {
        private TextView textView;

        public MobileTxtHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }

        public static MobileTxtHolder create(ViewGroup parent, OnLongClickListener onLongClickListener) {
            TextView textView = (TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__mobile_txt, parent, false);
            textView.setOnLongClickListener(onLongClickListener);
            return new MobileTxtHolder(textView);
        }

        public static void configure(MobileTxtHolder holder, Message message) {
            holder.textView.setTag(message.getMessageId());
            holder.textView.setText(message.getBody());
        }
    }

    public static class Types {
        public static final int ADMIN_ATTACHMENT_IMAGE = 4;
        public static final int ADMIN_RAR = 3;
        public static final int ADMIN_TXT = 2;
        public static final int MOBILE_TXT = 1;
    }
}
