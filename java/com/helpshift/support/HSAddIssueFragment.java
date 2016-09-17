package com.helpshift.support;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.CardView;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.exceptions.IdentityException;
import com.helpshift.support.D.id;
import com.helpshift.support.D.layout;
import com.helpshift.support.D.string;
import com.helpshift.support.HSSearch.HS_SEARCH_OPTIONS;
import com.helpshift.support.SupportInternal.Delegate;
import com.helpshift.support.constants.GetSectionsCallBackStatus;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.contracts.NewConversationListener;
import com.helpshift.support.fragments.MainFragment;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.res.values.HSConfig;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.support.util.AttachmentUtil;
import com.helpshift.support.util.HSTransliterator;
import com.helpshift.support.util.IdentityFilter;
import com.helpshift.support.util.InputUtil;
import com.helpshift.support.util.Meta;
import com.helpshift.support.util.SnackbarUtil;
import com.helpshift.support.viewstructs.HSMsg;
import com.helpshift.util.HSPattern;
import com.helpshift.util.HelpshiftContext;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.mmo.SetMMOItemVariables;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.BuddyOnlineState;

public class HSAddIssueFragment extends MainFragment {
    public static final String TAG = "HelpShiftDebug";
    private ImageButton clearBtn;
    private TextView desc;
    private String email;
    private EditText emailField;
    public Handler existsHandler = new Handler() {
        public void handleMessage(Message msg) {
            try {
                HSAddIssueFragment.this.hsApiData.setProfileId(((JSONObject) msg.obj.get("response")).get(LoginRequest.KEY_ID).toString());
                HSAddIssueFragment.this.hsApiData.getIssues(new Handler() {
                    public void handleMessage(Message msg) {
                        try {
                            HSAddIssueFragment.this.hsApiData.createIssue(HSAddIssueFragment.this.reportHandler, HSAddIssueFragment.this.failureHandler, HSAddIssueFragment.this.getIssueText(), HSAddIssueFragment.this.getUserInfo());
                        } catch (IdentityException e) {
                            Log.d(HSAddIssueFragment.TAG, "Something really foul has happened", e);
                        }
                    }
                }, HSAddIssueFragment.this.failureHandler);
                HSAddIssueFragment.this.hsApiData.updateUAToken();
            } catch (JSONException e) {
                Log.d(HSAddIssueFragment.TAG, e.getMessage(), e);
            }
        }
    };
    private Bundle extras;
    private Handler failureHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Integer status = (Integer) msg.obj.get(IssueColumns.STATUS);
            if (!HSAddIssueFragment.this.isDetached()) {
                SnackbarUtil.showErrorSnackbar(status.intValue(), HSAddIssueFragment.this.getView());
            }
            HSAddIssueFragment.this.setIsReportingIssue(false);
        }
    };
    private Handler getLatestIssuesHandler = new Handler() {
        public void handleMessage(Message msg) {
            HSAddIssueFragment.this.clearScreenshot();
            HSAddIssueFragment.this.handleExit();
        }
    };
    private Delegate helpshiftDelegate;
    private HSApiClient hsApiClient;
    private HSApiData hsApiData;
    private HSStorage hsStorage;
    private boolean isChangingConfiguration = false;
    private String issueId;
    private HSMsg msgData;
    private NewConversationListener newConversationListener;
    private ProgressBar progressBar;
    public Handler reportHandler = new Handler() {
        public void handleMessage(Message msg) {
            try {
                JSONObject issue = (JSONObject) msg.obj.get("response");
                HSAddIssueFragment.this.issueId = issue.getString(LoginRequest.KEY_ID);
                JSONArray issues = new JSONArray();
                issues.put(issue);
                HSAddIssueFragment.this.hsStorage.setIssuesTs(issue.getString(MessageColumns.CREATED_AT), HSAddIssueFragment.this.hsApiData.getProfileId());
                HSAddIssueFragment.this.hsStorage.storeIssues(issues, HSAddIssueFragment.this.hsApiData.getProfileId());
                HSAddIssueFragment.this.hsApiData.setUsername(HSAddIssueFragment.this.userName);
                HSAddIssueFragment.this.hsApiData.setEmail(HSAddIssueFragment.this.email);
                HSAddIssueFragment.this.hsStorage.storeReply("", HSAddIssueFragment.this.hsApiData.getProfileId());
                HSAddIssueFragment.this.hsStorage.storeConversationDetail("", HSAddIssueFragment.this.hsApiData.getLoginId());
                String newConversationMessage = HSAddIssueFragment.this.desc.getText().toString().trim();
                HSAddIssueFragment.this.desc.setText("");
                HSFunnel.pushEvent(SetUserPositionRequest.KEY_PLUS_USER_LIST);
                if (TextUtils.isEmpty(HSAddIssueFragment.this.screenshotPath)) {
                    HSAddIssueFragment.this.handleExit();
                } else {
                    HSAddIssueFragment.this.hsStorage.setForegroundIssue(HSAddIssueFragment.this.issueId);
                    HSAddIssueFragment.this.msgData = AttachmentUtil.addAndGetLocalRscMsg(HSAddIssueFragment.this.hsStorage, HSAddIssueFragment.this.issueId, HSAddIssueFragment.this.screenshotPath, true);
                    HSAddIssueFragment.this.hsApiClient.addScMessage(HSAddIssueFragment.this.uploadSuccessHandler, HSAddIssueFragment.this.uploadFailHandler, HSAddIssueFragment.this.hsApiData.getProfileId(), HSAddIssueFragment.this.issueId, "", "sc", HSAddIssueFragment.this.msgData.id, HSAddIssueFragment.this.msgData.screenshot);
                }
                HSAddIssueFragment.this.hsApiData.startInAppService();
                if (HSAddIssueFragment.this.helpshiftDelegate != null) {
                    HSAddIssueFragment.this.helpshiftDelegate.newConversationStarted(newConversationMessage);
                }
            } catch (JSONException e) {
                Log.d(HSAddIssueFragment.TAG, e.toString(), e);
            }
        }
    };
    private Boolean requireEmail;
    private ImageView screenshot;
    private CardView screenshotContainer;
    private TextView screenshotFileName;
    private TextView screenshotFileSize;
    private String screenshotPath;
    private boolean searchActivityShown = false;
    private boolean selectImage;
    private boolean selectingScreenshot = false;
    private boolean sendAnyway = false;
    private boolean showAttachScreenshotMenu = true;
    private boolean showStartNewConversationMenu = true;
    private Handler uploadFailHandler = new Handler() {
        public void handleMessage(Message msg) {
            com.helpshift.support.model.Message.setInProgress(HSAddIssueFragment.this.msgData.id, false);
            HSAddIssueFragment.this.clearScreenshot();
            HSAddIssueFragment.this.handleExit();
        }
    };
    private Handler uploadSuccessHandler = new Handler() {
        public void handleMessage(Message msg) {
            JSONObject message = (JSONObject) msg.obj.get("response");
            try {
                JSONObject eventData = new JSONObject();
                eventData.put(MessageColumns.TYPE, Values.URL);
                eventData.put(MessageColumns.BODY, message.getJSONObject(MessageColumns.META).getJSONArray("attachments").getJSONObject(0).getString(Values.URL));
                eventData.put(LoginRequest.KEY_ID, HSAddIssueFragment.this.issueId);
                HSFunnel.pushEvent(SetUserPositionRequest.KEY_MINUS_USER_LIST, eventData);
                if (HSAddIssueFragment.this.helpshiftDelegate != null) {
                    HSAddIssueFragment.this.helpshiftDelegate.userRepliedToConversation(SupportInternal.UserSentScreenShot);
                }
                AttachmentUtil.copyAttachment(HSAddIssueFragment.this.getContext(), HSAddIssueFragment.this.hsApiData, HSAddIssueFragment.this.screenshotPath, message.getJSONObject(MessageColumns.META).getString("refers"), 0);
            } catch (IOException e) {
                Log.d(HSAddIssueFragment.TAG, "Saving uploaded screenshot", e);
            } catch (JSONException e2) {
                Log.d(HSAddIssueFragment.TAG, "uploadSuccessHandler", e2);
            }
            try {
                String refers = message.getJSONObject(MessageColumns.META).getString("refers");
                if (!TextUtils.isEmpty(refers)) {
                    IssuesDataSource.deleteMessage(refers);
                }
                HSAddIssueFragment.this.hsApiData.getLatestIssues(HSAddIssueFragment.this.getLatestIssuesHandler, HSAddIssueFragment.this.getLatestIssuesHandler);
            } catch (JSONException e22) {
                Log.d(HSAddIssueFragment.TAG, "uploadSuccessHandler", e22);
            }
        }
    };
    private String userName;
    private EditText userNameField;

    public static HSAddIssueFragment newInstance(Bundle bundle, NewConversationListener listener) {
        HSAddIssueFragment hsAddIssueFragment = new HSAddIssueFragment();
        hsAddIssueFragment.setArguments(bundle);
        hsAddIssueFragment.newConversationListener = listener;
        return hsAddIssueFragment;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.hsApiData = new HSApiData(context);
        this.hsStorage = this.hsApiData.storage;
        this.hsApiClient = this.hsApiData.client;
    }

    public void checkAndStartNewConversation() {
        if (isFormValid()) {
            if (isSearchOnNewConversationEnabled()) {
                ArrayList<Faq> questions = getSearchResults(this.desc.getText().toString());
                if (questions.size() > 0) {
                    this.newConversationListener.showSearchResultFragment(questions);
                    return;
                }
            }
            startNewConversation();
        }
    }

    private ArrayList<Faq> getSearchResults(String issueText) {
        return this.hsApiData.localFaqSearch(issueText, HS_SEARCH_OPTIONS.KEYWORD_SEARCH);
    }

    private void handleExit() {
        if (isResumed()) {
            boolean dia = ((Boolean) HSConfig.configData.get("dia")).booleanValue();
            if (!getArguments().getBoolean("showConvOnReportIssue", false) || dia) {
                this.newConversationListener.exitSdkSession();
            } else {
                this.newConversationListener.showConversationOnReportIssue();
            }
        }
    }

    public void clearScreenshot() {
        this.screenshotContainer.setVisibility(8);
        this.screenshot.setVisibility(8);
        this.clearBtn.setVisibility(8);
        this.screenshotPath = "";
        this.hsStorage.setConversationScreenshot("", this.hsApiData.getLoginId());
        this.showAttachScreenshotMenu = true;
        this.newConversationListener.clear();
    }

    private String getIssueText() {
        return this.desc.getText().toString().trim();
    }

    private HashMap getUserInfo() {
        HashMap data = null;
        if (IdentityFilter.sendNameEmail(this.hsStorage)) {
            data = new HashMap();
            data.put(ProfilesDBHelper.COLUMN_NAME, this.userName);
            if (this.email.trim().length() > 0) {
                data.put(ProfilesDBHelper.COLUMN_EMAIL, this.email);
            }
        }
        return data;
    }

    public void onPause() {
        super.onPause();
        String prefillText = this.hsStorage.getConversationPrefillText();
        if (TextUtils.isEmpty(this.hsStorage.getActiveConversation(this.hsApiData.getProfileId())) && TextUtils.isEmpty(prefillText)) {
            this.hsStorage.storeConversationDetail(getIssueText(), this.hsApiData.getLoginId());
        } else if (!TextUtils.isEmpty(prefillText) && this.extras.getBoolean("dropMeta")) {
            Meta.setMetadataCallback(null);
        }
        saveScreenshot(this.screenshotPath);
        this.hsStorage.setForegroundIssue("");
        InputUtil.hideKeyboard(getContext(), this.desc);
        setIsReportingIssue(false);
    }

    public void onDestroy() {
        super.onDestroy();
        HelpshiftContext.setViewState(null);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.extras = getArguments();
        this.helpshiftDelegate = SupportInternal.getDelegate();
        if (isSearchOnNewConversationEnabled()) {
            this.hsApiData.getSections(new Handler() {
                public void handleMessage(Message msg) {
                    if (msg.what != GetSectionsCallBackStatus.API_SUCCESS_NO_NEW_DATA) {
                        HSAddIssueFragment.this.hsApiData.loadIndex();
                        HSTransliterator.init();
                    }
                }
            }, new Handler(), null);
        }
        this.requireEmail = Boolean.valueOf(IdentityFilter.requireEmailFromUI(this.hsStorage));
        this.searchActivityShown = false;
        return inflater.inflate(layout.hs__new_conversation_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.desc = (EditText) view.findViewById(id.hs__conversationDetail);
        this.desc.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable s) {
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
                HSAddIssueFragment.this.desc.setError(null);
            }
        });
        this.desc.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent event) {
                if (view.getId() == R.id.hs__conversationDetail) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    switch (event.getAction() & 255) {
                        case BuddyOnlineState.OFFLINE /*1*/:
                            view.getParent().requestDisallowInterceptTouchEvent(false);
                            break;
                    }
                }
                return false;
            }
        });
        this.userNameField = (EditText) view.findViewById(id.hs__username);
        this.userNameField.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable s) {
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
                HSAddIssueFragment.this.userNameField.setError(null);
            }
        });
        this.emailField = (EditText) view.findViewById(id.hs__email);
        this.emailField.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable s) {
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
                HSAddIssueFragment.this.emailField.setError(null);
            }
        });
        if (this.requireEmail.booleanValue()) {
            this.emailField.setHint(getString(string.hs__email_required_hint));
        }
        if (!IdentityFilter.sendNameEmail(this.hsStorage)) {
            this.userNameField.setText("Anonymous");
        }
        if (IdentityFilter.showNameEmailForm(this.hsApiData)) {
            this.userNameField.setText(this.hsApiData.getUsername());
            this.emailField.setText(this.hsApiData.getEmail());
        } else {
            this.userNameField.setVisibility(8);
            this.emailField.setVisibility(8);
        }
        getActivity().getWindow().setSoftInputMode(4);
        this.screenshotContainer = (CardView) view.findViewById(R.id.screenshot_view_container);
        this.screenshot = (ImageView) view.findViewById(id.hs__screenshot);
        this.screenshot.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                HSAddIssueFragment.this.newConversationListener.startScreenshotPreviewFragment(HSAddIssueFragment.this.screenshotPath, 2);
            }
        });
        this.screenshotFileName = (TextView) view.findViewById(R.id.attachment_file_name);
        this.screenshotFileSize = (TextView) view.findViewById(R.id.attachment_file_size);
        this.clearBtn = (ImageButton) view.findViewById(16908314);
        this.clearBtn.setVisibility(8);
        this.clearBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                HSAddIssueFragment.this.clearScreenshot();
            }
        });
        this.progressBar = (ProgressBar) view.findViewById(R.id.progress_bar);
    }

    private boolean isSearchOnNewConversationEnabled() {
        if (getArguments().getBoolean(HSConsts.SEARCH_PERFORMED, true) || !this.hsStorage.getShowSearchOnNewConversation().booleanValue()) {
            return false;
        }
        return true;
    }

    public void startNewConversation() {
        try {
            setIsReportingIssue(true);
            this.hsApiData.createIssue(this.reportHandler, this.failureHandler, getIssueText(), getUserInfo());
        } catch (IdentityException e) {
            this.hsApiData.registerProfile(this.existsHandler, this.failureHandler, this.userName, this.email, this.hsApiData.getLoginId());
        }
    }

    private void setIsReportingIssue(boolean isReportingIssue) {
        boolean z;
        this.showStartNewConversationMenu = !isReportingIssue;
        if (this.clearBtn != null) {
            ImageButton imageButton = this.clearBtn;
            if (isReportingIssue) {
                z = false;
            } else {
                z = true;
            }
            imageButton.setEnabled(z);
        }
        if (this.screenshot != null) {
            ImageView imageView = this.screenshot;
            if (isReportingIssue) {
                z = false;
            } else {
                z = true;
            }
            imageView.setEnabled(z);
        }
        if (isReportingIssue || (this.clearBtn != null && this.clearBtn.getVisibility() == 0)) {
            this.showAttachScreenshotMenu = false;
        } else if (!this.hsStorage.getEnableFullPrivacy().booleanValue()) {
            this.showAttachScreenshotMenu = true;
        }
        if (this.newConversationListener != null) {
            this.newConversationListener.reportingIssue();
        }
        if (isReportingIssue) {
            this.progressBar.setVisibility(0);
        } else {
            this.progressBar.setVisibility(8);
        }
    }

    private void saveScreenshot(String screenshotPath) {
        if (!TextUtils.isEmpty(screenshotPath)) {
            this.hsStorage.setConversationScreenshot(screenshotPath, this.hsApiData.getLoginId());
        }
    }

    public void setScreenshot(String screenshotPath) {
        Bitmap screenshotBitmap = AttachmentUtil.getBitmap(screenshotPath, -1);
        if (screenshotBitmap != null) {
            this.screenshot.setImageBitmap(screenshotBitmap);
            this.screenshot.setVisibility(0);
            this.screenshotFileName.setText(AttachmentUtil.getFileName(screenshotPath));
            this.screenshotFileSize.setText(AttachmentUtil.getFileSizeString(screenshotPath));
            this.clearBtn.setVisibility(0);
            this.screenshotPath = screenshotPath;
            this.screenshotContainer.setVisibility(0);
            this.showAttachScreenshotMenu = false;
        }
        if (!TextUtils.isEmpty(screenshotPath)) {
            saveScreenshot(screenshotPath);
        }
    }

    private boolean isFormValid() {
        Boolean validForm = Boolean.valueOf(true);
        String issueText = this.desc.getText().toString();
        Boolean isNameEmailFormShown = Boolean.valueOf(IdentityFilter.showNameEmailForm(this.hsApiData));
        if (isNameEmailFormShown.booleanValue()) {
            this.userName = this.userNameField.getText().toString();
            this.email = this.emailField.getText().toString();
        } else {
            this.userName = this.hsApiData.getUsername();
            this.email = this.hsApiData.getEmail();
        }
        if (issueText.trim().length() == 0) {
            this.desc.setError(getString(string.hs__conversation_detail_error));
            validForm = Boolean.valueOf(false);
        } else {
            Resources resources = getResources();
            if (issueText.replaceAll("\\s+", "").length() < resources.getInteger(R.integer.hs__issue_description_min_chars)) {
                this.desc.setError(resources.getString(R.string.hs__description_invalid_length_error));
                validForm = Boolean.valueOf(false);
            } else if (HSPattern.checkSpecialCharacters(issueText)) {
                this.desc.setError(getString(string.hs__invalid_description_error));
                validForm = Boolean.valueOf(false);
            }
        }
        if ((isNameEmailFormShown.booleanValue() && this.userName.trim().length() == 0) || HSPattern.checkSpecialCharacters(this.userName)) {
            this.userNameField.setError(getString(string.hs__username_blank_error));
            validForm = Boolean.valueOf(false);
        }
        if (this.requireEmail.booleanValue() && TextUtils.isEmpty(this.email) && !HSPattern.checkEmail(this.email)) {
            this.emailField.setError(getString(string.hs__invalid_email_error));
            validForm = Boolean.valueOf(false);
        } else if (!(TextUtils.isEmpty(this.email) || HSPattern.checkEmail(this.email))) {
            this.emailField.setError(getString(string.hs__invalid_email_error));
            validForm = Boolean.valueOf(false);
        }
        return validForm.booleanValue();
    }

    public void onStart() {
        super.onStart();
        this.isChangingConfiguration = isChangingConfigurations();
        addVisibleFragment();
    }

    public void onStop() {
        super.onStop();
        removeVisibleFragment();
        setToolbarTitle(getString(R.string.hs__help_header));
    }

    public void onResume() {
        super.onResume();
        HelpshiftContext.setViewState(HSConsts.ISSUE_FILING);
        if (!(this.sendAnyway || this.isChangingConfiguration)) {
            HSFunnel.pushEvent(SetMMOItemVariables.KEY_ITEM_ID);
        }
        String initText = "";
        String storedText = this.hsStorage.getConversationDetail(this.hsApiData.getLoginId());
        String prefillText = this.hsStorage.getConversationPrefillText();
        if (this.extras != null) {
            String input = this.extras.getString(ErrorReport.KEY_MESSAGE);
            if (!(input == null || input.trim().equals(""))) {
                initText = input.substring(0, 1).toUpperCase() + input.substring(1);
            }
        }
        if (!this.selectingScreenshot) {
            if (this.searchActivityShown) {
                this.desc.setText(storedText);
            } else if (!TextUtils.isEmpty(prefillText)) {
                this.desc.setText(prefillText);
            } else if (TextUtils.isEmpty(initText)) {
                this.desc.setText(storedText);
            } else {
                this.desc.setText(initText);
            }
            this.selectingScreenshot = false;
        }
        this.sendAnyway = false;
        this.searchActivityShown = false;
        this.desc.requestFocus();
        setScreenshot(this.hsStorage.getConversationScreenshot(this.hsApiData.getLoginId()));
        InputUtil.showKeyboard(getContext(), this.desc);
        this.newConversationListener.reloadMenu();
        setToolbarTitle(getString(R.string.hs__new_conversation_header));
    }

    public boolean isShowAttachScreenshotMenu() {
        return this.showAttachScreenshotMenu;
    }

    public boolean isShowStartNewConversationMenu() {
        return this.showStartNewConversationMenu;
    }
}
