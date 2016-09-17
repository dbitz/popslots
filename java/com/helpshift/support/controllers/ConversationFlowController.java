package com.helpshift.support.controllers;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.helpshift.R;
import com.helpshift.support.Faq;
import com.helpshift.support.HSAddIssueFragment;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.HSMessagesFragment;
import com.helpshift.support.HSStorage;
import com.helpshift.support.activities.ParentActivity;
import com.helpshift.support.contracts.ConversationFlowView;
import com.helpshift.support.contracts.HSMessagesListener;
import com.helpshift.support.contracts.NewConversationListener;
import com.helpshift.support.contracts.ScreenshotPreviewListener;
import com.helpshift.support.contracts.SearchResultListener;
import com.helpshift.support.fragments.ConversationFlowFragment;
import com.helpshift.support.fragments.ScreenshotPreviewFragment;
import com.helpshift.support.fragments.SearchResultFragment;
import com.helpshift.support.fragments.SingleQuestionFragment;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.util.FragmentUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;

public class ConversationFlowController implements OnMenuItemClickListener, HSMessagesListener, NewConversationListener, ScreenshotPreviewListener, SearchResultListener {
    private static final String TAG = ConversationFlowController.class.getSimpleName();
    private final Bundle bundle;
    private final ConversationFlowView conversationFlowView;
    private final HSApiData data;
    private final FragmentManager fragmentManager;
    private boolean isControllerStarted;
    private String pendingScreenshotPath;
    private int pickImageMessagePosition;
    private int screenshotPreviewFragmentMode;
    private final HSStorage storage;

    public ConversationFlowController(ConversationFlowView conversationFlowView, FragmentManager fragmentManager, Bundle bundle, HSApiData data) {
        this.conversationFlowView = conversationFlowView;
        this.fragmentManager = fragmentManager;
        this.bundle = bundle;
        this.data = data;
        this.storage = data.storage;
    }

    public void start() {
        if (!this.isControllerStarted) {
            showFragment();
        }
        this.isControllerStarted = true;
        if (!TextUtils.isEmpty(this.pendingScreenshotPath)) {
            startScreenshotPreviewFragment(this.pendingScreenshotPath, this.screenshotPreviewFragmentMode);
            setPendingScreenshotPath(null);
        }
    }

    private void showFragment() {
        String activeConversation = this.storage.getActiveConversation(this.data.getProfileId());
        String archivedConversation = this.storage.getArchivedConversation(this.data.getProfileId());
        if (!TextUtils.isEmpty(archivedConversation)) {
            this.bundle.putString("issueId", archivedConversation);
            showMessagesFragment();
        } else if (TextUtils.isEmpty(activeConversation)) {
            showHsAddIssueFragment();
        } else {
            this.bundle.putString("issueId", activeConversation);
            showMessagesFragment();
        }
    }

    private void showMessagesFragment() {
        this.screenshotPreviewFragmentMode = 3;
        FragmentUtil.startFragmentWithoutBackStack(this.fragmentManager, R.id.conversation_fragment_container, HSMessagesFragment.newInstance(this.bundle), null, this, true);
    }

    private void showHsAddIssueFragment() {
        this.screenshotPreviewFragmentMode = 1;
        FragmentUtil.startFragmentWithoutBackStack(this.fragmentManager, R.id.conversation_fragment_container, HSAddIssueFragment.newInstance(this.bundle, this), null, this, true);
    }

    public void setPendingScreenshotPath(String screenshotPath) {
        this.pendingScreenshotPath = screenshotPath;
    }

    public void startScreenshotPreviewFragment(String screenshotPath, int mode) {
        ScreenshotPreviewFragment screenshotPreviewFragment = FragmentUtil.getScreenshotPreviewFragment(this.fragmentManager);
        if (screenshotPreviewFragment == null) {
            screenshotPreviewFragment = ScreenshotPreviewFragment.newInstance(this.bundle, this, mode);
            FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.conversation_fragment_container, screenshotPreviewFragment, null, false);
        }
        screenshotPreviewFragment.setScreenshotPath(screenshotPath);
    }

    public boolean onMenuItemClick(MenuItem menuItem) {
        int menuItemId = menuItem.getItemId();
        if (menuItemId == R.id.hs__attach_screenshot) {
            this.pickImageMessagePosition = 0;
            this.conversationFlowView.pickImage();
            return true;
        } else if (menuItemId == R.id.hs__start_new_conversation) {
            HSAddIssueFragment hsAddIssueFragment = FragmentUtil.getHsAddIssueFragment(this.fragmentManager);
            if (hsAddIssueFragment == null) {
                return false;
            }
            hsAddIssueFragment.checkAndStartNewConversation();
            return false;
        } else if (menuItemId != R.id.hs__action_done) {
            return false;
        } else {
            actionDone();
            return false;
        }
    }

    public void actionDone() {
        sendTicketAvoidedEvent();
        this.storage.storeConversationDetail("", this.data.getLoginId());
        this.storage.setConversationScreenshot("", this.data.getLoginId());
        SupportController supportController = this.conversationFlowView.getSupportFragment().getSupportController();
        if (supportController.getSupportMode() == 1) {
            exitSdkSession();
        } else {
            FragmentUtil.popBackStackImmediate(supportController.getFragmentManager(), ConversationFlowFragment.class.getSimpleName());
        }
    }

    private void sendTicketAvoidedEvent() {
        SingleQuestionFragment singleQuestionFragment = FragmentUtil.getSingleQuestionFragment(this.fragmentManager);
        if (singleQuestionFragment != null) {
            String questionId = singleQuestionFragment.getQuestionId();
            if (!TextUtils.isEmpty(questionId)) {
                JSONObject eventData = new JSONObject();
                try {
                    eventData.put(LoginRequest.KEY_ID, questionId);
                    eventData.put("str", this.storage.getConversationDetail(this.data.getLoginId()));
                    HSFunnel.pushEvent(HSFunnel.TICKET_AVOIDED, eventData);
                } catch (JSONException e) {
                    Log.d(TAG, "sendTicketAvoidedEvent : ", e);
                }
            }
        }
    }

    public void add(String screenshotPath) {
        FragmentUtil.popBackStack(this.fragmentManager, ScreenshotPreviewFragment.class.getSimpleName());
        HSAddIssueFragment hsAddIssueFragment = FragmentUtil.getHsAddIssueFragment(this.fragmentManager);
        if (hsAddIssueFragment != null) {
            hsAddIssueFragment.setScreenshot(screenshotPath);
        }
    }

    public void send(String screenshotPath) {
        FragmentUtil.popBackStackImmediate(this.fragmentManager, ScreenshotPreviewFragment.class.getSimpleName());
        HSMessagesFragment hsMessagesFragment = FragmentUtil.getHsMessagesFragment(this.fragmentManager);
        if (hsMessagesFragment != null) {
            hsMessagesFragment.sendScreenshot(screenshotPath, this.pickImageMessagePosition);
        }
    }

    public void remove() {
        FragmentUtil.popBackStack(this.fragmentManager, ScreenshotPreviewFragment.class.getSimpleName());
        HSAddIssueFragment hsAddIssueFragment = FragmentUtil.getHsAddIssueFragment(this.fragmentManager);
        if (hsAddIssueFragment != null) {
            hsAddIssueFragment.clearScreenshot();
        }
    }

    public void change() {
        this.conversationFlowView.pickImage();
    }

    public void showSearchResultFragment(ArrayList<Faq> questions) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("results", questions);
        FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.conversation_fragment_container, SearchResultFragment.newInstance(bundle, this), null, false);
    }

    public void showConversationOnReportIssue() {
        FragmentUtil.removeHsAddIssueFragmentImmediate(this.fragmentManager);
        showFragment();
    }

    public void exitSdkSession() {
        SupportFragment supportFragment = this.conversationFlowView.getSupportFragment();
        if (supportFragment.getActivity() instanceof ParentActivity) {
            supportFragment.getActivity().finish();
        } else {
            FragmentUtil.removeFragment(supportFragment.getActivity().getSupportFragmentManager(), supportFragment);
        }
    }

    public void clear() {
        refreshMenu();
    }

    public void reportingIssue() {
        refreshMenu();
    }

    public void onQuestionSelected(String questionPublishId, ArrayList<String> searchTerms) {
        Bundle bundle = new Bundle();
        bundle.putString("questionPublishId", questionPublishId);
        if (searchTerms != null) {
            bundle.putStringArrayList("searchTerms", searchTerms);
        }
        FragmentUtil.startFragmentWithBackStack(this.fragmentManager, R.id.conversation_fragment_container, SingleQuestionFragment.newInstance(bundle, 2), null, false);
    }

    public void sendAnyway() {
        HSFunnel.pushEvent(HSFunnel.TICKET_AVOIDANCE_FAILED);
        FragmentUtil.popBackStackImmediate(this.fragmentManager, SearchResultFragment.class.getSimpleName());
        HSAddIssueFragment hsAddIssueFragment = FragmentUtil.getHsAddIssueFragment(this.fragmentManager);
        if (hsAddIssueFragment != null) {
            hsAddIssueFragment.startNewConversation();
        }
    }

    public void pickImage(int position) {
        this.pickImageMessagePosition = position;
        this.conversationFlowView.pickImage();
    }

    public void startNewConversation() {
        showFragment();
    }

    public void showResolutionRequest() {
        refreshMenu();
    }

    public void rejectResolution() {
        refreshMenu();
    }

    public void acceptResolution() {
        refreshMenu();
    }

    public void reloadMenu() {
        refreshMenu();
    }

    public void refreshMenu() {
        this.conversationFlowView.getSupportFragment().refreshMenu();
    }
}
