package com.helpshift.support;

import android.annotation.TargetApi;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.facebook.Response;
import com.helpshift.R;
import com.helpshift.support.D.id;
import com.helpshift.support.D.layout;
import com.helpshift.support.D.string;
import com.helpshift.support.HSApiData.HS_ISSUE_CSAT_STATE;
import com.helpshift.support.SupportInternal.Delegate;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.contracts.HSMessagesListener;
import com.helpshift.support.customadapters.MessagesAdapter;
import com.helpshift.support.fragments.ConversationFlowFragment;
import com.helpshift.support.fragments.MainFragment;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.model.Issue;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.support.util.AttachmentUtil;
import com.helpshift.support.util.InputUtil;
import com.helpshift.support.util.IssuesUtil;
import com.helpshift.support.util.MessagesUtil;
import com.helpshift.support.util.PermissionUtil;
import com.helpshift.support.util.SnackbarUtil;
import com.helpshift.support.util.Styles;
import com.helpshift.support.viewstructs.HSMsg;
import com.helpshift.support.widget.CSATView;
import com.helpshift.support.widget.CSATView.CSATListener;
import com.helpshift.util.ApplicationUtil;
import com.helpshift.util.HSJSONUtils;
import com.helpshift.util.HelpshiftContext;
import com.scene53.utils.NotificationUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.ExtensionRequest;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.Base64;

public class HSMessagesFragment extends MainFragment implements DownloadTaskCallBacks, CSATListener {
    public static final String TAG = "HelpShiftDebug";
    private final int MESSAGE_POLL_DURATION = 3;
    private MessagesAdapter adapter;
    private String chatLaunchSource;
    private LinearLayout confirmationBox;
    private final BroadcastReceiver connChecker = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            HSMessagesFragment.this.startPoller();
        }
    };
    private CSATView csatView = null;
    private ViewStub csatViewStub;
    private boolean enableNCRMessage = true;
    private Bundle extras;
    private final BroadcastReceiver failedMessageRequestChecker = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            HSMessagesFragment.this.refreshMessages();
        }
    };
    private Handler fetchMessagesFailure = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Integer status = (Integer) msg.obj.get(IssueColumns.STATUS);
            if (!(status.intValue() == -1 || HSMessagesFragment.this.pollerThreadHandler == null)) {
                HSMessagesFragment.this.pollerThreadHandler.getLooper().quit();
            }
            if (!HSMessagesFragment.this.isDetached()) {
                SnackbarUtil.showErrorSnackbar(status.intValue(), HSMessagesFragment.this.getView());
            }
        }
    };
    private Handler fetchMessagesSuccess = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.obj.length() > 0) {
                HSMessagesFragment.this.showAgentName = Issue.isShowAgentNameEnabled(HSMessagesFragment.this.issueId);
                HSMessagesFragment.this.refreshMessages();
                HSMessagesFragment.this.refreshStatus();
                HSMessagesFragment.this.messagesListView.setSelection(HSMessagesFragment.this.adapter.getCount() - 1);
            }
        }
    };
    private TextView footerMessage;
    private Delegate helpshiftDelegate;
    private HSApiData hsApiData;
    private HSApiClient hsClient;
    private HSMessagesListener hsMessagesListener;
    private HSStorage hsStorage;
    private String issueId;
    private Integer issueStatus;
    private LinearLayout messageBox;
    private HashSet<String> messageIdsSet = new HashSet();
    private ArrayList<HSMsg> messagesList = new ArrayList();
    private LinearLayout messagesListFooterView;
    private ListView messagesListView;
    private boolean newActivity = true;
    private LinearLayout newConversationBox;
    private Button newConversationBtn;
    private HashMap<String, Object> pendingDownloadInfo;
    private Snackbar permissionDeniedSnackbar;
    private boolean persistMessageBox = false;
    private Handler pollerThreadHandler;
    private Handler replyFailHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (HSMessagesFragment.this.pollerThreadHandler != null) {
                HSMessagesFragment.this.pollerThreadHandler.getLooper().quit();
            }
            HSMessagesFragment.this.refreshMessages();
        }
    };
    private EditText replyField;
    private Handler replyHandler = new Handler() {
        public void handleMessage(Message msg) {
            HSMessagesFragment.this.renderReplyMsg(msg);
        }
    };
    private HashSet<String> scReferIdsSet = new HashSet();
    private boolean selectImage = false;
    private boolean showAgentName;
    private Snackbar showRationaleSnackbar;
    private boolean showingNewConversationBox = false;

    private class DownloadImagesTask extends AsyncTask<HashMap, Void, HashMap> {
        private DownloadImagesTask() {
        }

        protected HashMap doInBackground(HashMap... imagesData) {
            HashMap imageData = imagesData[0];
            String url = (String) imageData.get(Values.URL);
            String messageId = (String) imageData.get("messageId");
            int attachId = ((Integer) imageData.get("attachId")).intValue();
            int position = ((Integer) imageData.get("position")).intValue();
            HashMap result = new HashMap();
            try {
                String filePath = HSMessagesFragment.this.downloadAttachment(url, messageId, attachId);
                result.put(Response.SUCCESS_KEY, Boolean.valueOf(true));
                result.put("filepath", filePath);
                result.put("position", Integer.valueOf(position));
            } catch (IOException e) {
                Log.d(HSMessagesFragment.TAG, "Downloading image", e);
                result.put(Response.SUCCESS_KEY, Boolean.valueOf(false));
            }
            return result;
        }

        protected void onPostExecute(HashMap result) {
            if (((Boolean) result.get(Response.SUCCESS_KEY)).booleanValue()) {
                ((HSMsg) HSMessagesFragment.this.messagesList.get(((Integer) result.get("position")).intValue())).screenshot = (String) result.get("filepath");
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
            }
        }
    }

    public static HSMessagesFragment newInstance(Bundle bundle) {
        HSMessagesFragment hsMessagesFragment = new HSMessagesFragment();
        hsMessagesFragment.setArguments(bundle);
        return hsMessagesFragment;
    }

    private void gotoApp(String marketUrl) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(marketUrl));
        if (isResumed() && intent.resolveActivity(getContext().getPackageManager()) != null) {
            startActivity(intent);
        } else if (!isDetached()) {
            SnackbarUtil.showErrorSnackbar(4, getView());
        }
    }

    private void renderReplyMsg(Message msg) {
        JSONObject message = (JSONObject) msg.obj.get("response");
        JSONArray messages = new JSONArray();
        messages.put(message);
        IssuesDataSource.storeMessages(IssuesUtil.jsonArrayToMessageList(messages));
        refreshMessages();
    }

    public boolean isIssueRejected() {
        return this.issueStatus.equals(Integer.valueOf(3));
    }

    private void refreshStatus() {
        List openConversations = this.hsStorage.getOpenConversations(this.hsApiData.getProfileId());
        Integer status = Integer.valueOf(IssuesDataSource.getIssue(this.issueId).getStatus());
        this.issueStatus = status;
        int replyLength = this.hsStorage.getReply(this.hsApiData.getProfileId()).trim().length();
        if (status.equals(Integer.valueOf(0)) || status.equals(Integer.valueOf(1))) {
            showMessageBox();
            this.persistMessageBox = false;
        } else if (status.equals(Integer.valueOf(2))) {
            if (openConversations.contains(this.issueId)) {
                if (this.hsStorage.getShowConversationResolutionQuestion().booleanValue()) {
                    showConfirmationBox();
                } else {
                    resolutionAccepted();
                }
            } else if (this.persistMessageBox || replyLength != 0 || this.hsStorage.getScreenShotDraft().booleanValue()) {
                showMessageBox();
            } else {
                showNewConversationBox();
            }
        } else if (status.equals(Integer.valueOf(3))) {
            this.hsMessagesListener.reloadMenu();
        }
    }

    private void showConfirmationBox() {
        this.adapter.enableButtons(false);
        this.messageBox.setVisibility(8);
        InputUtil.hideKeyboard(getContext(), this.replyField);
        this.confirmationBox.setVisibility(0);
        this.newConversationBox.setVisibility(8);
        setMessagesListViewFooter(string.hs__confirmation_footer_msg);
        this.hsMessagesListener.showResolutionRequest();
    }

    private void showNewConversationBox() {
        this.enableNCRMessage = false;
        this.adapter.enableButtons(false);
        InputUtil.hideKeyboard(getContext(), this.replyField);
        this.confirmationBox.setVisibility(8);
        this.newConversationBox.setVisibility(0);
        this.messageBox.setVisibility(8);
        HS_ISSUE_CSAT_STATE state = this.hsApiData.getCSatState(this.issueId);
        if (state == HS_ISSUE_CSAT_STATE.CSAT_APPLICABLE || state == HS_ISSUE_CSAT_STATE.CSAT_REQUESTED) {
            this.csatView = inflateCSATView();
            setMessagesListViewFooter(string.hs__confirmation_footer_msg);
        } else {
            setMessagesListViewFooter(string.hs__conversation_end_msg);
        }
        this.showingNewConversationBox = true;
    }

    private CSATView inflateCSATView() {
        if (this.csatViewStub == null) {
            return null;
        }
        CSATView rView = (CSATView) this.csatViewStub.inflate();
        rView.setCSATListener(this);
        this.csatViewStub = null;
        this.hsApiData.setCSatState(this.issueId, HS_ISSUE_CSAT_STATE.CSAT_REQUESTED);
        return rView;
    }

    public void csatViewDissmissed() {
        setMessagesListViewFooter(string.hs__conversation_end_msg);
    }

    public void sendCSATSurvey(int rating, String feedback) {
        feedback = feedback.trim();
        this.hsApiData.sendCustomerSatisfactionSurvey(Integer.valueOf(rating), feedback, this.issueId, new Handler(), new Handler());
        if (this.helpshiftDelegate != null) {
            this.helpshiftDelegate.userCompletedCustomerSatisfactionSurvey(rating, feedback);
        }
    }

    private void setMessagesListViewFooter(int resId) {
        this.messagesListView.removeFooterView(this.messagesListFooterView);
        if (resId != -1) {
            addListViewBottomPadding(false);
            this.footerMessage.setVisibility(0);
            this.footerMessage.setText(resId);
            this.messagesListView.addFooterView(this.messagesListFooterView);
        }
    }

    private void showMessageBox() {
        this.adapter.enableButtons(true);
        this.confirmationBox.setVisibility(8);
        this.newConversationBox.setVisibility(8);
        this.messageBox.setVisibility(0);
        this.hsMessagesListener.reloadMenu();
        setMessagesListViewFooter(-1);
    }

    private void showKeyboard(View v) {
        v.requestFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(v, 0);
    }

    private void refreshMessages() {
        refreshMessages(this.hsApiData.getMessagesWithFails(this.issueId));
    }

    private void refreshMessages(JSONArray messages) {
        try {
            this.messagesList.clear();
            this.messageIdsSet.clear();
            this.scReferIdsSet.clear();
            int messagesLength = messages.length();
            int i = 0;
            while (i < messagesLength) {
                JSONObject message = messages.getJSONObject(i);
                String id = message.getString(LoginRequest.KEY_ID);
                String type = message.getString(MessageColumns.TYPE);
                if (type.equals(HSConsts.ADMIN_ATTACHMENT_GENERIC_TYPE)) {
                    String filePath = this.hsStorage.getFilePathForGenericAttachment(id);
                    if (new File(filePath).exists()) {
                        message.put("state", 3);
                    } else {
                        if (!filePath.equals("")) {
                            this.hsStorage.removeFromDownloadedGenericFiles(id);
                        }
                        if (this.hsStorage.isDownloadActive(id)) {
                            message.put("state", 1);
                        }
                    }
                } else if (type.equals(HSConsts.ADMIN_ATTACHMENT_IMAGE_TYPE)) {
                    String imagePath = this.hsStorage.getFilePathForImage(id);
                    if (new File(imagePath).exists()) {
                        message.put(MessageColumns.SCREENSHOT, imagePath);
                        message.put("state", 3);
                    } else {
                        if (!imagePath.equals("")) {
                            this.hsStorage.removeFromDownloadedImageFiles(id);
                        }
                        String thumbnailPath = this.hsStorage.getFilePathForThumbnail(id);
                        if (new File(thumbnailPath).exists()) {
                            message.put(MessageColumns.SCREENSHOT, thumbnailPath);
                            if (this.hsStorage.isDownloadActive(id)) {
                                message.put("state", 2);
                            } else {
                                message.put("state", 1);
                            }
                        } else if (!thumbnailPath.equals("")) {
                            this.hsStorage.removeFromDownloadedThumbnailFiles(id);
                        }
                    }
                }
                String origin = message.getString(MessageColumns.ORIGIN);
                String body = message.getString(MessageColumns.BODY);
                String date = message.getString(MessageColumns.CREATED_AT);
                int state = message.optInt("state", 0);
                Boolean inProgress = Boolean.valueOf(message.optBoolean("inProgress", false));
                if (!origin.equals("mobile") || !type.equals("ncr") || this.enableNCRMessage || i != messagesLength - 1) {
                    String screenshot = message.optString(MessageColumns.SCREENSHOT, "");
                    if (type.equals("rsc")) {
                        screenshot = message.optString(MessageColumns.SCREENSHOT, "");
                        if (id.startsWith(AttachmentUtil.LOCAL_RSC_MSG_ID_PREFIX) && this.scReferIdsSet.contains(id)) {
                            IssuesDataSource.deleteMessage(id);
                        }
                    }
                    if (!origin.equals("admin") || !type.equals("rfr") || MessagesUtil.isRfrAccepted(messages, i, id)) {
                        Boolean metaResponse = Boolean.valueOf(false);
                        JSONObject meta = message.optJSONObject(MessageColumns.META);
                        if (meta != null) {
                            JSONObject messageMeta = meta.optJSONObject("response");
                            if (messageMeta != null) {
                                metaResponse = Boolean.valueOf(messageMeta.optBoolean("state"));
                            }
                        }
                        String agentName = "";
                        if (this.showAgentName) {
                            JSONObject author = message.optJSONObject(MessageColumns.AUTHOR);
                            if (author != null) {
                                agentName = author.optString(ProfilesDBHelper.COLUMN_NAME);
                            }
                        }
                        boolean z = message.optBoolean(MessageColumns.INVISIBLE) || metaResponse.booleanValue();
                        Boolean invisible = Boolean.valueOf(z);
                        if (MessagesUtil.isMessageSupported(origin, type) && !this.messageIdsSet.contains(id)) {
                            this.messageIdsSet.add(id);
                            HSMsg msgData = new HSMsg(id, type, origin, body, date, invisible, screenshot, state, inProgress, agentName);
                            if (type.equals("rsc") && inProgress.booleanValue() && ApplicationUtil.getDeviceApiVersion() > 22 && ContextCompat.checkSelfPermission(getContext(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                                msgData.clickable = Boolean.valueOf(true);
                                msgData.inProgress = Boolean.valueOf(false);
                                com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                            }
                            this.messagesList.add(msgData);
                            if (type.equals("sc")) {
                                meta = message.optJSONObject(MessageColumns.META);
                                if (meta != null) {
                                    JSONArray attachments = meta.optJSONArray("attachments");
                                    String refers = meta.optString("refers", id);
                                    if (refers.startsWith(AttachmentUtil.LOCAL_RSC_MSG_ID_PREFIX)) {
                                        if (this.messageIdsSet.contains(refers)) {
                                            removeMessage(refers);
                                            IssuesDataSource.deleteMessage(refers);
                                        } else {
                                            this.scReferIdsSet.add(refers);
                                        }
                                    }
                                    if (attachments != null && attachments.length() > 0 && refers != null) {
                                        JSONObject attachment = attachments.optJSONObject(0);
                                        if (attachment != null) {
                                            String url = attachment.optString(Values.URL, "");
                                            HashMap imgData = new HashMap();
                                            imgData.put(Values.URL, url);
                                            imgData.put("messageId", refers);
                                            imgData.put("attachId", Integer.valueOf(0));
                                            imgData.put("position", Integer.valueOf(this.messagesList.size() - 1));
                                            new DownloadImagesTask().execute(new HashMap[]{imgData});
                                        }
                                    } else if (attachments == null) {
                                        removeMessage(id);
                                    }
                                }
                            }
                        }
                    }
                }
                i++;
            }
        } catch (Throwable e) {
            Log.d(TAG, "Slug in get(\"slug\") no found", e);
        }
        if (messages.length() > 0) {
            this.adapter.notifyDataSetChanged();
        }
    }

    private void removeMessage(String messageId) {
        Iterator it = this.messagesList.iterator();
        while (it.hasNext()) {
            if (((HSMsg) it.next()).id.equals(messageId)) {
                it.remove();
            }
        }
        this.messageIdsSet.remove(messageId);
    }

    public void onPause() {
        super.onPause();
        if (this.pollerThreadHandler != null) {
            this.pollerThreadHandler.getLooper().quit();
        }
        try {
            this.hsStorage.resetIssueCount(this.issueId);
            if (this.helpshiftDelegate != null) {
                this.helpshiftDelegate.didReceiveNotification(0);
            }
        } catch (JSONException e) {
            Log.d(TAG, e.getMessage(), e);
        }
        this.hsStorage.setForeground(Boolean.valueOf(false));
        this.hsStorage.setForegroundIssue("");
        this.hsApiData.resetServiceInterval();
        try {
            getContext().unregisterReceiver(this.connChecker);
            getContext().unregisterReceiver(this.failedMessageRequestChecker);
        } catch (IllegalArgumentException e2) {
        }
        DownloadManager.deregisterDownloadTaskCallBacks();
        this.hsStorage.storeReply(this.replyField.getText().toString().trim(), this.hsApiData.getProfileId());
        if (this.showRationaleSnackbar != null && this.showRationaleSnackbar.isShown()) {
            this.showRationaleSnackbar.dismiss();
        }
        if (this.permissionDeniedSnackbar != null && this.permissionDeniedSnackbar.isShown()) {
            this.permissionDeniedSnackbar.dismiss();
        }
        InputUtil.hideKeyboard(getContext(), this.replyField);
    }

    public void onDestroy() {
        super.onDestroy();
        HelpshiftContext.setViewState(null);
    }

    public void startPoller() {
        if (this.pollerThreadHandler != null) {
            this.pollerThreadHandler.getLooper().quit();
        }
        String conversation = this.hsStorage.getActiveConversation(this.hsApiData.getProfileId());
        String archivedConversation = this.hsStorage.getArchivedConversation(this.hsApiData.getProfileId());
        if (!TextUtils.isEmpty(conversation) || !TextUtils.isEmpty(archivedConversation)) {
            new Thread(new Runnable() {
                public void run() {
                    Looper.prepare();
                    HSMessagesFragment.this.pollerThreadHandler = new Handler() {
                        public void handleMessage(Message msg) {
                            Message newMsg = HSMessagesFragment.this.fetchMessagesSuccess.obtainMessage();
                            newMsg.obj = msg.obj;
                            HSMessagesFragment.this.fetchMessagesSuccess.sendMessage(newMsg);
                        }
                    };
                    new Runnable() {
                        public void run() {
                            try {
                                HSMessagesFragment.this.hsApiData.getLatestIssues(HSMessagesFragment.this.pollerThreadHandler, HSMessagesFragment.this.fetchMessagesFailure, HSMessagesFragment.this.chatLaunchSource);
                            } catch (JSONException e) {
                                Log.d(HSMessagesFragment.TAG, "get issues", e);
                            }
                            HSMessagesFragment.this.pollerThreadHandler.postDelayed(this, 3000);
                        }
                    }.run();
                    Looper.loop();
                }
            }).start();
        }
    }

    public void onResume() {
        super.onResume();
        this.selectImage = false;
        ((NotificationManager) getContext().getSystemService(NotificationUtils.PREFS_FILENAME)).cancel(this.issueId, 1);
        this.hsStorage.clearNotification(this.issueId);
        IntentFilter connFilter = new IntentFilter();
        connFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        getContext().registerReceiver(this.connChecker, connFilter);
        IntentFilter failFilter = new IntentFilter();
        failFilter.addAction("com.helpshift.failedMessageRequest");
        getContext().registerReceiver(this.failedMessageRequestChecker, failFilter);
        startPoller();
        try {
            this.hsStorage.resetIssueCount(this.issueId);
            if (this.helpshiftDelegate != null) {
                this.helpshiftDelegate.didReceiveNotification(0);
            }
        } catch (JSONException e) {
            Log.d(TAG, e.toString(), e);
        }
        this.hsStorage.setForeground(Boolean.valueOf(true));
        this.hsStorage.setForegroundIssue(this.issueId);
        this.hsApiData.updateMessageSeenState(this.issueId, this.chatLaunchSource);
        String replyText = this.hsStorage.getReply(this.hsApiData.getProfileId());
        if (!this.showingNewConversationBox) {
            this.replyField.setText(replyText);
        }
        if (this.newActivity && TextUtils.isEmpty(replyText)) {
            this.persistMessageBox = false;
        }
        this.newActivity = false;
        DownloadManager.registerDownloadTaskCallbacks(this);
        setToolbarTitle(getString(R.string.hs__conversation_header));
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.hsApiData = new HSApiData(context);
        this.hsStorage = this.hsApiData.storage;
        this.hsClient = this.hsApiData.client;
        this.hsMessagesListener = ((ConversationFlowFragment) getParentFragment()).getConversationFlowController();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.extras = getArguments();
        this.extras.remove(ErrorReport.KEY_MESSAGE);
        this.chatLaunchSource = this.extras.getString("chatLaunchSource");
        this.helpshiftDelegate = SupportInternal.getDelegate();
        this.messagesListFooterView = (LinearLayout) inflater.inflate(layout.hs__messages_list_footer, null);
        this.footerMessage = (TextView) this.messagesListFooterView.findViewById(R.id.footer_message);
        return inflater.inflate(layout.hs__messages_fragment, container, false);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.messagesListView = (ListView) view.findViewById(id.hs__messagesList);
        this.replyField = (EditText) view.findViewById(id.hs__messageText);
        final ImageButton addReply = (ImageButton) view.findViewById(id.hs__sendMessageBtn);
        this.confirmationBox = (LinearLayout) view.findViewById(id.hs__confirmation);
        this.newConversationBox = (LinearLayout) this.messagesListFooterView.findViewById(id.hs__new_conversation);
        this.messageBox = (LinearLayout) view.findViewById(id.relativeLayout1);
        Button solvedBtn = (Button) view.findViewById(16908313);
        Button unsolvedBtn = (Button) view.findViewById(16908314);
        this.newConversationBtn = (Button) this.messagesListFooterView.findViewById(id.hs__new_conversation_btn);
        this.csatViewStub = (ViewStub) this.messagesListFooterView.findViewById(id.csat_view_stub);
        solvedBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                HSMessagesFragment.this.resolutionAccepted();
            }
        });
        unsolvedBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                HelpshiftContext.setViewState(HSConsts.MESSAGE_FILING);
                HSMessagesFragment.this.refreshMessages();
                HSMessagesFragment.this.persistMessageBox = true;
                HSMessagesFragment.this.showMessageBox();
                if (HSMessagesFragment.this.replyField.getText().toString().trim().length() == 0) {
                    HSMessagesFragment.this.showKeyboard(HSMessagesFragment.this.replyField);
                }
                HSMessagesFragment.this.sendResolutionEvent(Boolean.valueOf(false));
                HSMessagesFragment.this.hsMessagesListener.rejectResolution();
                if (HSMessagesFragment.this.helpshiftDelegate != null) {
                    HSMessagesFragment.this.helpshiftDelegate.userRepliedToConversation(SupportInternal.UserRejectedTheSolution);
                }
            }
        });
        this.newConversationBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                HSMessagesFragment.this.addListViewBottomPadding(true);
                HSMessagesFragment.this.hsStorage.setArchivedConversation("", HSMessagesFragment.this.hsApiData.getProfileId());
                HSMessagesFragment.this.hsMessagesListener.startNewConversation();
            }
        });
        this.messagesListView.setDivider(null);
        this.adapter = new MessagesAdapter(this, 17367043, this.messagesList);
        TextView dummyTextView = new TextView(getContext());
        this.messagesListView.addFooterView(dummyTextView);
        this.messagesListView.setAdapter(this.adapter);
        this.messagesListView.removeFooterView(dummyTextView);
        this.issueId = this.extras.getString("issueId");
        this.showAgentName = Issue.isShowAgentNameEnabled(this.issueId);
        refreshStatus();
        refreshMessages();
        this.messagesListView.setSelection(this.adapter.getCount() - 1);
        if (this.replyField.getText().length() == 0) {
            addReply.setEnabled(false);
            addReply.setAlpha(64);
            Styles.setSendMessageButtonIconColor(getContext(), addReply.getDrawable());
        } else {
            addReply.setEnabled(true);
            addReply.setAlpha(255);
            Styles.setSendMessageButtonActiveIconColor(getContext(), addReply.getDrawable());
        }
        addReply.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                String replyText = HSMessagesFragment.this.replyField.getText().toString().trim();
                if (!TextUtils.isEmpty(replyText)) {
                    HSMessagesFragment.this.replyField.setText("");
                    HSMessagesFragment.this.addMessage(HSMessagesFragment.this.replyHandler, HSMessagesFragment.this.replyFailHandler, HSMessagesFragment.this.issueId, replyText, "txt", "");
                    if (HSMessagesFragment.this.helpshiftDelegate != null) {
                        HSMessagesFragment.this.helpshiftDelegate.userRepliedToConversation(replyText);
                    }
                    try {
                        JSONObject eventData = new JSONObject();
                        eventData.put(MessageColumns.TYPE, "txt");
                        eventData.put(MessageColumns.BODY, replyText);
                        eventData.put(LoginRequest.KEY_ID, HSMessagesFragment.this.issueId);
                        HSFunnel.pushEvent(SetUserPositionRequest.KEY_MINUS_USER_LIST, eventData);
                    } catch (JSONException e) {
                        Log.d(HSMessagesFragment.TAG, "JSONException", e);
                    }
                }
            }
        });
        this.replyField.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == 4) {
                    addReply.performClick();
                }
                return false;
            }
        });
        this.replyField.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable s) {
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if (!(start == 0 && before == 0 && count == 0)) {
                    HSMessagesFragment.this.persistMessageBox = true;
                }
                if (s.length() == 0) {
                    addReply.setEnabled(false);
                    addReply.setAlpha(64);
                    Styles.setSendMessageButtonIconColor(HSMessagesFragment.this.getContext(), addReply.getDrawable());
                    return;
                }
                addReply.setEnabled(true);
                addReply.setAlpha(255);
                Styles.setSendMessageButtonActiveIconColor(HSMessagesFragment.this.getContext(), addReply.getDrawable());
            }
        });
    }

    private void addListViewBottomPadding(boolean add) {
        if (this.messagesListView != null) {
            int topPadding = (int) (Styles.dpToPx(getContext(), getResources().getDimension(R.dimen.activity_vertical_margin_small)) + 0.5f);
            int bottomPadding = 0;
            if (add) {
                bottomPadding = (int) (((float) ((int) Styles.dpToPx(getContext(), getResources().getDimension(R.dimen.activity_vertical_margin_medium)))) + 0.5f);
            }
            this.messagesListView.setPadding(0, topPadding, 0, bottomPadding);
            this.messagesListView.invalidate();
        }
    }

    private void resolutionAccepted() {
        this.replyField.setText("");
        this.hsStorage.storeReply("", this.hsApiData.getProfileId());
        sendResolutionEvent(Boolean.valueOf(true));
        this.persistMessageBox = false;
        refreshStatus();
        this.hsMessagesListener.acceptResolution();
        if (this.helpshiftDelegate != null) {
            this.helpshiftDelegate.userRepliedToConversation(SupportInternal.UserAcceptedTheSolution);
        }
    }

    private void sendResolutionEvent(Boolean accepted) {
        this.hsStorage.clearAndUpdateActiveConversation(this.issueId, this.hsApiData.getProfileId());
        try {
            JSONObject eventData = new JSONObject();
            eventData.put(LoginRequest.KEY_ID, this.issueId);
            String messageType = "";
            if (accepted.booleanValue()) {
                HSFunnel.pushEvent(HSFunnel.RESOLUTION_ACCEPTED, eventData);
                messageType = "ca";
            } else {
                HSFunnel.pushEvent(SetUserPositionRequest.KEY_MINUS_ITEM_LIST, eventData);
                messageType = "ncr";
            }
            addMessage(this.replyHandler, this.replyFailHandler, this.issueId, "", messageType, "");
            this.hsApiData.setCSatState(this.issueId, HS_ISSUE_CSAT_STATE.CSAT_APPLICABLE);
        } catch (JSONException e) {
            Log.d(TAG, "JSONException", e);
        }
    }

    public void onStart() {
        super.onStart();
        addVisibleFragment();
        if (!this.selectImage && !isChangingConfigurations()) {
            try {
                JSONObject eventData = new JSONObject();
                eventData.put(LoginRequest.KEY_ID, this.issueId);
                HSFunnel.pushEvent(ExtensionRequest.KEY_CMD, eventData);
            } catch (JSONException e) {
                Log.d(TAG, "JSONException", e);
            }
        }
    }

    public void onStop() {
        super.onStop();
        removeVisibleFragment();
        setToolbarTitle(getString(R.string.hs__help_header));
    }

    public void replyConfirmation(String messageId, Boolean accepted, final int position) {
        HSMsg msgData = (HSMsg) this.messagesList.get(position);
        msgData.clickable = Boolean.valueOf(false);
        msgData.inProgress = Boolean.valueOf(true);
        com.helpshift.support.model.Message.setInProgress(msgData.id, true);
        this.adapter.notifyDataSetChanged();
        Handler replySysHandler = new Handler() {
            public void handleMessage(Message msg) {
                HSMsg msgData = (HSMsg) HSMessagesFragment.this.messagesList.get(position);
                msgData.clickable = Boolean.valueOf(false);
                msgData.invisible = Boolean.valueOf(true);
                msgData.inProgress = Boolean.valueOf(false);
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
                com.helpshift.support.model.Message.setInvisible(msgData.id, true);
                com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                HSMessagesFragment.this.renderReplyMsg(msg);
            }
        };
        Handler replySysFailHandler = new Handler() {
            public void handleMessage(Message msg) {
                HSMsg msgData = (HSMsg) HSMessagesFragment.this.messagesList.get(position);
                msgData.clickable = Boolean.valueOf(true);
                msgData.inProgress = Boolean.valueOf(false);
                com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
                Integer status = (Integer) msg.obj.get(IssueColumns.STATUS);
                if (!HSMessagesFragment.this.isDetached()) {
                    SnackbarUtil.showErrorSnackbar(status.intValue(), HSMessagesFragment.this.getView());
                }
            }
        };
        if (accepted.booleanValue()) {
            addMessage(replySysHandler, replySysFailHandler, this.issueId, "", "ca", messageId);
        } else {
            addMessage(replySysHandler, replySysFailHandler, this.issueId, "", "ncr", messageId);
        }
        try {
            JSONObject eventData = new JSONObject();
            eventData.put(LoginRequest.KEY_ID, this.issueId);
            if (accepted.booleanValue()) {
                HSFunnel.pushEvent(HSFunnel.RESOLUTION_ACCEPTED, eventData);
            } else {
                HSFunnel.pushEvent(SetUserPositionRequest.KEY_MINUS_ITEM_LIST, eventData);
            }
        } catch (JSONException e) {
            Log.d(TAG, "JSONException", e);
        }
    }

    public void replyReview(String messageId, final int position) {
        HSMsg msgData = (HSMsg) this.messagesList.get(position);
        msgData.clickable = Boolean.valueOf(false);
        msgData.inProgress = Boolean.valueOf(true);
        com.helpshift.support.model.Message.setInProgress(msgData.id, true);
        this.adapter.notifyDataSetChanged();
        addMessage(new Handler() {
            public void handleMessage(Message msg) {
                HSMsg msgData = (HSMsg) HSMessagesFragment.this.messagesList.get(position);
                msgData.clickable = Boolean.valueOf(false);
                msgData.invisible = Boolean.valueOf(true);
                msgData.inProgress = Boolean.valueOf(false);
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
                com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                com.helpshift.support.model.Message.setInvisible(msgData.id, true);
                HSMessagesFragment.this.renderReplyMsg(msg);
                try {
                    JSONObject eventData = new JSONObject();
                    eventData.put(MessageColumns.TYPE, "conversation");
                    HSFunnel.pushEvent(SetUserPositionRequest.KEY_ROOM, eventData);
                    if (HSMessagesFragment.this.helpshiftDelegate != null) {
                        HSMessagesFragment.this.helpshiftDelegate.userRepliedToConversation(SupportInternal.UserReviewedTheApp);
                    }
                    String rurl = HSMessagesFragment.this.hsStorage.getConfig().optString("rurl", "").trim();
                    if (!TextUtils.isEmpty(rurl)) {
                        HSMessagesFragment.this.hsApiData.disableReview();
                        HSMessagesFragment.this.gotoApp(rurl);
                    }
                } catch (JSONException e) {
                    Log.d(HSMessagesFragment.TAG, e.getMessage(), e);
                }
            }
        }, new Handler() {
            public void handleMessage(Message msg) {
                HSMsg msgData = (HSMsg) HSMessagesFragment.this.messagesList.get(position);
                msgData.clickable = Boolean.valueOf(true);
                msgData.inProgress = Boolean.valueOf(false);
                com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
                Integer status = (Integer) msg.obj.get(IssueColumns.STATUS);
                if (!HSMessagesFragment.this.isDetached()) {
                    SnackbarUtil.showErrorSnackbar(status.intValue(), HSMessagesFragment.this.getView());
                }
            }
        }, this.issueId, "", "ar", messageId);
    }

    public void sendScreenshot(String screenshotPath, int position) {
        HSMsg msgData;
        if (position == 0) {
            msgData = AttachmentUtil.addAndGetLocalRscMsg(this.hsStorage, this.issueId, screenshotPath);
            this.messagesList.add(msgData);
        } else {
            msgData = (HSMsg) this.messagesList.get(position);
            msgData.screenshot = screenshotPath;
        }
        com.helpshift.support.model.Message.setScreenshot(msgData.id, screenshotPath);
        this.adapter.notifyDataSetChanged();
        attachImage(this.messagesList.indexOf(msgData));
    }

    public void removeScreenshot(int position) {
        HSMsg msgData = (HSMsg) this.messagesList.get(position);
        if (msgData.id.startsWith(AttachmentUtil.LOCAL_RSC_MSG_ID_PREFIX)) {
            IssuesDataSource.deleteMessage(msgData.id);
            this.messagesList.remove(position);
        } else {
            com.helpshift.support.model.Message.setScreenshot(msgData.id, "");
            msgData.screenshot = "";
        }
        this.adapter.notifyDataSetChanged();
    }

    public void selectImagePopup(int position) {
        this.hsMessagesListener.pickImage(position);
    }

    public void attachImage(final int position) {
        String profileId = this.hsApiData.getProfileId();
        HSMsg msgData = (HSMsg) this.messagesList.get(position);
        msgData.clickable = Boolean.valueOf(false);
        msgData.inProgress = Boolean.valueOf(true);
        com.helpshift.support.model.Message.setInProgress(msgData.id, true);
        this.adapter.notifyDataSetChanged();
        this.hsClient.addScMessage(new Handler() {
            public void handleMessage(Message msg) {
                HSMsg msgData = (HSMsg) HSMessagesFragment.this.messagesList.get(position);
                JSONObject message = (JSONObject) msg.obj.get("response");
                try {
                    JSONObject eventData = new JSONObject();
                    eventData.put(MessageColumns.TYPE, Values.URL);
                    eventData.put(MessageColumns.BODY, message.getJSONObject(MessageColumns.META).getJSONArray("attachments").getJSONObject(0).getString(Values.URL));
                    eventData.put(LoginRequest.KEY_ID, HSMessagesFragment.this.issueId);
                    HSFunnel.pushEvent(SetUserPositionRequest.KEY_MINUS_USER_LIST, eventData);
                    if (HSMessagesFragment.this.helpshiftDelegate != null) {
                        HSMessagesFragment.this.helpshiftDelegate.userRepliedToConversation(SupportInternal.UserSentScreenShot);
                    }
                } catch (JSONException e) {
                    Log.d(HSMessagesFragment.TAG, "Error while getting screenshot url", e);
                }
                try {
                    AttachmentUtil.copyAttachment(HSMessagesFragment.this.getContext(), HSMessagesFragment.this.hsApiData, msgData.screenshot, msgData.id, 0);
                } catch (IOException e2) {
                    Log.d(HSMessagesFragment.TAG, "Saving uploaded screenshot", e2);
                }
                if (msgData.id.startsWith(AttachmentUtil.LOCAL_RSC_MSG_ID_PREFIX)) {
                    IssuesDataSource.deleteMessage(msgData.id);
                    HSMessagesFragment.this.messagesList.remove(position);
                } else {
                    msgData.inProgress = Boolean.valueOf(false);
                    msgData.invisible = Boolean.valueOf(true);
                    msgData.screenshot = "";
                    msgData.clickable = Boolean.valueOf(false);
                    com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                    com.helpshift.support.model.Message.setInvisible(msgData.id, true);
                    com.helpshift.support.model.Message.setScreenshot(msgData.id, "");
                }
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
                HSMessagesFragment.this.renderReplyMsg(msg);
            }
        }, new Handler() {
            public void handleMessage(Message msg) {
                HSMsg msgData = (HSMsg) HSMessagesFragment.this.messagesList.get(position);
                msgData.clickable = Boolean.valueOf(true);
                msgData.inProgress = Boolean.valueOf(false);
                com.helpshift.support.model.Message.setInProgress(msgData.id, false);
                HSMessagesFragment.this.adapter.notifyDataSetChanged();
                HSMessagesFragment.this.messagesList.set(position, msgData);
                Integer status = (Integer) msg.obj.get(IssueColumns.STATUS);
                if (!HSMessagesFragment.this.isDetached()) {
                    SnackbarUtil.showErrorSnackbar(status.intValue(), HSMessagesFragment.this.getView());
                }
            }
        }, profileId, this.issueId, "", "sc", msgData.id, msgData.screenshot);
    }

    public String downloadAttachment(String urlStr, String messageId, int attachId) throws IOException {
        URL url = new URL(urlStr);
        InputStream input = null;
        FileOutputStream output = null;
        try {
            String outputName = messageId + attachId + "-thumbnail";
            File outputFile = new File(getContext().getFilesDir(), outputName);
            String fname = outputFile.getAbsolutePath();
            if (!outputFile.exists()) {
                this.hsApiData.storeFile(outputName);
                input = url.openConnection().getInputStream();
                output = getContext().openFileOutput(outputName, 0);
                byte[] data = new byte[1024];
                while (true) {
                    int read = input.read(data);
                    if (read == -1) {
                        break;
                    }
                    output.write(data, 0, read);
                }
            }
            if (output != null) {
                output.close();
            }
            if (input != null) {
                input.close();
            }
            return fname;
        } catch (Throwable th) {
            if (output != null) {
                output.close();
            }
            if (input != null) {
                input.close();
            }
        }
    }

    public void downloadAdminAttachment(JSONObject attachment, int position, int downloadType) {
        if (ApplicationUtil.isPermissionGranted(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") || downloadType == 8) {
            startAdminAttachmentDownload(attachment, position, downloadType);
            return;
        }
        int apiVersion = ApplicationUtil.getDeviceApiVersion();
        if (apiVersion < 9) {
            if (!isDetached()) {
                SnackbarUtil.showSnackbar(getView(), R.string.hs__permission_not_granted, -1);
            }
        } else if (apiVersion < 23) {
            startDownloadWithSystemService(attachment);
        } else {
            InputUtil.hideKeyboard(getContext(), this.replyField);
            this.pendingDownloadInfo = new HashMap();
            this.pendingDownloadInfo.put("attachment", attachment);
            this.pendingDownloadInfo.put("position", Integer.valueOf(position));
            this.pendingDownloadInfo.put("downloadType", Integer.valueOf(downloadType));
            requestStoragePermission();
        }
    }

    private void startAdminAttachmentDownload(JSONObject attachment, int position, int downloadType) {
        HSMsg msgData = (HSMsg) this.messagesList.get(position);
        switch (downloadType) {
            case BaseRequest.CreateRoom /*6*/:
                msgData.state = 1;
                updateView(msgData);
                break;
            case BaseRequest.GenericMessage /*7*/:
                msgData.state = 2;
                updateView(msgData);
                break;
            case Base64.DO_BREAK_LINES /*8*/:
                if (!this.hsStorage.isDownloadActive(msgData.id)) {
                    if (new File(this.hsStorage.getFilePathForThumbnail(msgData.id)).exists()) {
                        return;
                    }
                }
                return;
                break;
        }
        DownloadManager.startDownload(attachment, position, msgData.id, this.issueId, downloadType);
    }

    @TargetApi(11)
    private void startDownloadWithSystemService(JSONObject attachment) {
        DownloadManager downloadManager = (DownloadManager) getContext().getSystemService("download");
        Request request = new Request(Uri.parse(attachment.optString(Values.URL, "")));
        if (ApplicationUtil.getDeviceApiVersion() >= 11) {
            request.setNotificationVisibility(1);
        }
        downloadManager.enqueue(request);
        if (!isDetached()) {
            SnackbarUtil.showSnackbar(getView(), R.string.hs__starting_download, -1);
        }
    }

    private void requestStoragePermission() {
        this.showRationaleSnackbar = PermissionUtil.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 90, this.replyField);
    }

    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode != 90) {
            super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        } else if (grantResults.length == 1 && grantResults[0] == 0) {
            downloadAdminAttachment((JSONObject) this.pendingDownloadInfo.get("attachment"), ((Integer) this.pendingDownloadInfo.get("position")).intValue(), ((Integer) this.pendingDownloadInfo.get("downloadType")).intValue());
        } else {
            this.permissionDeniedSnackbar = Snackbar.make(this.replyField, R.string.hs__permission_denied_message, -1).setAction(R.string.hs__permission_denied_snackbar_action, new OnClickListener() {
                public void onClick(View v) {
                    PermissionUtil.showSettingsPage(HSMessagesFragment.this.getContext());
                }
            });
            this.permissionDeniedSnackbar.show();
        }
    }

    public void launchAttachment(HSMsg msg) {
        try {
            String filePath;
            String contentType = new JSONObject(msg.body).optString("content-type", "");
            if (msg.type.equals(HSConsts.ADMIN_ATTACHMENT_GENERIC_TYPE)) {
                filePath = this.hsStorage.getFilePathForGenericAttachment(msg.id);
            } else {
                filePath = this.hsStorage.getFilePathForImage(msg.id);
            }
            File file = new File(filePath);
            if (file.exists()) {
                Uri uri = Uri.fromFile(file);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(uri, contentType);
                if (intent.resolveActivity(getContext().getPackageManager()) != null) {
                    startActivity(intent);
                } else if (this.helpshiftDelegate != null) {
                    this.helpshiftDelegate.displayAttachmentFile(file);
                } else if (!isDetached()) {
                    SnackbarUtil.showErrorSnackbar(4, getView());
                }
            } else if (!isDetached()) {
                SnackbarUtil.showErrorSnackbar(5, getView());
            }
        } catch (JSONException e) {
            Log.d(TAG, "launchAttachment : ", e);
        }
    }

    public void updateView(HSMsg msgData) {
        int start = this.messagesListView.getFirstVisiblePosition();
        int end = this.messagesListView.getLastVisiblePosition();
        for (int i = start; i <= end; i++) {
            if (msgData.equals(this.messagesListView.getItemAtPosition(i))) {
                this.adapter.getView(i, this.messagesListView.getChildAt(i - start), this.messagesListView);
                return;
            }
        }
    }

    @TargetApi(13)
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
        menu.add(0, v.getId(), 0, "Copy");
        String copyText = ((TextView) v).getText().toString();
        if (VERSION.SDK_INT >= 13) {
            ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Copy Text", copyText));
        } else {
            ((android.text.ClipboardManager) getContext().getSystemService("clipboard")).setText(copyText);
        }
    }

    public void onDownloadTaskPaused(int position, String msgId, String issueId, int downloadType) {
    }

    public void onDownloadTaskResumed(int position, String msgId, String issueId, int downloadType) {
    }

    public void onDownloadTaskComplete(String filePath, int position, String msgId, String issueId, int downloadType) {
        if (issueId.equals(this.issueId)) {
            HSMsg msgData = (HSMsg) this.messagesList.get(position);
            if (msgId.equals(msgData.id)) {
                switch (downloadType) {
                    case BaseRequest.CreateRoom /*6*/:
                        msgData.state = 3;
                        break;
                    case BaseRequest.GenericMessage /*7*/:
                        msgData.state = 3;
                        msgData.screenshot = filePath;
                        break;
                    case Base64.DO_BREAK_LINES /*8*/:
                        msgData.state = 1;
                        msgData.screenshot = filePath;
                        break;
                }
                updateView(msgData);
                if (isResumed() && downloadType != 8) {
                    launchAttachment(msgData);
                }
            }
        }
    }

    public void onDownloadTaskFailed(int position, String msgId, String issueId, int downloadType) {
        if (issueId.equals(this.issueId)) {
            HSMsg msgData = (HSMsg) this.messagesList.get(position);
            if (msgId.equals(msgData.id)) {
                switch (downloadType) {
                    case BaseRequest.CreateRoom /*6*/:
                        msgData.state = 0;
                        updateView(msgData);
                        return;
                    case BaseRequest.GenericMessage /*7*/:
                        msgData.state = 1;
                        updateView(msgData);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public void onProgressChanged(double progress, int position, String msgId, String issueId, int downloadType) {
        if (issueId.equals(this.issueId)) {
            HSMsg msgData = (HSMsg) this.messagesList.get(position);
            if (!msgId.equals(msgData.id)) {
                return;
            }
            if (downloadType == 6) {
                msgData.state = 2;
                int start = this.messagesListView.getFirstVisiblePosition();
                int end = this.messagesListView.getLastVisiblePosition();
                for (int i = start; i <= end; i++) {
                    if (msgData.equals(this.messagesListView.getItemAtPosition(i))) {
                        View view = this.messagesListView.getChildAt(i - start);
                        ((ProgressBar) view.findViewById(16908301)).setProgress((int) progress);
                        this.adapter.getView(i, view, this.messagesListView);
                        return;
                    }
                }
            } else if (downloadType == 7 && msgData.state != 2) {
                msgData.state = 2;
                updateView(msgData);
            }
        }
    }

    public void retryMessage(final String id) {
        try {
            JSONObject failedMessage = this.hsApiData.storage.popFailedMessage(id, this.hsApiData.getProfileId());
            if (failedMessage != null) {
                JSONObject tempMess = new JSONObject(failedMessage, HSJSONUtils.getJSONObjectKeys(failedMessage));
                tempMess.put("state", 1);
                JSONArray messages = this.hsApiData.getMessagesWithFails(this.issueId);
                messages.put(tempMess);
                refreshMessages(messages);
                this.hsApiData.storage.storeFailedMessage(tempMess, this.hsApiData.getProfileId());
                Handler addMessageHandler = new Handler() {
                    public void handleMessage(Message msg) {
                        super.handleMessage(msg);
                        try {
                            HSMessagesFragment.this.hsApiData.storage.popFailedMessage(id, HSMessagesFragment.this.hsApiData.getProfileId());
                        } catch (JSONException e) {
                            Log.d(HSMessagesFragment.TAG, "addMessageHandler", e);
                        }
                        HSMessagesFragment.this.refreshMessages();
                    }
                };
                addMessage(addMessageHandler, addMessageHandler, failedMessage.getString(MessageColumns.ISSUE_ID), failedMessage.getString(MessageColumns.BODY), failedMessage.getString(MessageColumns.TYPE), failedMessage.getString("refers"), failedMessage.optInt("state", 0) - 1);
            }
        } catch (JSONException e) {
            Log.d(TAG, "retryMessage", e);
        }
    }

    private void addMessage(Handler success, Handler failure, String issueId, String messageText, String type, String refers) {
        this.hsStorage.setScreenShotDraft(Boolean.valueOf(false));
        if (!type.equals("ar")) {
            this.hsApiData.setCSatState(issueId, HS_ISSUE_CSAT_STATE.CSAT_NOT_APPLICABLE);
        }
        this.hsApiData.addMessage(success, failure, issueId, messageText, type, refers);
    }

    private void addMessage(Handler success, Handler failure, String issueId, String messageText, String type, String refers, int failedState) {
        this.hsStorage.setScreenShotDraft(Boolean.valueOf(false));
        if (!type.equals("ar")) {
            this.hsApiData.setCSatState(issueId, HS_ISSUE_CSAT_STATE.CSAT_NOT_APPLICABLE);
        }
        this.hsApiData.addMessage(success, failure, issueId, messageText, type, refers, failedState);
    }

    public LinearLayout getMessageBox() {
        return this.messageBox;
    }
}
