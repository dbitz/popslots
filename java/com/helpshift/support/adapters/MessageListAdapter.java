package com.helpshift.support.adapters;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import com.helpshift.support.adapters.MessageListAdapterHolders.AdminAttachmentImageHolder;
import com.helpshift.support.adapters.MessageListAdapterHolders.AdminRarHolder;
import com.helpshift.support.adapters.MessageListAdapterHolders.AdminTxtHolder;
import com.helpshift.support.adapters.MessageListAdapterHolders.MobileTxtHolder;
import com.helpshift.support.model.Message;
import com.helpshift.support.res.values.HSConsts;
import java.util.List;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class MessageListAdapter extends Adapter<ViewHolder> {
    private final List<Message> messages;
    private final OnClickListener onClickListener;
    private final OnLongClickListener onLongClickListener;

    public MessageListAdapter(List<Message> messages, OnLongClickListener onLongClickListener, OnClickListener onClickListener) {
        this.messages = messages;
        this.onLongClickListener = onLongClickListener;
        this.onClickListener = onClickListener;
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return MobileTxtHolder.create(parent, this.onLongClickListener);
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return AdminTxtHolder.create(parent, this.onLongClickListener);
            case MessageRecipientMode.TO_ZONE /*3*/:
                return AdminRarHolder.create(parent, this.onLongClickListener, this.onClickListener);
            case Base64.DONT_GUNZIP /*4*/:
                return AdminAttachmentImageHolder.create(parent, this.onLongClickListener);
            default:
                return null;
        }
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        Message message = (Message) this.messages.get(position);
        if (holder instanceof MobileTxtHolder) {
            MobileTxtHolder.configure((MobileTxtHolder) holder, message);
        } else if (holder instanceof AdminTxtHolder) {
            AdminTxtHolder.configure((AdminTxtHolder) holder, message);
        } else if (holder instanceof AdminRarHolder) {
            AdminRarHolder.configure((AdminRarHolder) holder, message);
        } else if (holder instanceof AdminAttachmentImageHolder) {
            AdminAttachmentImageHolder.configure((AdminAttachmentImageHolder) holder, message);
        }
    }

    public int getItemCount() {
        return this.messages.size();
    }

    public int getItemViewType(int position) {
        Message message = (Message) this.messages.get(position);
        String origin = message.getOrigin();
        String type = message.getType();
        if (origin.equals("mobile") && type.equals("txt")) {
            return 1;
        }
        if (origin.equals("admin") && type.equals("txt")) {
            return 2;
        }
        if (origin.equals("admin") && type.equals("rar")) {
            return 3;
        }
        if (origin.equals("admin") && type.equals(HSConsts.ADMIN_ATTACHMENT_IMAGE_TYPE)) {
            return 4;
        }
        return 0;
    }
}
