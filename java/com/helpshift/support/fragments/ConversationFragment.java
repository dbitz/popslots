package com.helpshift.support.fragments;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.support.HSApiData;
import com.helpshift.support.adapters.MessageListAdapter;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.util.ConversationsPoller;
import java.lang.ref.WeakReference;

public class ConversationFragment extends MainFragment implements OnClickListener, OnLongClickListener {
    private ConversationsPoller conversationsPoller;
    private HSApiData data;
    private RecyclerView messagesRecyclerView;

    private static class ConversationPollerFailHandler extends Handler {
        private final WeakReference<ConversationFragment> conversationFragmentWeakReference;

        public ConversationPollerFailHandler(ConversationFragment fragment) {
            this.conversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            if (((ConversationFragment) this.conversationFragmentWeakReference.get()) == null) {
            }
        }
    }

    private static class ConversationPollerSuccessHandler extends Handler {
        private final WeakReference<ConversationFragment> conversationFragmentWeakReference;

        public ConversationPollerSuccessHandler(ConversationFragment fragment) {
            this.conversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            ConversationFragment conversationFragment = (ConversationFragment) this.conversationFragmentWeakReference.get();
            if (conversationFragment != null) {
                conversationFragment.refreshMessages();
            }
        }
    }

    public static ConversationFragment newInstance(Bundle bundle) {
        ConversationFragment conversationFragment = new ConversationFragment();
        conversationFragment.setArguments(bundle);
        return conversationFragment;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.data = new HSApiData(context);
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__conversation_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState == null) {
            this.messagesRecyclerView = (RecyclerView) view.findViewById(R.id.messages);
            this.messagesRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
            this.conversationsPoller = new ConversationsPoller(5, new ConversationPollerSuccessHandler(this), new ConversationPollerFailHandler(this), this.data);
        }
    }

    public boolean onLongClick(View view) {
        return true;
    }

    public void onClick(View view) {
        if (view.getId() != R.id.review_button) {
        }
    }

    public void onResume() {
        super.onResume();
        refreshMessages();
        this.conversationsPoller.start();
    }

    public void onPause() {
        super.onPause();
        this.conversationsPoller.stop();
    }

    private void refreshMessages() {
        this.messagesRecyclerView.setAdapter(new MessageListAdapter(IssuesDataSource.getIssue(getArguments().getString("issueId")).getMessageList(), this, this));
    }
}
