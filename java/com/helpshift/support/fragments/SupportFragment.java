package com.helpshift.support.fragments;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.widget.SearchView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.ContactUsFilter;
import com.helpshift.support.ContactUsFilter.LOCATION;
import com.helpshift.support.HSAddIssueFragment;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.HSMessagesFragment;
import com.helpshift.support.HSStorage;
import com.helpshift.support.SupportInternal;
import com.helpshift.support.SupportInternal.Delegate;
import com.helpshift.support.compositions.FaqFragment;
import com.helpshift.support.compositions.SectionPagerFragment;
import com.helpshift.support.controllers.ConversationFlowController;
import com.helpshift.support.controllers.FaqFlowController;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.util.FragmentUtil;
import com.helpshift.support.util.HSActivityUtil;
import com.helpshift.support.util.Styles;
import com.helpshift.util.ApplicationUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import sfs2x.client.requests.KickUserRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.buddylist.GoOnlineRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SupportFragment extends MainFragment implements OnClickListener {
    public static final String SUPPORT_MODE = "support_mode";
    private static boolean isForeground;
    private MenuItem attachScreenshotMenuItem;
    private MenuItem contactUsMenuItem;
    private HSApiData data;
    private MenuItem doneMenuItem;
    private boolean faqLoaded;
    private boolean menuItemsPrepared;
    private int newMessageCount = 0;
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private MenuItem startNewConversationMenuItem;
    private HSStorage storage;
    private SupportController supportController;
    private View viewFaqsLoadError;
    private View viewFaqsLoading;
    private View viewNoFaqs;
    private final List<String> visibleFragments = Collections.synchronizedList(new ArrayList());

    public static class SupportModes {
        public static final int CONVERSATION = 1;
        public static final int DYNAMIC_FORM = 4;
        public static final int FAQ_SECTION = 2;
        public static final int SINGLE_QUESTION = 3;
    }

    public static SupportFragment newInstance(Bundle bundle) {
        SupportFragment supportFragment = new SupportFragment();
        supportFragment.setArguments(bundle);
        return supportFragment;
    }

    public SupportController getSupportController() {
        return this.supportController;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        setRetainInstance(true);
        this.data = new HSApiData(context);
        this.storage = this.data.storage;
        this.newMessageCount = this.storage.getActiveNotifCnt(this.data.getProfileId()).intValue();
        if (this.supportController == null) {
            this.supportController = new SupportController(getRetainedChildFragmentManager(), getArguments());
        }
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__support_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.viewNoFaqs = view.findViewById(R.id.view_no_faqs);
        this.viewFaqsLoading = view.findViewById(R.id.view_faqs_loading);
        this.viewFaqsLoadError = view.findViewById(R.id.view_faqs_load_error);
        ((Button) view.findViewById(R.id.button_retry)).setOnClickListener(this);
        if (this.storage.isHelpshiftBrandingDisabled()) {
            ((ImageView) view.findViewById(R.id.hs_logo)).setVisibility(8);
        }
    }

    protected int getMenuResourceId() {
        return R.menu.hs__support_fragment;
    }

    protected void attachMenuListeners(Menu menu) {
        this.searchMenuItem = menu.findItem(R.id.hs__search);
        this.searchView = (SearchView) MenuItemCompat.getActionView(this.searchMenuItem);
        this.contactUsMenuItem = menu.findItem(R.id.hs__contact_us);
        this.contactUsMenuItem.setOnMenuItemClickListener(this.supportController);
        MenuItemCompat.getActionView(this.contactUsMenuItem).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                SupportFragment.this.supportController.onMenuItemClick(SupportFragment.this.contactUsMenuItem);
            }
        });
        this.attachScreenshotMenuItem = menu.findItem(R.id.hs__attach_screenshot);
        this.startNewConversationMenuItem = menu.findItem(R.id.hs__start_new_conversation);
        this.doneMenuItem = menu.findItem(R.id.hs__action_done);
        this.menuItemsPrepared = true;
        setSearchListeners(null);
        setConversationListeners(null);
        refreshMenu();
    }

    public void setSearchListeners(FaqFlowController faqFlowController) {
        if (this.menuItemsPrepared) {
            if (faqFlowController == null) {
                FaqFlowFragment faqFlowFragment = FragmentUtil.getFaqFlowFragment(getRetainedChildFragmentManager());
                if (faqFlowFragment != null) {
                    faqFlowController = faqFlowFragment.getFaqFlowController();
                }
            }
            if (faqFlowController != null) {
                MenuItemCompat.setOnActionExpandListener(this.searchMenuItem, faqFlowController);
                this.searchView.setOnQueryTextListener(faqFlowController);
            }
        }
    }

    public void setConversationListeners(ConversationFlowController conversationFlowController) {
        if (this.menuItemsPrepared) {
            if (conversationFlowController == null) {
                ConversationFlowFragment conversationFlowFragment = FragmentUtil.getConversationFlowFragment(getChildFragmentManager());
                if (conversationFlowFragment != null) {
                    conversationFlowController = conversationFlowFragment.getConversationFlowController();
                }
            }
            if (conversationFlowController != null) {
                this.attachScreenshotMenuItem.setOnMenuItemClickListener(conversationFlowController);
                this.startNewConversationMenuItem.setOnMenuItemClickListener(conversationFlowController);
                this.doneMenuItem.setOnMenuItemClickListener(conversationFlowController);
            }
        }
    }

    private void setMenuItemColors() {
        Styles.setActionButtonIconColor(getContext(), this.searchMenuItem.getIcon());
        Styles.setActionButtonIconColor(getContext(), this.contactUsMenuItem.getIcon());
        Styles.setActionButtonIconColor(getContext(), ((TextView) MenuItemCompat.getActionView(this.contactUsMenuItem).findViewById(R.id.hs__notification_badge)).getBackground());
        Styles.setActionButtonIconColor(getContext(), this.attachScreenshotMenuItem.getIcon());
        Styles.setActionButtonIconColor(getContext(), this.startNewConversationMenuItem.getIcon());
        Styles.setActionButtonIconColor(getContext(), this.doneMenuItem.getIcon());
    }

    private void hideAllMenuItems() {
        this.contactUsMenuItem.setVisible(false);
        this.attachScreenshotMenuItem.setVisible(false);
        this.startNewConversationMenuItem.setVisible(false);
        this.doneMenuItem.setVisible(false);
    }

    public void addVisibleFragment(String fragment) {
        this.visibleFragments.add(fragment);
        refreshMenu();
    }

    public void removeVisibleFragment(String fragment) {
        this.visibleFragments.remove(fragment);
        refreshMenu();
    }

    public void setFaqLoaded(boolean faqLoaded) {
        this.faqLoaded = faqLoaded;
        refreshMenu();
    }

    public void refreshMenu() {
        if (this.menuItemsPrepared) {
            hideAllMenuItems();
            setMenuItemColors();
            synchronized (this.visibleFragments) {
                for (String fragment : this.visibleFragments) {
                    if (fragment.equals(FaqFragment.class.getSimpleName())) {
                        showFaqFragmentMenu();
                    } else if (fragment.equals(SearchFragment.class.getSimpleName())) {
                        restoreSearchMenuItem();
                    } else if (fragment.equals(SingleQuestionFragment.class.getSimpleName() + 1)) {
                        showSingleQuestionFragmentMenu();
                    } else if (fragment.equals(SectionPagerFragment.class.getSimpleName())) {
                        showSectionPagerFragmentMenu();
                    } else if (fragment.equals(QuestionListFragment.class.getSimpleName())) {
                        showQuestionListFragmentMenu();
                    } else if (fragment.equals(HSAddIssueFragment.class.getSimpleName())) {
                        restoreHSAddIssueFragmentMenu();
                    } else if (fragment.equals(HSMessagesFragment.class.getSimpleName())) {
                        restoreHSMessagesFragmentMenu();
                    } else if (fragment.equals(SingleQuestionFragment.class.getSimpleName() + 2)) {
                        restoreSingleQuestionDoneModeFragmentMenu();
                    }
                }
            }
        }
    }

    private void restoreSingleQuestionDoneModeFragmentMenu() {
        this.doneMenuItem.setVisible(true);
    }

    private void restoreHSMessagesFragmentMenu() {
        setRetainSearchFragmentState(true);
        setSearchMenuVisible(false);
        setContactUsMenuVisible(false);
        this.startNewConversationMenuItem.setVisible(false);
        ConversationFlowFragment conversationFlowFragment = FragmentUtil.getConversationFlowFragment(getChildFragmentManager());
        if (conversationFlowFragment != null) {
            HSMessagesFragment hsMessagesFragment = FragmentUtil.getHSMessagesFragment(conversationFlowFragment.getRetainedChildFragmentManager());
            if (hsMessagesFragment != null) {
                LinearLayout messageBox = hsMessagesFragment.getMessageBox();
                if (this.storage.getEnableFullPrivacy().booleanValue() || messageBox == null || messageBox.getVisibility() != 0 || hsMessagesFragment.isIssueRejected()) {
                    this.attachScreenshotMenuItem.setVisible(false);
                } else {
                    this.attachScreenshotMenuItem.setVisible(canAttachScreenshot(hsMessagesFragment.getContext()));
                }
                this.doneMenuItem.setVisible(false);
            }
        }
    }

    private void restoreHSAddIssueFragmentMenu() {
        boolean z = true;
        setRetainSearchFragmentState(true);
        setSearchMenuVisible(false);
        setContactUsMenuVisible(false);
        ConversationFlowFragment conversationFlowFragment = FragmentUtil.getConversationFlowFragment(getChildFragmentManager());
        if (conversationFlowFragment != null) {
            HSAddIssueFragment hsAddIssueFragment = FragmentUtil.getHsAddIssueFragment(conversationFlowFragment.getRetainedChildFragmentManager());
            if (hsAddIssueFragment != null) {
                this.startNewConversationMenuItem.setVisible(hsAddIssueFragment.isShowStartNewConversationMenu());
                if (this.storage.getEnableFullPrivacy().booleanValue()) {
                    this.attachScreenshotMenuItem.setVisible(false);
                } else {
                    MenuItem menuItem = this.attachScreenshotMenuItem;
                    if (!(canAttachScreenshot(hsAddIssueFragment.getContext()) && hsAddIssueFragment.isShowAttachScreenshotMenu())) {
                        z = false;
                    }
                    menuItem.setVisible(z);
                }
                this.doneMenuItem.setVisible(false);
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean canAttachScreenshot(Context context) {
        int apiVersion = ApplicationUtil.getDeviceApiVersion();
        return apiVersion < 19 || apiVersion >= 23 || ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }

    private void showQuestionListFragmentMenu() {
        setSearchMenuVisible(this.faqLoaded);
        setContactUsMenuVisible(ContactUsFilter.showContactUs(LOCATION.ACTION_BAR));
    }

    private void showSectionPagerFragmentMenu() {
        setSearchMenuVisible(true);
        setContactUsMenuVisible(ContactUsFilter.showContactUs(LOCATION.ACTION_BAR));
    }

    private void showSingleQuestionFragmentMenu() {
        if (!isScreenLarge()) {
            setRetainSearchFragmentState(true);
            setSearchMenuVisible(false);
        }
        setContactUsMenuVisible(ContactUsFilter.showContactUs(LOCATION.QUESTION_ACTION_BAR));
    }

    private void setRetainSearchFragmentState(boolean retainSearchFragmentState) {
        FaqFlowFragment faqFlowFragment = FragmentUtil.getFaqFlowFragment(getRetainedChildFragmentManager());
        if (faqFlowFragment != null) {
            faqFlowFragment.getFaqFlowController().setRetainSearchFragmentState(retainSearchFragmentState);
        }
    }

    private void restoreSearchMenuItem() {
        FaqFlowFragment faqFlowFragment = FragmentUtil.getFaqFlowFragment(getRetainedChildFragmentManager());
        if (faqFlowFragment != null) {
            SearchFragment searchFragment = FragmentUtil.getSearchFragment(faqFlowFragment.getRetainedChildFragmentManager());
            if (searchFragment != null) {
                setSearchMenuQuery(searchFragment.getCurrentQuery());
            }
        }
        setContactUsMenuVisible(ContactUsFilter.showContactUs(LOCATION.ACTION_BAR));
        setRetainSearchFragmentState(false);
    }

    private void showFaqFragmentMenu() {
        setSearchMenuVisible(this.faqLoaded);
        setContactUsMenuVisible(ContactUsFilter.showContactUs(LOCATION.ACTION_BAR));
    }

    public void setContactUsMenuVisible(boolean visible) {
        if (MenuItemCompat.isActionViewExpanded(this.searchMenuItem)) {
            this.contactUsMenuItem.setVisible(false);
        } else {
            this.contactUsMenuItem.setVisible(visible);
        }
        updateBadgeIcon();
    }

    public void setSearchMenuVisible(boolean visible) {
        if (MenuItemCompat.isActionViewExpanded(this.searchMenuItem)) {
            MenuItemCompat.collapseActionView(this.searchMenuItem);
        }
        this.searchMenuItem.setVisible(visible);
    }

    public void setSearchMenuQuery(String query) {
        if (!MenuItemCompat.isActionViewExpanded(this.searchMenuItem)) {
            MenuItemCompat.expandActionView(this.searchMenuItem);
        }
        if (!TextUtils.isEmpty(query)) {
            this.searchView.setQuery(query, false);
        }
    }

    public void setNewMessagesCount(int count) {
        this.newMessageCount = count;
        updateBadgeIcon();
    }

    private void updateBadgeIcon() {
        if (this.contactUsMenuItem != null && this.contactUsMenuItem.isVisible()) {
            View actionView = MenuItemCompat.getActionView(this.contactUsMenuItem);
            if (actionView != null) {
                TextView badge = (TextView) actionView.findViewById(R.id.hs__notification_badge);
                View padding = actionView.findViewById(R.id.hs__notification_badge_padding);
                if (this.newMessageCount != 0) {
                    badge.setText(String.valueOf(this.newMessageCount));
                    padding.setVisibility(8);
                    badge.setVisibility(0);
                    return;
                }
                badge.setVisibility(8);
                padding.setVisibility(0);
            }
        }
    }

    public void resetNewMessageCount() {
        this.newMessageCount = 0;
    }

    public void updateFaqLoadingUI(int state) {
        this.viewNoFaqs.setVisibility(8);
        this.viewFaqsLoading.setVisibility(8);
        this.viewFaqsLoadError.setVisibility(8);
        switch (state) {
            case Base64.NO_OPTIONS /*0*/:
                this.viewFaqsLoading.setVisibility(0);
                return;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                this.viewNoFaqs.setVisibility(0);
                return;
            case MessageRecipientMode.TO_ZONE /*3*/:
                this.viewFaqsLoadError.setVisibility(0);
                return;
            default:
                return;
        }
    }

    public void onStart() {
        super.onStart();
        if (!isChangingConfigurations()) {
            HSActivityUtil.sessionBeginning();
            if (getArguments().getInt(SUPPORT_MODE, 0) == 0) {
                HSFunnel.pushEvent(GoOnlineRequest.KEY_ONLINE);
            } else {
                HSFunnel.pushEvent(KickUserRequest.KEY_DELAY);
            }
            Delegate delegate = SupportInternal.getDelegate();
            if (delegate != null) {
                delegate.sessionBegan();
            }
        }
        isForeground = true;
    }

    public void onResume() {
        super.onResume();
        this.supportController.start();
        setToolbarTitle(getString(R.string.hs__help_header));
        showToolbarElevation(true);
    }

    public void onStop() {
        super.onStop();
        if (!isChangingConfigurations()) {
            HSActivityUtil.sessionEnding();
            HSFunnel.pushEvent(SetUserPositionRequest.KEY_PLUS_ITEM_LIST);
            isForeground = false;
            this.data.reportActionEvents();
            Delegate delegate = SupportInternal.getDelegate();
            if (delegate != null) {
                delegate.sessionEnded();
            }
        }
    }

    public boolean onBackPressed() {
        List<Fragment> fragments = getRetainedChildFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && fragment.isVisible()) {
                    if ((fragment instanceof FaqFlowFragment) || (fragment instanceof ConversationFlowFragment)) {
                        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
                        if (childFragmentManager.getBackStackEntryCount() > 0) {
                            childFragmentManager.popBackStack();
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        List<Fragment> fragments = getRetainedChildFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && fragment.isVisible() && (fragment instanceof ConversationFlowFragment)) {
                    fragment.onRequestPermissionsResult(requestCode, permissions, grantResults);
                    return;
                }
            }
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        List<Fragment> fragments = getRetainedChildFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && fragment.isVisible() && (fragment instanceof ConversationFlowFragment)) {
                    fragment.onActivityResult(requestCode, resultCode, data);
                    return;
                }
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public void onClick(View v) {
        if (v.getId() == R.id.button_retry) {
            FaqFlowFragment faqFlowFragment = FragmentUtil.getFaqFlowFragment(getRetainedChildFragmentManager());
            if (faqFlowFragment != null) {
                faqFlowFragment.retryGetSections();
            }
        }
    }

    public static boolean isForeground() {
        return isForeground;
    }
}
