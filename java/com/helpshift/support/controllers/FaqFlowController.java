package com.helpshift.support.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.MenuItemCompat.OnActionExpandListener;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.text.TextUtils;
import android.view.MenuItem;
import com.helpshift.R;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.Log;
import com.helpshift.support.compositions.FaqFragment;
import com.helpshift.support.compositions.SectionPagerFragment;
import com.helpshift.support.contracts.FaqFlowView;
import com.helpshift.support.contracts.FaqFragmentListener;
import com.helpshift.support.contracts.SearchListener;
import com.helpshift.support.fragments.QuestionListFragment;
import com.helpshift.support.fragments.SearchFragment;
import com.helpshift.support.fragments.SingleQuestionFragment;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.util.ConversationsPoller;
import com.helpshift.support.util.FragmentUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.ChangeRoomCapacityRequest;
import sfs2x.client.util.BuddyOnlineState;

public class FaqFlowController implements OnActionExpandListener, OnQueryTextListener, FaqFragmentListener {
    private static final int POLLING_INTERVAL = 3;
    private static final String TAG = FaqFlowController.class.getSimpleName();
    private final Bundle bundle;
    private final ConversationsPoller conversationsPoller;
    private String currentQuery = "";
    private final HSApiData data;
    private final FaqFlowView faqFlowView;
    private final FragmentManager fragmentManager;
    private boolean isControllerStarted;
    private final boolean isScreenLarge;
    private String lastQuery = "";
    private boolean retainSearchFragmentState;
    private SearchListener searchListener;

    private static class ConversationPollerSuccessHandler extends Handler {
        private final WeakReference<FaqFlowController> faqFlowControllerWeakReference;

        public ConversationPollerSuccessHandler(FaqFlowController faqFlowController) {
            this.faqFlowControllerWeakReference = new WeakReference(faqFlowController);
        }

        public void handleMessage(Message msg) {
            FaqFlowController faqFlowController = (FaqFlowController) this.faqFlowControllerWeakReference.get();
            if (faqFlowController != null) {
                HSApiData data = faqFlowController.data;
                int count = data.storage.getActiveNotifCnt(data.getProfileId()).intValue();
                if (count > 0) {
                    faqFlowController.faqFlowView.getSupportFragment().setNewMessagesCount(count);
                }
            }
        }
    }

    public FaqFlowController(FaqFlowView faqFlowView, Context context, FragmentManager fragmentManager, Bundle bundle) {
        this.faqFlowView = faqFlowView;
        this.isScreenLarge = context.getResources().getBoolean(R.bool.is_screen_large);
        this.fragmentManager = fragmentManager;
        this.bundle = bundle;
        this.data = new HSApiData(context);
        this.conversationsPoller = new ConversationsPoller(POLLING_INTERVAL, new ConversationPollerSuccessHandler(this), new Handler(), this.data);
    }

    public void start() {
        if (!this.isControllerStarted) {
            switch (this.bundle.getInt(SupportFragment.SUPPORT_MODE, 0)) {
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    startQuestionListFragment();
                    break;
                case POLLING_INTERVAL /*3*/:
                    startSingleQuestionFragment();
                    break;
                default:
                    startFaqFragment();
                    break;
            }
        }
        this.isControllerStarted = true;
    }

    public void startPoller() {
        this.conversationsPoller.start();
    }

    public void stopPoller() {
        this.conversationsPoller.stop();
    }

    public void quitPoller() {
        this.conversationsPoller.quit();
    }

    private void startFaqFragment() {
        FragmentUtil.startFragmentWithoutBackStack(this.fragmentManager, R.id.list_fragment_container, FaqFragment.newInstance(this.bundle, this), null, this, true);
    }

    private void startQuestionListFragment() {
        FragmentUtil.startFragmentWithoutBackStack(this.fragmentManager, R.id.list_fragment_container, QuestionListFragment.newInstance(this.bundle, this), null, this, false);
    }

    private void startSingleQuestionFragment() {
        this.faqFlowView.getSupportFragment().getSupportController().setSearchPerformed(true);
        Fragment singleQuestionFragment = SingleQuestionFragment.newInstance(this.bundle, 1);
        int singleQuestionContainer = R.id.list_fragment_container;
        if (this.isScreenLarge) {
            singleQuestionContainer = R.id.single_question_container;
        }
        FragmentUtil.startFragmentWithoutBackStack(this.fragmentManager, singleQuestionContainer, singleQuestionFragment, null, this, false);
    }

    public void setRetainSearchFragmentState(boolean retainSearchFragmentState) {
        this.retainSearchFragmentState = retainSearchFragmentState;
    }

    public void onSectionSelected(Bundle bundle) {
        if (this.isScreenLarge) {
            FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.list_fragment_container, QuestionListFragment.newInstance(bundle, this), null, false);
            return;
        }
        SectionPagerFragment sectionPagerFragment = SectionPagerFragment.newInstance(bundle);
        sectionPagerFragment.setFaqFragmentListener(this);
        FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.list_fragment_container, sectionPagerFragment, null, false);
    }

    public void onQuestionSelected(String questionPublishId, ArrayList<String> searchTerms) {
        performedSearch();
        this.faqFlowView.getSupportFragment().getSupportController().setSearchPerformed(true);
        Bundle bundle = new Bundle();
        bundle.putString("questionPublishId", questionPublishId);
        bundle.putStringArrayList("searchTerms", searchTerms);
        if (this.isScreenLarge) {
            FragmentUtil.startFragmentWithoutBackStack(this.fragmentManager, R.id.details_fragment_container, SingleQuestionFragment.newInstance(bundle, 1), null, this, false);
            return;
        }
        FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.list_fragment_container, SingleQuestionFragment.newInstance(bundle, 1), null, false);
    }

    public boolean onMenuItemActionExpand(MenuItem item) {
        if (this.searchListener == null) {
            SearchFragment searchFragment = SearchFragment.newInstance(this.bundle);
            searchFragment.setFaqFragmentListener(this);
            this.searchListener = searchFragment;
            FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.list_fragment_container, searchFragment, SearchFragment.TAG, false);
        }
        return true;
    }

    public boolean onMenuItemActionCollapse(MenuItem item) {
        performedSearch();
        if (!this.retainSearchFragmentState) {
            String str = "";
            this.lastQuery = str;
            this.currentQuery = str;
            this.searchListener = null;
            FragmentUtil.popBackStack(this.fragmentManager, SearchFragment.class.getSimpleName());
        }
        return true;
    }

    public boolean onQueryTextSubmit(String query) {
        return false;
    }

    public boolean onQueryTextChange(String newText) {
        if (TextUtils.isEmpty(newText) && this.currentQuery.length() > 2) {
            performedSearch();
        }
        this.currentQuery = newText;
        return onQuery(newText);
    }

    private boolean onQuery(String query) {
        if (this.retainSearchFragmentState || this.searchListener == null) {
            return false;
        }
        this.searchListener.onQuery(query, this.bundle.getString("sectionPublishId"));
        return true;
    }

    public void performedSearch() {
        if (!(TextUtils.isEmpty(this.currentQuery.trim()) || this.lastQuery.equals(this.currentQuery))) {
            this.faqFlowView.getSupportFragment().getSupportController().setSearchPerformed(true);
            this.bundle.putBoolean(HSConsts.SEARCH_PERFORMED, true);
            JSONObject eventObj = new JSONObject();
            try {
                eventObj.put(ChangeRoomCapacityRequest.KEY_SPEC_SIZE, this.currentQuery);
            } catch (JSONException e) {
                Log.d(TAG, "performedSearch", e);
            }
            HSFunnel.pushEvent(ChangeRoomCapacityRequest.KEY_SPEC_SIZE, eventObj);
        }
        this.lastQuery = this.currentQuery;
    }
}
