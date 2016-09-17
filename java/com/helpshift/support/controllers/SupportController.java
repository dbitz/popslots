package com.helpshift.support.controllers;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.helpshift.R;
import com.helpshift.support.activities.ParentActivity.FlowListHolder;
import com.helpshift.support.flows.Flow;
import com.helpshift.support.fragments.ConversationFlowFragment;
import com.helpshift.support.fragments.DynamicFormFragment;
import com.helpshift.support.fragments.FaqFlowFragment;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.util.FragmentUtil;
import java.util.List;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SupportController implements OnMenuItemClickListener {
    private final Bundle bundle;
    private final FragmentManager fragmentManager;
    private boolean isControllerStarted;
    private boolean searchPerformed = false;
    private int supportMode;

    public SupportController(FragmentManager fragmentManager, Bundle bundle) {
        this.fragmentManager = fragmentManager;
        this.bundle = bundle;
    }

    public void setSearchPerformed(boolean searchPerformed) {
        this.searchPerformed = searchPerformed;
    }

    public void start() {
        if (!this.isControllerStarted) {
            this.supportMode = this.bundle.getInt(SupportFragment.SUPPORT_MODE, 0);
            switch (this.supportMode) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    startConversationFlow(this.bundle, false);
                    break;
                case Base64.DONT_GUNZIP /*4*/:
                    startDynamicForm(FlowListHolder.getFlowList(), false);
                    break;
                default:
                    startFaqFlow(this.bundle, false);
                    break;
            }
        }
        this.isControllerStarted = true;
    }

    public void startFaqFlow(Bundle bundle, boolean addToBackStack) {
        FaqFlowFragment faqFlowFragment = FaqFlowFragment.newInstance(bundle);
        String backStackName = null;
        if (addToBackStack) {
            backStackName = FaqFlowFragment.class.getSimpleName();
        }
        FragmentUtil.startFragment(this.fragmentManager, R.id.flow_fragment_container, faqFlowFragment, null, backStackName, false);
    }

    public void startConversationFlow(Bundle bundle, boolean addToBackStack) {
        bundle.putBoolean(HSConsts.SEARCH_PERFORMED, this.searchPerformed);
        ConversationFlowFragment conversationFlowFragment = ConversationFlowFragment.newInstance(bundle);
        String backStackName = null;
        if (addToBackStack) {
            backStackName = ConversationFlowFragment.class.getSimpleName();
        }
        FragmentUtil.startFragment(this.fragmentManager, R.id.flow_fragment_container, conversationFlowFragment, null, backStackName, false);
    }

    public void startDynamicForm(List<Flow> flowList, boolean addToBackStack) {
        DynamicFormFragment dynamicFormFragment = DynamicFormFragment.newInstance(this.bundle, flowList, this);
        String backStackName = null;
        if (addToBackStack) {
            backStackName = ConversationFlowFragment.class.getSimpleName();
        }
        FragmentUtil.startFragment(this.fragmentManager, R.id.flow_fragment_container, dynamicFormFragment, null, backStackName, false);
    }

    public int getSupportMode() {
        return this.supportMode;
    }

    public FragmentManager getFragmentManager() {
        return this.fragmentManager;
    }

    public boolean onMenuItemClick(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.hs__contact_us) {
            return false;
        }
        onContactUsClicked(null);
        return true;
    }

    public void onContactUsClicked(String query) {
        FaqFlowController faqFlowController = getFaqFlowController();
        if (faqFlowController != null) {
            faqFlowController.performedSearch();
        }
        if (!TextUtils.isEmpty(query)) {
            this.bundle.putString(ErrorReport.KEY_MESSAGE, query);
        }
        this.bundle.putString("chatLaunchSource", HSConsts.SRC_SUPPORT);
        startConversationFlow(this.bundle, true);
    }

    private FaqFlowController getFaqFlowController() {
        FaqFlowFragment faqFlowFragment = FragmentUtil.getFaqFlowFragment(this.fragmentManager);
        if (faqFlowFragment != null) {
            return faqFlowFragment.getFaqFlowController();
        }
        return null;
    }
}
