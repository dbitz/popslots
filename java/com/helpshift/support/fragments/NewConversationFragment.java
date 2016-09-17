package com.helpshift.support.fragments;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import com.helpshift.R;
import com.helpshift.exceptions.IdentityException;
import com.helpshift.support.Faq;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.HSSearch.HS_SEARCH_OPTIONS;
import com.helpshift.support.HSStorage;
import com.helpshift.support.Support;
import com.helpshift.support.Support.Delegate;
import com.helpshift.support.SupportInternal;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.contracts.NewConversationListener;
import com.helpshift.support.model.Form;
import com.helpshift.support.res.values.HSConfig;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.support.util.AttachmentUtil;
import com.helpshift.support.util.IdentityFilter;
import com.helpshift.support.util.SnackbarUtil;
import com.helpshift.support.viewstructs.HSMsg;
import com.helpshift.util.HSPattern;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class NewConversationFragment extends MainFragment implements OnClickListener {
    private static final String TAG = NewConversationFragment.class.getSimpleName();
    private CreateIssueFailureHandler createIssueFailureHandler;
    private CreateIssueSuccessHandler createIssueSuccessHandler;
    private HSApiData data;
    private EditText descriptionField;
    private EditText emailField;
    private GetIssuesSuccessHandler getIssuesSuccessHandler;
    private GetLatestIssuesSuccessHandler getLatestIssuesSuccessHandler;
    private NewConversationListener newConversationListener;
    private ProfileExistsHandler profileExistsHandler;
    private ImageView screenshotImageView;
    private String screenshotPath;
    private HSStorage storage;
    private EditText usernameField;
    private Form validatedForm;

    private static class CreateIssueFailureHandler extends Handler {
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;

        public CreateIssueFailureHandler(NewConversationFragment fragment) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                newConversationFragment.setIsReportingIssue(false);
                Integer status = (Integer) msg.obj.get(IssueColumns.STATUS);
                if (!newConversationFragment.isDetached()) {
                    SnackbarUtil.showErrorSnackbar(status.intValue(), newConversationFragment.getView());
                }
            }
        }
    }

    private static class CreateIssueSuccessHandler extends Handler {
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;

        public CreateIssueSuccessHandler(NewConversationFragment fragment) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                Form validatedForm = newConversationFragment.validatedForm;
                HSApiData data = newConversationFragment.data;
                HSStorage storage = newConversationFragment.storage;
                try {
                    JSONObject issue = (JSONObject) msg.obj.get("response");
                    JSONArray issues = new JSONArray();
                    issues.put(issue);
                    storage.setIssuesTs(issue.getString(MessageColumns.CREATED_AT), data.getProfileId());
                    storage.storeIssues(issues, data.getProfileId());
                    data.setUsername(validatedForm.getUsername());
                    data.setEmail(validatedForm.getEmail());
                    storage.storeReply("", data.getProfileId());
                    storage.storeConversationDetail("", data.getLoginId());
                    newConversationFragment.descriptionField.setText("");
                    HSFunnel.pushEvent(SetUserPositionRequest.KEY_PLUS_USER_LIST);
                    newConversationFragment.uploadScreenshot(issue.getString(LoginRequest.KEY_ID));
                    data.startInAppService();
                    Delegate supportDelegate = Support.getDelegate();
                    if (supportDelegate != null) {
                        supportDelegate.newConversationStarted(validatedForm.getDescription());
                    }
                } catch (JSONException e) {
                    Log.d(NewConversationFragment.TAG, e.toString(), e);
                }
            }
        }
    }

    private static class GetIssuesSuccessHandler extends Handler {
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;

        public GetIssuesSuccessHandler(NewConversationFragment fragment) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                newConversationFragment.startNewConversation();
            }
        }
    }

    private static class GetLatestIssuesSuccessHandler extends Handler {
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;

        public GetLatestIssuesSuccessHandler(NewConversationFragment fragment) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                newConversationFragment.clearScreenshot();
                newConversationFragment.handleExit();
            }
        }
    }

    private static class ProfileExistsHandler extends Handler {
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;

        public ProfileExistsHandler(NewConversationFragment fragment) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                HSApiData data = newConversationFragment.data;
                GetIssuesSuccessHandler getIssuesSuccessHandler = newConversationFragment.getIssuesSuccessHandler;
                CreateIssueFailureHandler createIssueFailureHandler = newConversationFragment.createIssueFailureHandler;
                try {
                    data.setProfileId(((JSONObject) msg.obj.get("response")).get(LoginRequest.KEY_ID).toString());
                    data.getIssues(getIssuesSuccessHandler, createIssueFailureHandler);
                    data.updateUAToken();
                } catch (JSONException e) {
                    Log.d(NewConversationFragment.TAG, "ProfileExistsHandler", e);
                }
            }
        }
    }

    private static class ScreenshotUploadFailureHandler extends Handler {
        private final HSMsg msgData;
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;

        public ScreenshotUploadFailureHandler(NewConversationFragment fragment, HSMsg msgData) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
            this.msgData = msgData;
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                com.helpshift.support.model.Message.setInProgress(this.msgData.id, false);
                newConversationFragment.clearScreenshot();
                newConversationFragment.handleExit();
            }
        }
    }

    private static class ScreenshotUploadSuccessHandler extends Handler {
        private final String issueId;
        private final WeakReference<NewConversationFragment> newConversationFragmentWeakReference;
        private final String screenshotPath;

        public ScreenshotUploadSuccessHandler(NewConversationFragment fragment, String issueId, String screenshotPath) {
            this.newConversationFragmentWeakReference = new WeakReference(fragment);
            this.issueId = issueId;
            this.screenshotPath = screenshotPath;
        }

        public void handleMessage(Message msg) {
            NewConversationFragment newConversationFragment = (NewConversationFragment) this.newConversationFragmentWeakReference.get();
            if (newConversationFragment != null) {
                HSApiData data = newConversationFragment.data;
                GetLatestIssuesSuccessHandler getLatestIssuesSuccessHandler = newConversationFragment.getLatestIssuesSuccessHandler;
                JSONObject message = (JSONObject) msg.obj.get("response");
                try {
                    JSONObject eventData = new JSONObject();
                    eventData.put(MessageColumns.TYPE, Values.URL);
                    eventData.put(MessageColumns.BODY, message.getJSONObject(MessageColumns.META).getJSONArray("attachments").getJSONObject(0).getString(Values.URL));
                    eventData.put(LoginRequest.KEY_ID, this.issueId);
                    HSFunnel.pushEvent(SetUserPositionRequest.KEY_MINUS_USER_LIST, eventData);
                    Delegate supportDelegate = Support.getDelegate();
                    if (supportDelegate != null) {
                        supportDelegate.userRepliedToConversation(SupportInternal.UserSentScreenShot);
                    }
                    AttachmentUtil.copyAttachment(newConversationFragment.getActivity(), data, this.screenshotPath, message.getJSONObject(MessageColumns.META).getString("refers"), 0);
                } catch (IOException e) {
                    Log.d(NewConversationFragment.TAG, "ScreenshotUploadSuccessHandler - IOException", e);
                } catch (JSONException e2) {
                    Log.d(NewConversationFragment.TAG, "ScreenshotUploadSuccessHandler - JSONException", e2);
                }
                try {
                    String refers = message.getJSONObject(MessageColumns.META).getString("refers");
                    if (!TextUtils.isEmpty(refers)) {
                        IssuesDataSource.deleteMessage(refers);
                    }
                    data.getLatestIssues(getLatestIssuesSuccessHandler, getLatestIssuesSuccessHandler);
                } catch (JSONException e22) {
                    Log.d(NewConversationFragment.TAG, "uploadSuccessHandler", e22);
                }
            }
        }
    }

    public static NewConversationFragment newInstance(Bundle bundle, NewConversationListener listener) {
        NewConversationFragment newConversationFragment = new NewConversationFragment();
        newConversationFragment.setArguments(bundle);
        newConversationFragment.newConversationListener = listener;
        return newConversationFragment;
    }

    public void setScreenshotPath(String screenshotPath) {
        this.screenshotPath = screenshotPath;
        setScreenshotInImageView();
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.data = new HSApiData(context);
        this.storage = this.data.storage;
        this.data.loadIndex();
        this.createIssueSuccessHandler = new CreateIssueSuccessHandler(this);
        this.profileExistsHandler = new ProfileExistsHandler(this);
        this.getIssuesSuccessHandler = new GetIssuesSuccessHandler(this);
        this.createIssueFailureHandler = new CreateIssueFailureHandler(this);
        this.getLatestIssuesSuccessHandler = new GetLatestIssuesSuccessHandler(this);
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__new_conversation_frag, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState == null) {
            this.descriptionField = (EditText) view.findViewById(R.id.conversation_detail);
            this.usernameField = (EditText) view.findViewById(R.id.username);
            this.emailField = (EditText) view.findViewById(R.id.email);
            this.screenshotImageView = (ImageView) view.findViewById(R.id.screenshot);
            this.screenshotImageView.setOnClickListener(this);
        }
    }

    public void onResume() {
        super.onResume();
        setScreenshotInImageView();
    }

    public void setScreenshotInImageView() {
        if (!isResumed()) {
            return;
        }
        if (TextUtils.isEmpty(this.screenshotPath)) {
            this.screenshotImageView.setImageDrawable(null);
            return;
        }
        File screenshotFile = new File(this.screenshotPath);
        if (screenshotFile.exists()) {
            this.screenshotImageView.setImageURI(Uri.fromFile(screenshotFile));
        }
    }

    public void checkAndStartNewConversation() {
        Form form = validateForm();
        if (form.isFormValid()) {
            this.validatedForm = form;
            if (isSearchOnNewConversationEnabled()) {
                ArrayList<Faq> questions = getSearchResults(this.validatedForm.getDescription());
                if (questions.size() > 0) {
                    this.newConversationListener.showSearchResultFragment(questions);
                    return;
                }
                return;
            }
            startNewConversation();
        }
    }

    private static HashMap getUserInfo(Form form, HSStorage storage) {
        HashMap<String, String> data = null;
        if (IdentityFilter.sendNameEmail(storage)) {
            data = new HashMap();
            data.put(ProfilesDBHelper.COLUMN_NAME, form.getUsername());
            String email = form.getEmail();
            if (!TextUtils.isEmpty(email)) {
                data.put(ProfilesDBHelper.COLUMN_EMAIL, email);
            }
        }
        return data;
    }

    private void clearScreenshot() {
        this.screenshotPath = null;
        this.storage.setConversationScreenshot("", this.data.getLoginId());
        setScreenshotInImageView();
    }

    private void handleExit() {
        setIsReportingIssue(false);
        boolean dia = ((Boolean) HSConfig.configData.get("dia")).booleanValue();
        if (!getArguments().getBoolean("showConvOnReportIssue", false) || dia) {
            this.newConversationListener.exitSdkSession();
        } else {
            this.newConversationListener.showConversationOnReportIssue();
        }
    }

    public void startNewConversation() {
        try {
            setIsReportingIssue(true);
            this.data.createIssue(this.createIssueSuccessHandler, this.createIssueFailureHandler, this.validatedForm.getDescription(), getUserInfo(this.validatedForm, this.storage));
        } catch (IdentityException e) {
            this.data.registerProfile(this.profileExistsHandler, this.createIssueFailureHandler, this.validatedForm.getUsername(), this.validatedForm.getEmail(), this.data.getLoginId());
        }
    }

    private void uploadScreenshot(String issueId) {
        if (TextUtils.isEmpty(this.screenshotPath)) {
            handleExit();
            return;
        }
        this.storage.setForegroundIssue(issueId);
        HSMsg msgData = AttachmentUtil.addAndGetLocalRscMsg(this.storage, issueId, this.screenshotPath, true);
        this.data.client.addScMessage(new ScreenshotUploadSuccessHandler(this, issueId, this.screenshotPath), new ScreenshotUploadFailureHandler(this, msgData), this.data.getProfileId(), issueId, "", "sc", msgData.id, msgData.screenshot);
    }

    public void onClick(View view) {
        if (view.getId() == R.id.screenshot && !TextUtils.isEmpty(this.screenshotPath)) {
            this.newConversationListener.startScreenshotPreviewFragment(this.screenshotPath, 2);
        }
    }

    private void setIsReportingIssue(boolean isReportingIssue) {
    }

    private boolean isSearchOnNewConversationEnabled() {
        boolean searchPerformed = true;
        Bundle bundle = getArguments();
        if (bundle != null) {
            searchPerformed = bundle.getBoolean(HSConsts.SEARCH_PERFORMED, true);
        }
        if (searchPerformed || !this.storage.getShowSearchOnNewConversation().booleanValue()) {
            return false;
        }
        return true;
    }

    private ArrayList<Faq> getSearchResults(String issueText) {
        return this.data.localFaqSearch(issueText, HS_SEARCH_OPTIONS.KEYWORD_SEARCH);
    }

    private Form validateForm() {
        String username;
        String email;
        boolean isFormValid = true;
        boolean requireEmail = IdentityFilter.requireEmailFromUI(this.data.storage);
        boolean isNameEmailFormShown = IdentityFilter.showNameEmailForm(this.data);
        String issueText = this.descriptionField.getText().toString();
        if (isNameEmailFormShown) {
            username = this.usernameField.getText().toString();
            email = this.emailField.getText().toString();
        } else {
            username = this.data.getUsername();
            email = this.data.getEmail();
        }
        if (issueText.trim().length() == 0) {
            this.descriptionField.setError(getString(R.string.hs__conversation_detail_error));
            isFormValid = false;
        } else {
            Resources resources = getResources();
            if (issueText.replaceAll("\\s+", "").length() < resources.getInteger(R.integer.hs__issue_description_min_chars)) {
                this.descriptionField.setError(resources.getString(R.string.hs__description_invalid_length_error));
                isFormValid = false;
            } else if (HSPattern.checkSpecialCharacters(issueText)) {
                this.descriptionField.setError(getString(R.string.hs__invalid_description_error));
                isFormValid = false;
            }
        }
        if ((isNameEmailFormShown && username.trim().length() == 0) || HSPattern.checkSpecialCharacters(username)) {
            this.usernameField.setError(getString(R.string.hs__username_blank_error));
            isFormValid = false;
        }
        if (requireEmail && TextUtils.isEmpty(email) && !HSPattern.checkEmail(email)) {
            this.emailField.setError(getString(R.string.hs__invalid_email_error));
            isFormValid = false;
        } else if (!(TextUtils.isEmpty(email) || HSPattern.checkEmail(email))) {
            this.emailField.setError(getString(R.string.hs__invalid_email_error));
            isFormValid = false;
        }
        return new Form(issueText, username, email, isFormValid);
    }
}
