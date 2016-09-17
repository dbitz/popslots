package com.helpshift.support;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.database.SQLException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.Response;
import com.facebook.internal.ServerProtocol;
import com.helpshift.constants.Tables;
import com.helpshift.exceptions.IdentityException;
import com.helpshift.network.HttpStatus;
import com.helpshift.support.HSSearch.HS_SEARCH_OPTIONS;
import com.helpshift.support.constants.GetSectionsCallBackStatus;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.constants.SectionsColumns;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.model.Issue;
import com.helpshift.support.res.values.HSConfig;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.storage.ErrorReportsDataSource;
import com.helpshift.support.storage.FaqDAO;
import com.helpshift.support.storage.FaqsDataSource;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.storage.SectionDAO;
import com.helpshift.support.storage.SectionsDataSource;
import com.helpshift.support.util.AttachmentUtil;
import com.helpshift.support.util.HSNotification;
import com.helpshift.support.util.IssuesUtil;
import com.helpshift.support.util.Meta;
import com.helpshift.util.ApplicationUtil;
import com.helpshift.util.HSFormat;
import com.helpshift.util.HSJSONUtils;
import com.helpshift.util.HelpshiftContext;
import com.helpshift.util.TimeUtil;
import com.helpshift.util.constants.KeyValueStoreColumns;
import com.scene53.utils.NotificationUtils;
import com.scene53.utils.purchase.IabHelper;
import java.io.File;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.ChangeRoomCapacityRequest;
import sfs2x.client.requests.FindUsersRequest;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetMMOItemVariables;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public final class HSApiData {
    public static final int ACTION_EVENTS = 2;
    public static final int CSAT_REQUEST = 4;
    public static final int HIGHEST_RATING = 5;
    public static final int MARK_QUESTION = 0;
    public static final int MESSAGE_SEEN = 3;
    public static final int PUSH_TOKEN = 1;
    public static final String TAG = "HelpShiftDebug";
    protected static boolean faqsSyncing = false;
    public static ArrayList<HSFaqSyncStatusEvents> observers = null;
    private final int FILE_STORE_LIMIT = 10;
    private Context c;
    public HSApiClient client;
    Iterator failedApiKeys = null;
    private FaqDAO faqDAO;
    private ArrayList<Faq> flatFaqList = null;
    private ProfilesManager profilesManager;
    private SectionDAO sectionDAO;
    public HSStorage storage;

    public enum HS_ISSUE_CSAT_STATE {
        CSAT_NOT_APPLICABLE,
        CSAT_APPLICABLE,
        CSAT_REQUESTED,
        CSAT_INPROGRESS,
        CSAT_DONE,
        CSAT_RETRYING
    }

    public HSApiData(Context c) {
        this.c = c;
        this.storage = new HSStorage(c);
        this.client = new HSApiClient(this.storage.getDomain(), this.storage.getAppId(), this.storage.getApiKey(), this.storage);
        this.sectionDAO = new SectionsDataSource();
        this.faqDAO = new FaqsDataSource();
        this.profilesManager = ProfilesManager.getInstance();
    }

    protected static void addFaqSyncStatusObserver(HSFaqSyncStatusEvents observer) {
        if (observers == null) {
            observers = new ArrayList();
        }
        observers.add(observer);
    }

    protected static void removeFaqSyncStatusObserver(HSFaqSyncStatusEvents observer) {
        if (observers != null) {
            observers.remove(observer);
        }
    }

    protected static void signalFaqsUpdated() {
        faqsSyncing = false;
        if (observers != null) {
            for (int i = MARK_QUESTION; i < observers.size(); i += PUSH_TOKEN) {
                HSFaqSyncStatusEvents observer = (HSFaqSyncStatusEvents) observers.get(i);
                if (observer != null) {
                    observer.faqsUpdated();
                }
            }
        }
    }

    protected static void signalSearchIndexesUpdated() {
        if (observers != null) {
            for (int i = MARK_QUESTION; i < observers.size(); i += PUSH_TOKEN) {
                HSFaqSyncStatusEvents observer = (HSFaqSyncStatusEvents) observers.get(i);
                if (observer != null) {
                    observer.searchIndexesUpdated();
                }
            }
        }
    }

    private void sendErrorReportsBatch(String reportType, JSONArray errorReports, final List<String> reportIds) {
        Callback handlerCallbackSuccess = new Callback() {
            public boolean handleMessage(Message message) {
                ErrorReportsDataSource.deleteErrorReports(reportIds);
                return true;
            }
        };
        Callback handlerCallbackFailure = new Callback() {
            public boolean handleMessage(Message message) {
                HSApiData.this.storage.setLastErrorReportedTime((TimeUtil.getAdjustedTimeInMillis(HSApiData.this.storage.getServerTimeDelta()) - ErrorReport.BATCH_TIME) - 1);
                return true;
            }
        };
        Handler success = new Handler(handlerCallbackSuccess);
        Handler failure = new Handler(handlerCallbackFailure);
        HSApiData hsApiData = new HSApiData(HelpshiftContext.getApplicationContext());
        HashMap<String, String> hashMapData = new HashMap();
        hashMapData.put("elv", HSConsts.STATUS_INPROGRESS);
        hashMapData.put("platform", "android");
        hashMapData.put("library-version", this.storage.getLibraryVersion());
        hashMapData.put("domain", this.storage.getDomain());
        hashMapData.put(ErrorReport.KEY_REPORT_TYPE, reportType);
        hashMapData.put("reports", errorReports.toString());
        hsApiData.client.sendErrorReport(success, failure, hashMapData);
    }

    protected void install(String apiKey, String domain, String appId) {
        this.storage.setApiKey(apiKey);
        this.storage.setDomain(domain);
        this.storage.setAppId(appId);
        this.client = new HSApiClient(domain, appId, apiKey, this.storage);
    }

    private void updateFlatList() {
        ArrayList<Section> sections = getSections();
        this.flatFaqList = new ArrayList();
        for (int i = MARK_QUESTION; i < sections.size(); i += PUSH_TOKEN) {
            ArrayList<Faq> faqs = getFaqsDataForSection(((Section) sections.get(i)).getPublishId());
            for (int j = MARK_QUESTION; j < faqs.size(); j += PUSH_TOKEN) {
                this.flatFaqList.add((Faq) faqs.get(j));
            }
        }
    }

    private void getAndStoreSections(final Handler callback, final Handler failure, final FaqTagFilter faqTagFilter) throws SQLException {
        Handler localSuccess = new Handler() {
            public void handleMessage(Message msg) {
                HashMap result = msg.obj;
                Message msgToPost;
                if (result != null) {
                    JSONArray faqs = (JSONArray) result.get("response");
                    HSApiData.this.sectionDAO.clearSectionsData();
                    HSApiData.this.sectionDAO.storeSections(faqs);
                    msgToPost = callback.obtainMessage();
                    msgToPost.obj = HSApiData.this.sectionDAO.getAllSections(faqTagFilter);
                    msgToPost.what = GetSectionsCallBackStatus.API_SUCCESS_NEW_DATA;
                    callback.sendMessage(msgToPost);
                    Thread indexThread = new Thread(new Runnable() {
                        public void run() {
                            HSApiData.this.updateIndex();
                            HSApiData.signalSearchIndexesUpdated();
                        }
                    });
                    indexThread.setDaemon(true);
                    indexThread.start();
                } else {
                    msgToPost = callback.obtainMessage();
                    msgToPost.what = GetSectionsCallBackStatus.API_SUCCESS_NO_NEW_DATA;
                    callback.sendMessage(msgToPost);
                }
                HSApiData.signalFaqsUpdated();
            }
        };
        Handler localFailure = new Handler() {
            public void handleMessage(Message msg) {
                HashMap result = msg.obj;
                HSApiData.faqsSyncing = false;
                Message msgToPost = failure.obtainMessage();
                msgToPost.obj = result;
                msgToPost.what = GetSectionsCallBackStatus.API_FAILURE;
                failure.sendMessage(msgToPost);
            }
        };
        faqsSyncing = true;
        this.client.fetchFaqs(localSuccess, localFailure);
    }

    private void getAndStoreConfig(final Handler callback, Handler failure) throws JSONException {
        this.client.getConfig(new Handler() {
            public void handleMessage(Message msg) {
                HashMap result = msg.obj;
                if (result != null) {
                    JSONObject config = (JSONObject) result.get("response");
                    if (HSApiData.this.storage.getBreadCrumbsLimit().intValue() != config.optInt("bcl", 10)) {
                        HSApiData.this.storage.updateBreadCrumbsLimit(Integer.valueOf(config.optInt("bcl", 10)));
                    }
                    try {
                        JSONObject storedReviewConfig = HSApiData.this.storage.getConfig().optJSONObject("pr");
                        JSONObject reviewConfig = config.optJSONObject("pr");
                        if (!(storedReviewConfig == null || storedReviewConfig.getString(InviteUsersRequest.KEY_TIME).equals(reviewConfig.getString(InviteUsersRequest.KEY_TIME)))) {
                            HSApiData.this.resetReviewCounter();
                        }
                    } catch (JSONException e) {
                        Log.d(HSApiData.TAG, "Reseting counter", e);
                    }
                    HSApiData.this.storage.setConfig(config);
                    Message msgToPost = callback.obtainMessage();
                    msgToPost.obj = config;
                    callback.sendMessage(msgToPost);
                }
            }
        }, failure);
    }

    public void getSections(Handler callback, Handler failure, FaqTagFilter faqTagFilter) {
        ArrayList<Section> sections = null;
        try {
            sections = (ArrayList) this.sectionDAO.getAllSections(faqTagFilter);
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting sections data ", s);
        }
        Message result;
        if (sections != null) {
            result = callback.obtainMessage();
            result.what = GetSectionsCallBackStatus.DATABASE_SUCCESS;
            result.obj = sections;
            callback.sendMessage(result);
        } else {
            result = failure.obtainMessage();
            result.what = GetSectionsCallBackStatus.DATABASE_FAILURE;
            failure.sendMessage(result);
        }
        getAndStoreSections(callback, failure, faqTagFilter);
    }

    protected ArrayList<Section> getSections() {
        ArrayList<Section> sections = null;
        try {
            return (ArrayList) this.sectionDAO.getAllSections();
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting sections data ", s);
            return sections;
        }
    }

    public ArrayList<Section> getPopulatedSections(ArrayList<Section> sections, FaqTagFilter faqTagFilter) {
        ArrayList<Section> sectionsList = new ArrayList();
        for (int i = MARK_QUESTION; i < sections.size(); i += PUSH_TOKEN) {
            if (!isSectionEmpty((Section) sections.get(i), faqTagFilter)) {
                sectionsList.add(sections.get(i));
            }
        }
        return sectionsList;
    }

    protected ArrayList<Section> getPopulatedSections(FaqTagFilter faqTagFilter) {
        ArrayList<Section> sections = null;
        ArrayList<Section> sectionsList = new ArrayList();
        try {
            sections = (ArrayList) this.sectionDAO.getAllSections(faqTagFilter);
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting sections data ", s);
        }
        return getPopulatedSections(sections, faqTagFilter);
    }

    protected boolean isSectionEmpty(Section section, FaqTagFilter faqTagFilter) {
        return getFaqsForSection(section.getPublishId(), faqTagFilter).isEmpty();
    }

    public ArrayList getFaqsForSection(String publishId, FaqTagFilter faqTagFilter) {
        ArrayList<Faq> faqs = new ArrayList();
        try {
            return (ArrayList) this.faqDAO.getFaqsForSection(publishId, faqTagFilter);
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting faqs for section", s);
            return faqs;
        }
    }

    protected ArrayList getFaqsDataForSection(String publishId) {
        ArrayList<Faq> faqs = new ArrayList();
        try {
            return (ArrayList) this.faqDAO.getFaqsDataForSection(publishId);
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting faqs for section", s);
            return faqs;
        }
    }

    protected void getConfig(Handler callback, Handler failure) throws JSONException {
        JSONObject storedConfig = this.storage.getConfig();
        if (storedConfig.length() != 0) {
            Message msgToPost = callback.obtainMessage();
            msgToPost.obj = storedConfig;
            callback.sendMessage(msgToPost);
        }
        getAndStoreConfig(callback, failure);
    }

    private void getAndStoreIssues(Handler callback, Handler failure, String identity, String lastTs, String mc, Boolean onlyNew) throws JSONException {
        getAndStoreIssues(callback, failure, identity, lastTs, mc, onlyNew, null);
    }

    private void getAndStoreIssues(final Handler callback, final Handler failure, String identity, String lastTs, String mc, final Boolean onlyNew, String chatLaunchSource) throws JSONException {
        this.client.fetchMyIssues(new Handler() {
            public void handleMessage(Message msg) {
                try {
                    JSONObject issuesResult = (JSONObject) msg.obj.get("response");
                    String dateStr = issuesResult.getString(ErrorReport.KEY_TIMESTAMP);
                    JSONArray issues = issuesResult.getJSONArray(Tables.ISSUES);
                    JSONArray issuesWithSplitMessages = new JSONArray();
                    int numOfIssues = issues.length();
                    if (numOfIssues > 0) {
                        for (int i = HSApiData.MARK_QUESTION; i < numOfIssues; i += HSApiData.PUSH_TOKEN) {
                            JSONObject issue = issues.getJSONObject(i);
                            JSONArray messages = issue.getJSONArray(Tables.MESSAGES);
                            int messagesLength = messages.length();
                            JSONArray splitMessages = new JSONArray();
                            for (int j = HSApiData.MARK_QUESTION; j < messagesLength; j += HSApiData.PUSH_TOKEN) {
                                JSONObject message = messages.getJSONObject(j);
                                JSONObject metaObj = message.optJSONObject(MessageColumns.META);
                                JSONArray adminAttachments = new JSONArray();
                                if (!(metaObj == null || !metaObj.has("attachments") || message.getString(MessageColumns.TYPE).equals("sc"))) {
                                    adminAttachments = metaObj.getJSONArray("attachments");
                                    metaObj.put("attachments", new JSONArray());
                                    message.put(MessageColumns.META, metaObj);
                                }
                                splitMessages.put(message);
                                int numOfAttachments = adminAttachments.length();
                                if (numOfAttachments > 0) {
                                    for (int k = HSApiData.MARK_QUESTION; k < numOfAttachments; k += HSApiData.PUSH_TOKEN) {
                                        JSONObject attachmentObject = adminAttachments.getJSONObject(k);
                                        JSONObject attachmentMessage = new JSONObject();
                                        attachmentMessage.put(MessageColumns.ISSUE_ID, message.getString(MessageColumns.ISSUE_ID));
                                        attachmentMessage.put(MessageColumns.AUTHOR, message.getJSONObject(MessageColumns.AUTHOR));
                                        attachmentMessage.put(MessageColumns.META, new JSONObject());
                                        attachmentMessage.put(LoginRequest.KEY_ID, message.getString(LoginRequest.KEY_ID) + "_" + k);
                                        attachmentMessage.put(MessageColumns.BODY, attachmentObject.toString());
                                        attachmentMessage.put(MessageColumns.ORIGIN, message.getString(MessageColumns.ORIGIN));
                                        attachmentMessage.put(MessageColumns.CREATED_AT, HSFormat.addMilliSeconds(HSFormat.inputMsgFormatter, message.getString(MessageColumns.CREATED_AT), k + HSApiData.PUSH_TOKEN));
                                        if (Boolean.valueOf(attachmentObject.optBoolean("image", false)).booleanValue()) {
                                            attachmentMessage.put(MessageColumns.TYPE, HSConsts.ADMIN_ATTACHMENT_IMAGE_TYPE);
                                        } else {
                                            attachmentMessage.put(MessageColumns.TYPE, HSConsts.ADMIN_ATTACHMENT_GENERIC_TYPE);
                                        }
                                        splitMessages.put(attachmentMessage);
                                    }
                                }
                            }
                            issue.put(Tables.MESSAGES, new JSONArray(splitMessages.toString()));
                            issuesWithSplitMessages.put(issue);
                        }
                    }
                    issues = new JSONArray(issuesWithSplitMessages.toString());
                    HSApiData.this.storage.setIssuesTs(dateStr, HSApiData.this.getProfileId());
                    if (issues.length() > 0) {
                        HSApiData.this.storage.storeIssues(issues, HSApiData.this.getProfileId());
                    }
                    Message msgToPost = callback.obtainMessage();
                    if (onlyNew.booleanValue()) {
                        msgToPost.obj = issues;
                        if (issues.length() > 0) {
                            callback.sendMessage(msgToPost);
                        } else {
                            HSApiData.this.sendFailMessage(failure, -1);
                        }
                    } else {
                        msgToPost.obj = IssuesDataSource.getIssues(HSApiData.this.getProfileId());
                        callback.sendMessage(msgToPost);
                    }
                    HSApiData.this.rfrCheck(issues);
                } catch (JSONException e) {
                    Log.d(HSApiData.TAG, "JSON Exception!!!", e);
                }
            }
        }, failure, identity, lastTs, mc, chatLaunchSource);
    }

    private void rfrCheck(JSONArray issues) {
        int i = MARK_QUESTION;
        while (i < issues.length()) {
            try {
                JSONObject issue = issues.getJSONObject(i);
                JSONArray messages = issue.getJSONArray(Tables.MESSAGES);
                if (messages.length() > 0) {
                    JSONObject lastMessage = messages.getJSONObject(messages.length() - 1);
                    if (lastMessage.getString(MessageColumns.ORIGIN).equals("admin") && lastMessage.getString(MessageColumns.TYPE).equals("rfr")) {
                        rfrRequested(issue.getString(LoginRequest.KEY_ID), lastMessage);
                    }
                }
                i += PUSH_TOKEN;
            } catch (JSONException e) {
                Log.d(TAG, "rfrCheck", e);
                return;
            }
        }
    }

    private void rfrRequested(String issueId, JSONObject message) {
        String viewState = HelpshiftContext.getViewState();
        String activeConversationId = this.storage.getActiveConversation(getProfileId());
        if (HSConsts.ISSUE_FILING.equals(viewState)) {
            rfrRejected(issueId, message, getRfrFailedMessageMeta(PUSH_TOKEN, null));
        } else if (HSConsts.MESSAGE_FILING.equals(viewState)) {
            rfrRejected(issueId, message, getRfrFailedMessageMeta(MESSAGE_SEEN, null));
        } else if (TextUtils.isEmpty(activeConversationId) || activeConversationId.equals(issueId)) {
            rfrAccepted(issueId, message);
        } else {
            rfrRejected(issueId, message, getRfrFailedMessageMeta(ACTION_EVENTS, activeConversationId));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.json.JSONObject getRfrFailedMessageMeta(int r5, java.lang.String r6) {
        /*
        r4 = this;
        r1 = new org.json.JSONObject;
        r1.<init>();
        switch(r5) {
            case 1: goto L_0x0009;
            case 2: goto L_0x001b;
            case 3: goto L_0x0028;
            default: goto L_0x0008;
        };
    L_0x0008:
        return r1;
    L_0x0009:
        r2 = "reason";
        r1.put(r2, r5);	 Catch:{ JSONException -> 0x0010 }
        goto L_0x0008;
    L_0x0010:
        r0 = move-exception;
        r2 = "HelpShiftDebug";
        r3 = "getRfrFailedMessageMeta";
        android.util.Log.d(r2, r3, r0);
        goto L_0x0008;
    L_0x001b:
        r2 = "reason";
        r1.put(r2, r5);	 Catch:{ JSONException -> 0x0010 }
        r2 = "open-issue-id";
        r1.put(r2, r6);	 Catch:{ JSONException -> 0x0010 }
        goto L_0x0008;
    L_0x0028:
        r2 = "reason";
        r1.put(r2, r5);	 Catch:{ JSONException -> 0x0010 }
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.helpshift.support.HSApiData.getRfrFailedMessageMeta(int, java.lang.String):org.json.JSONObject");
    }

    private void rfrAccepted(final String issueId, JSONObject message) {
        String messageId = null;
        try {
            messageId = message.getString(LoginRequest.KEY_ID);
        } catch (JSONException e) {
            Log.d(TAG, "rfrAccepted", e);
        }
        Handler localSuccess = new Handler() {
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                try {
                    Issue issue = IssuesDataSource.getIssue(issueId);
                    int messageCount = issue.getNewMessagesCount();
                    if (messageCount != 0 && !issueId.equals(HSApiData.this.storage.getForegroundIssue())) {
                        HSNotification.showNotif(HSApiData.this.c, issueId, (int) HSFormat.issueTsFormat.parse(issue.getCreatedAt()).getTime(), messageCount, IabHelper.ITEM_TYPE_INAPP, HSNotification.getApplicationName(HSApiData.this.c));
                    }
                } catch (ParseException e) {
                    Log.d(HSApiData.TAG, "rfrAccepted", e);
                }
            }
        };
        Issue.openIssue(issueId);
        addMessage(localSuccess, new Handler(), issueId, "Accepted the follow-up", "ra", messageId);
    }

    private void rfrRejected(String issueId, JSONObject message, JSONObject messageMeta) {
        String messageId = null;
        try {
            messageId = message.getString(LoginRequest.KEY_ID);
        } catch (JSONException e) {
            Log.d(TAG, "rfrRejected", e);
        }
        addMessage(new Handler(), new Handler(), issueId, "Rejected the follow-up", "rj", messageId, messageMeta);
    }

    private String generateMC() throws JSONException {
        JSONObject mc = new JSONObject();
        for (Issue issue : IssuesDataSource.getIssues(getProfileId())) {
            List<com.helpshift.support.model.Message> messageList = issue.getMessageList();
            for (int i = messageList.size() - 1; i > 0; i--) {
                com.helpshift.support.model.Message message = (com.helpshift.support.model.Message) messageList.get(i);
                if (!message.getMessageId().startsWith(AttachmentUtil.LOCAL_RSC_MSG_ID_PREFIX)) {
                    mc.put(issue.getIssueId(), message.getCreatedAt());
                    break;
                }
            }
        }
        return mc.toString();
    }

    private void sendFailMessage(Handler failure, int status) {
        Message result = failure.obtainMessage();
        HashMap messageResponse = new HashMap();
        messageResponse.put(IssueColumns.STATUS, Integer.valueOf(status));
        result.obj = messageResponse;
        failure.sendMessage(result);
    }

    public void getLatestIssues(Handler callback, Handler failure) throws JSONException {
        getLatestIssues(callback, failure, null);
    }

    protected void getLatestIssues(Handler callback, Handler failure, String chatLaunchSource) throws JSONException {
        HashMap ts = this.storage.getIssuesTs(getProfileId());
        String profileId = getProfileId();
        if (TextUtils.isEmpty(profileId)) {
            sendFailMessage(failure, HttpStatus.SC_FORBIDDEN);
        } else if (ts.containsKey(Response.SUCCESS_KEY)) {
            getAndStoreIssues(callback, failure, profileId, (String) ts.get("ts"), generateMC(), Boolean.valueOf(true), chatLaunchSource);
        } else {
            getAndStoreIssues(callback, failure, profileId, "", "", Boolean.valueOf(true), chatLaunchSource);
        }
    }

    protected void getAllIssues(Handler callback, Handler failure) throws JSONException {
        String profileId = getProfileId();
        if (TextUtils.isEmpty(profileId)) {
            sendFailMessage(failure, HttpStatus.SC_FORBIDDEN);
            return;
        }
        getAndStoreIssues(callback, failure, profileId, "", "", Boolean.valueOf(false));
    }

    public void getIssues(Handler callback, Handler failure) throws JSONException {
        String profileId = getProfileId();
        HashMap ts = this.storage.getIssuesTs(profileId);
        if (TextUtils.isEmpty(profileId)) {
            sendFailMessage(failure, HttpStatus.SC_FORBIDDEN);
        } else if (ts.containsKey(Response.SUCCESS_KEY)) {
            List<Issue> issueList = IssuesDataSource.getIssues(getProfileId());
            Message issuesMess = callback.obtainMessage();
            issuesMess.obj = issueList;
            callback.sendMessage(issuesMess);
        } else {
            getAndStoreIssues(callback, failure, profileId, "", "", Boolean.valueOf(false));
        }
    }

    protected JSONObject getMetaInfo(Boolean isAddInfo) {
        if (isCustomIdentifier().booleanValue()) {
            return Meta.getMetaInfo(this.c, isAddInfo, getDeviceIdentifier());
        }
        return Meta.getMetaInfo(this.c, isAddInfo, null);
    }

    private JSONObject filterForPrivateData(JSONObject input) {
        try {
            input.getJSONObject(ErrorReport.KEY_DEVICE_INFO).remove("country-code");
            input.getJSONObject("custom_meta").remove("private-data");
        } catch (JSONException e) {
            Log.d(TAG, "Exception is filtering metaData ", e);
        }
        return input;
    }

    protected JSONObject getFilteredMetaData(Boolean isAddInfo, HashMap userInfo) {
        JSONObject metaInfo = getMetaInfo(isAddInfo);
        if (userInfo != null) {
            try {
                metaInfo.put("user_info", new JSONObject(userInfo));
            } catch (JSONException e) {
                Log.d(TAG, "userInfo JSONException", e);
            }
        }
        if (this.storage.getEnableFullPrivacy().booleanValue()) {
            filterForPrivateData(metaInfo);
        }
        return metaInfo;
    }

    public void createIssue(Handler success, Handler failure, String messageText, HashMap userInfo) throws IdentityException {
        final String profileId = getProfileId();
        if (TextUtils.isEmpty(profileId)) {
            throw new IdentityException("Identity not found");
        }
        final JSONObject metaInfo = getFilteredMetaData(Boolean.valueOf(true), userInfo);
        final Handler handler = success;
        final Handler handler2 = failure;
        final String str = messageText;
        this.client.createIssue(success, new Handler() {
            public void handleMessage(Message msg) {
                HashMap result = msg.obj;
                if (((Integer) result.get(IssueColumns.STATUS)).intValue() == HttpStatus.SC_REQUEST_TOO_LONG) {
                    metaInfo.remove("custom_meta");
                    HSApiData.this.client.createIssue(handler, handler2, profileId, str, metaInfo.toString());
                    return;
                }
                Message fmsg = handler2.obtainMessage();
                fmsg.obj = result;
                handler2.sendMessage(fmsg);
            }
        }, profileId, messageText, metaInfo.toString());
    }

    protected void addMessage(Handler success, Handler failure, String issueId, String messageText, String type, String refers, JSONObject messageMeta) {
        addMessage(success, failure, issueId, messageText, type, refers, -1, messageMeta.toString());
    }

    protected void addMessage(Handler success, Handler failure, String issueId, String messageText, String type, String refers) {
        addMessage(success, failure, issueId, messageText, type, refers, -1, null);
    }

    protected void addMessage(Handler success, Handler failure, String issueId, String messageText, String type, String refers, int failedState) {
        addMessage(success, failure, issueId, messageText, type, refers, failedState, null);
    }

    protected void addMessage(Handler success, Handler failure, String issueId, String messageText, String type, String refers, int failedState, String messageMeta) {
        final String profileId = getProfileId();
        final String str = issueId;
        final String str2 = messageText;
        final String str3 = type;
        final String str4 = refers;
        final int i = failedState;
        final Handler handler = failure;
        this.client.addMessage(success, new Handler() {
            public void handleMessage(Message msg) {
                try {
                    HSApiData.this.storage.storeFailedMessage(str, str2, str3, str4, i, profileId);
                } catch (JSONException e) {
                    Log.d(HSApiData.TAG, "JSON Exception", e);
                }
                Message fmsg = handler.obtainMessage();
                fmsg.obj = (HashMap) msg.obj;
                handler.sendMessage(fmsg);
            }
        }, profileId, issueId, messageText, type, refers, messageMeta);
    }

    public void markQuestion(Handler success, final Handler failure, final String faqId, final Boolean helpful) {
        final String str = faqId;
        final Boolean bool = helpful;
        final Handler handler = success;
        final Handler handler2 = failure;
        Handler localSuccess = new Handler() {
            public void handleMessage(Message msg) {
                try {
                    if (((JSONObject) msg.obj.get("response")).getString(IssueColumns.STATUS).equals("marked")) {
                        HSApiData.this.faqDAO.setIsHelpful(str, bool);
                        Message msgToPost = handler.obtainMessage();
                        msgToPost.obj = bool;
                        handler.sendMessage(msgToPost);
                    }
                } catch (JSONException e) {
                    handler2.sendMessage(handler2.obtainMessage());
                    Log.d(HSApiData.TAG, "JSON Exception", e);
                }
            }
        };
        Handler localFailure = new Handler() {
            public void handleMessage(Message msg) {
                HSApiData.this.faqDAO.setIsHelpful(faqId, helpful);
                Message msgToPost = failure.obtainMessage();
                msgToPost.obj = msg.obj;
                failure.sendMessage(msgToPost);
            }
        };
        if (helpful.booleanValue()) {
            this.client.markHelpful(localSuccess, localFailure, faqId);
        } else {
            this.client.markUnhelpful(localSuccess, localFailure, faqId);
        }
    }

    public ArrayList localFaqSearch(String query, HS_SEARCH_OPTIONS options) {
        return localFaqSearch(query, options, null);
    }

    public ArrayList localFaqSearch(String query, HS_SEARCH_OPTIONS options, FaqTagFilter faqTagFilter) {
        if (this.flatFaqList == null) {
            updateFlatList();
        } else {
            Iterator it = this.flatFaqList.iterator();
            while (it.hasNext()) {
                ((Faq) it.next()).clearSearchTerms();
            }
        }
        LinkedHashSet<Faq> result = new LinkedHashSet();
        String lcQuery = query.toLowerCase();
        Faq faq;
        if (this.storage.getDBFlag().booleanValue()) {
            HashMap docIdTermsMap;
            HashMap fullIndex = this.storage.readIndex();
            HashMap tfidf = null;
            HashMap fuzzyIndex = null;
            if (fullIndex != null) {
                tfidf = (HashMap) fullIndex.get(SetMMOItemVariables.KEY_ITEM_ID);
                fuzzyIndex = (HashMap) fullIndex.get(HSFunnel.READ_FAQ);
            }
            ArrayList<HashMap> tfidfResults = HSSearch.queryDocs(query, tfidf, options);
            ArrayList<HashMap> fuzzyMatches = HSSearch.getFuzzyMatches(query, fuzzyIndex);
            Iterator it2 = tfidfResults.iterator();
            while (it2.hasNext()) {
                docIdTermsMap = (HashMap) it2.next();
                faq = (Faq) this.flatFaqList.get(Integer.decode((String) docIdTermsMap.get(HSFunnel.READ_FAQ)).intValue());
                faq.addSearchTerms((ArrayList) docIdTermsMap.get(InviteUsersRequest.KEY_TIME));
                result.add(faq);
            }
            it2 = fuzzyMatches.iterator();
            while (it2.hasNext()) {
                docIdTermsMap = (HashMap) it2.next();
                faq = (Faq) this.flatFaqList.get(Integer.decode((String) docIdTermsMap.get(HSFunnel.READ_FAQ)).intValue());
                faq.addSearchTerms((ArrayList) docIdTermsMap.get(InviteUsersRequest.KEY_TIME));
                result.add(faq);
            }
        } else {
            for (int i = MARK_QUESTION; i < this.flatFaqList.size(); i += PUSH_TOKEN) {
                faq = (Faq) this.flatFaqList.get(i);
                if (faq.getTitle().toLowerCase().indexOf(lcQuery) != -1) {
                    result.add(faq);
                }
            }
        }
        if (faqTagFilter != null) {
            return new ArrayList(this.faqDAO.getFilteredFaqs(new ArrayList(result), faqTagFilter));
        }
        return new ArrayList(result);
    }

    public ArrayList getAllFaqs(FaqTagFilter faqTagFilter) {
        if (this.flatFaqList == null) {
            updateFlatList();
        } else {
            Iterator it = this.flatFaqList.iterator();
            while (it.hasNext()) {
                ((Faq) it.next()).clearSearchTerms();
            }
        }
        if (faqTagFilter != null) {
            return new ArrayList(this.faqDAO.getFilteredFaqs(new ArrayList(this.flatFaqList), faqTagFilter));
        }
        return this.flatFaqList;
    }

    protected void getNotificationCount(final Handler success, Handler failure) {
        try {
            getLatestIssues(new Handler() {
                public void handleMessage(Message msg) {
                    Integer activeCnt = HSApiData.this.storage.getActiveNotifCnt(HSApiData.this.getProfileId());
                    Message msgToPost = success.obtainMessage();
                    Bundle countData = new Bundle();
                    countData.putInt(KeyValueStoreColumns.value, activeCnt.intValue());
                    countData.putBoolean("cache", false);
                    msgToPost.obj = countData;
                    success.sendMessage(msgToPost);
                }
            }, failure);
        } catch (JSONException e) {
            Log.d(TAG, e.toString(), e);
        }
    }

    protected void getNotificationData(Handler success, Handler failure) {
        try {
            getLatestIssues(success, failure);
        } catch (JSONException e) {
            Log.d(TAG, e.toString(), e);
        }
    }

    protected void reportAppStartEvent() {
        JSONArray actions = new JSONArray();
        JSONObject eventObj = new JSONObject();
        try {
            eventObj.put("ts", HSFormat.tsSecFormatter.format(((double) System.currentTimeMillis()) / 1000.0d));
            eventObj.put(InviteUsersRequest.KEY_TIME, "a");
            actions.put(eventObj);
        } catch (JSONException e) {
            Log.d(TAG, "JSONException", e);
        }
        reportActionEvents(actions);
    }

    public void reportActionEvents() {
        reportActionEvents(HSFunnel.takeActions());
    }

    private void reportActionEvents(JSONArray actions) {
        String identifier = getLoggedInHSId();
        String profileId = getProfileId();
        HSApiClient hSApiClient = this.client;
        String libraryVersion = SupportInternal.libraryVersion;
        String sdkType = this.storage.getSdkType();
        String deviceId = getDeviceIdentifier();
        String uid = null;
        String deviceModel = Build.MODEL;
        String os = VERSION.RELEASE;
        String appVersion = ApplicationUtil.getApplicationVersion(this.c);
        String rom = System.getProperty("os.version") + ":" + Build.FINGERPRINT;
        String cc = ((TelephonyManager) this.c.getSystemService("phone")).getSimCountryIso();
        String ln = Locale.getDefault().getLanguage();
        if (!identifier.equals(deviceId)) {
            uid = deviceId;
        }
        HashMap params = new HashMap();
        params.put(LoginRequest.KEY_ID, identifier);
        if (uid != null) {
            params.put("uid", uid);
        }
        if (!TextUtils.isEmpty(profileId)) {
            params.put("profile-id", profileId);
        }
        params.put(SetUserPositionRequest.KEY_VEC3D, libraryVersion);
        params.put(FindUsersRequest.KEY_EXPRESSION, actions.toString());
        params.put(ChangeRoomCapacityRequest.KEY_SPEC_SIZE, sdkType);
        params.put("dm", deviceModel);
        params.put("os", os);
        params.put("av", appVersion);
        params.put(LoginRequest.KEY_RECONNECTION_SECONDS, rom);
        if (!TextUtils.isEmpty(cc)) {
            params.put("cc", cc);
        }
        params.put("ln", ln);
        String key = "action_event_" + Long.toString(System.currentTimeMillis());
        reportActionEvents(new Handler(), getApiFailHandler(new Handler(), key, ACTION_EVENTS, new JSONObject(params)), params);
    }

    private void reportActionEvents(Handler success, Handler failure, HashMap<String, String> params) {
        this.client.reportActionEvents(success, failure, params);
    }

    protected Boolean showReviewP() {
        if (this.storage.getReviewed() == 0) {
            JSONObject pr = (JSONObject) HSConfig.configData.get("pr");
            String rurl = (String) HSConfig.configData.get("rurl");
            if (!(pr == null || !pr.optBoolean(ChangeRoomCapacityRequest.KEY_SPEC_SIZE, false) || TextUtils.isEmpty(rurl))) {
                int reviewCount = this.storage.getReviewCounter();
                String counterType = pr.optString(InviteUsersRequest.KEY_TIME, "");
                int counterInterval = pr.optInt(SetMMOItemVariables.KEY_ITEM_ID, MARK_QUESTION);
                if (counterInterval > 0) {
                    if (counterType.equals(FindUsersRequest.KEY_LIMIT) && reviewCount >= counterInterval) {
                        return Boolean.valueOf(true);
                    }
                    if (counterType.equals(ChangeRoomCapacityRequest.KEY_SPEC_SIZE) && reviewCount != 0 && (new Date().getTime() / 1000) - ((long) reviewCount) >= ((long) counterInterval)) {
                        return Boolean.valueOf(true);
                    }
                }
            }
        }
        return Boolean.valueOf(false);
    }

    protected void loadConfig() {
        try {
            JSONObject pr = (JSONObject) HSConfig.configData.get("pr");
            JSONObject storedConfig = this.storage.getConfig();
            if (pr == null && storedConfig.length() != 0) {
                HSConfig.updateConfig(storedConfig);
            }
        } catch (JSONException e) {
            Log.d(TAG, "JSON Exception:" + e.toString());
        }
    }

    protected void updateReviewCounter() {
        int reviewCounter = this.storage.getReviewCounter();
        int launchReviewCounter = this.storage.getLaunchReviewCounter();
        if (reviewCounter == 0) {
            launchReviewCounter = reviewCounter;
            reviewCounter = (int) (new Date().getTime() / 1000);
        }
        this.storage.setLaunchReviewCounter(launchReviewCounter + PUSH_TOKEN);
        loadConfig();
        JSONObject pr = (JSONObject) HSConfig.configData.get("pr");
        if (pr != null && pr.optString(InviteUsersRequest.KEY_TIME, "").equals(FindUsersRequest.KEY_LIMIT)) {
            reviewCounter = this.storage.getLaunchReviewCounter();
        }
        this.storage.setReviewCounter(reviewCounter);
    }

    protected void resetReviewCounter() {
        int reviewCounter = this.storage.getReviewCounter();
        try {
            JSONObject pr = this.storage.getConfig().optJSONObject("pr");
            if (pr != null) {
                String counterType = pr.optString(InviteUsersRequest.KEY_TIME, "");
                if (counterType.equals(ChangeRoomCapacityRequest.KEY_SPEC_SIZE)) {
                    reviewCounter = (int) (new Date().getTime() / 1000);
                } else if (counterType.equals(FindUsersRequest.KEY_LIMIT)) {
                    reviewCounter = MARK_QUESTION;
                }
                this.storage.setReviewCounter(reviewCounter);
                this.storage.setLaunchReviewCounter(MARK_QUESTION);
            }
        } catch (JSONException e) {
            Log.d(TAG, "Reseting review counter", e);
        }
    }

    protected void enableReview() {
        this.storage.enableReview();
    }

    protected void disableReview() {
        this.storage.setReviewed();
    }

    protected void getAndStoreMessages(String issueId, final Handler success, Handler failure, String chatLaunchSource) throws JSONException {
        com.helpshift.support.model.Message lastMessage;
        String profileId = getProfileId();
        List<com.helpshift.support.model.Message> messageList = IssuesDataSource.getIssue(issueId).getMessageList();
        if (messageList.size() == 0) {
            lastMessage = (com.helpshift.support.model.Message) messageList.get(MARK_QUESTION);
        } else {
            lastMessage = (com.helpshift.support.model.Message) messageList.get(messageList.size() - 1);
        }
        this.client.fetchMessages(new Handler() {
            public void handleMessage(Message msg) {
                JSONArray messages = (JSONArray) msg.obj.get("response");
                IssuesDataSource.storeMessages(IssuesUtil.jsonArrayToMessageList(messages));
                Message msgToPost = success.obtainMessage();
                msgToPost.obj = messages;
                success.sendMessage(msgToPost);
            }
        }, failure, profileId, issueId, lastMessage.getCreatedAt(), chatLaunchSource);
    }

    protected String getDeviceIdentifier() {
        String deviceId = this.storage.getDeviceIdentifier();
        return !TextUtils.isEmpty(deviceId) ? deviceId : getHSId();
    }

    protected String getUUID() {
        String id = this.storage.getUUID();
        if (!TextUtils.isEmpty(id)) {
            return id;
        }
        id = UUID.randomUUID().toString();
        this.storage.setUUID(id);
        return id;
    }

    protected String getLoggedInHSId() {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            return getHSId();
        }
        return this.profilesManager.getProfile(id).getSaltedIdentifier();
    }

    protected String getHSId() {
        String profile_id = this.storage.getIdentity();
        String uuid = this.storage.getUUID();
        if (TextUtils.isEmpty(profile_id) || !TextUtils.isEmpty(uuid)) {
            return getUUID();
        }
        return Secure.getString(this.c.getContentResolver(), "android_id");
    }

    protected void deleteFiles(List<String> filenames) {
        for (int i = MARK_QUESTION; i < filenames.size(); i += PUSH_TOKEN) {
            new File(this.c.getFilesDir(), (String) filenames.get(i)).delete();
        }
    }

    public void storeFile(String fileName) {
        try {
            int i;
            JSONArray fileJsonList = this.storage.getStoredFiles();
            List<String> fileArrayList = new ArrayList();
            for (i = MARK_QUESTION; i < fileJsonList.length(); i += PUSH_TOKEN) {
                fileArrayList.add(fileJsonList.getString(i));
            }
            fileArrayList.add(MARK_QUESTION, fileName);
            JSONArray finalFileJsonList;
            if (fileArrayList.size() > 10) {
                List<String> finalFileArrayList = fileArrayList.subList(MARK_QUESTION, 10);
                finalFileJsonList = new JSONArray();
                for (i = MARK_QUESTION; i < finalFileArrayList.size(); i += PUSH_TOKEN) {
                    finalFileJsonList.put(finalFileArrayList.get(i));
                }
                deleteFiles(fileArrayList.subList(10, fileArrayList.size()));
                this.storage.setStoredFiles(finalFileJsonList);
                return;
            }
            finalFileJsonList = new JSONArray();
            for (i = MARK_QUESTION; i < fileArrayList.size(); i += PUSH_TOKEN) {
                finalFileJsonList.put(fileArrayList.get(i));
            }
            this.storage.setStoredFiles(finalFileJsonList);
        } catch (JSONException e) {
            Log.d(TAG, "storeFile", e);
        }
    }

    public void registerProfile(final Handler success, Handler failure, String username, String email, String identifier) {
        String crittercismId = null;
        try {
            crittercismId = (String) Class.forName("com.crittercism.app.Crittercism").getMethod("getUserUUID", (Class[]) null).invoke(null, (Object[]) null);
        } catch (ClassNotFoundException cnfe) {
            Log.d(TAG, "If you are not using Crittercism. Please ignore this", cnfe);
        } catch (Exception e) {
            Log.d(TAG, "If you are not using Crittercism. Please ignore this", e);
        }
        this.client.registerProfile(new Handler() {
            public void handleMessage(Message msg) {
                Message msgToPost = success.obtainMessage();
                msgToPost.obj = msg.obj;
                success.sendMessage(msgToPost);
            }
        }, failure, username, email, identifier, crittercismId);
    }

    public void updateUAToken() {
        String profileId = getProfileId();
        String deviceToken = this.storage.getDeviceToken();
        JSONObject params = new JSONObject();
        try {
            params.put("profile-id", profileId);
            params.put("device-token", deviceToken);
        } catch (JSONException e) {
            Log.d(TAG, "JSONException", e);
        }
        updateUAToken(new Handler(), getApiFailHandler(new Handler(), "push_token_" + profileId, PUSH_TOKEN, params), profileId, deviceToken);
    }

    private void updateUAToken(final Handler success, final Handler failure, String profileId, String deviceToken) {
        if (!TextUtils.isEmpty(deviceToken)) {
            this.client.updateUAToken(new Handler() {
                public void handleMessage(Message msg) {
                    Message msgToPost = success.obtainMessage();
                    msgToPost.obj = msg.obj;
                    success.sendMessage(msgToPost);
                    HSApiData.this.stopInAppService();
                }
            }, new Handler() {
                public void handleMessage(Message msg) {
                    Message msgToPost = failure.obtainMessage();
                    msgToPost.obj = msg.obj;
                    failure.sendMessage(msgToPost);
                }
            }, deviceToken, profileId);
        }
    }

    protected Boolean isCustomIdentifier() {
        return Boolean.valueOf(!TextUtils.isEmpty(this.storage.getDeviceIdentifier()));
    }

    private void updateIndex() {
        this.storage.deleteIndex();
        updateFlatList();
        HashMap index = HSSearch.indexDocuments(new ArrayList(this.flatFaqList));
        if (index != null) {
            this.storage.storeIndex(index);
        }
    }

    public void loadIndex() {
        Thread loadIndexThread = new Thread(new Runnable() {
            public void run() {
                HSApiData.this.storage.loadIndex();
            }
        });
        loadIndexThread.setDaemon(true);
        loadIndexThread.start();
    }

    public void getSection(final String publishId, final Handler success, Handler failure, FaqTagFilter faqTagFilter) {
        try {
            Section section = this.sectionDAO.getSection(publishId);
            if (section != null) {
                Message msgToPost = success.obtainMessage();
                msgToPost.obj = section;
                success.sendMessage(msgToPost);
            }
            getAndStoreSections(new Handler() {
                public void handleMessage(Message msg) {
                    super.handleMessage(msg);
                    ArrayList<Section> sections = msg.obj;
                    Section toReturn = HSApiData.this.sectionDAO.getSection(publishId);
                    Message msgToPost = success.obtainMessage();
                    msgToPost.obj = toReturn;
                    success.sendMessage(msgToPost);
                }
            }, failure, faqTagFilter);
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting section data ", s);
        }
    }

    public Section getSection(String publishId) {
        return this.sectionDAO.getSection(publishId);
    }

    public void getSectionSync(String publishId, Handler success, Handler failure) {
        try {
            Section section = this.sectionDAO.getSection(publishId);
            if (section != null) {
                Message msgToPost = success.obtainMessage();
                msgToPost.obj = section;
                success.sendMessage(msgToPost);
                return;
            }
            failure.sendMessage(failure.obtainMessage());
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting section data ", s);
        }
    }

    private String getPublishIdFromSectionId(String sectionId) {
        ArrayList<Section> sections = getSections();
        String sectionPublishId = "";
        for (int i = MARK_QUESTION; i < sections.size(); i += PUSH_TOKEN) {
            Section sectionItem = (Section) sections.get(i);
            if (sectionItem.getSectionId().equals(sectionId)) {
                sectionPublishId = sectionItem.getPublishId();
            }
        }
        return sectionPublishId;
    }

    private void getQuestionAsync(String publishId, final Handler success, Handler failure) {
        this.client.getQuestion(publishId, new Handler() {
            public void handleMessage(Message msg) {
                Message msgToPost = success.obtainMessage();
                HashMap result = msg.obj;
                if (result != null) {
                    try {
                        JSONObject question = (JSONObject) result.get("response");
                        Faq newFaq = new Faq(0, question.getString(LoginRequest.KEY_ID), question.getString(SectionsColumns.PUBLISH_ID), HSApiData.this.getPublishIdFromSectionId(question.getString(SectionsColumns.SECTION_ID)), question.getString(SectionsColumns.TITLE), question.getString(MessageColumns.BODY), HSApiData.MARK_QUESTION, Boolean.valueOf(question.getString("is_rtl") == ServerProtocol.DIALOG_RETURN_SCOPES_TRUE), question.has("stags") ? HSJSONUtils.jsonToStringArrayList(question.getString("stags")) : new ArrayList(), question.has("issue_tags") ? HSJSONUtils.jsonToStringArrayList(question.getString("issue_tags")) : new ArrayList());
                        msgToPost.obj = newFaq;
                        success.sendMessage(msgToPost);
                        HSApiData.this.faqDAO.addFaq(newFaq);
                    } catch (JSONException e) {
                        Log.d(HSApiData.TAG, "Exception in getting question " + e);
                    }
                }
            }
        }, failure);
    }

    public void getQuestion(String publishId, Handler success, Handler failure) {
        Faq question = null;
        try {
            question = this.faqDAO.getFaq(publishId);
        } catch (SQLException s) {
            Log.d(TAG, "Database exception in getting faq ", s);
        }
        if (question == null) {
            getQuestionAsync(publishId, success, failure);
            return;
        }
        Message msgToPost = success.obtainMessage();
        msgToPost.obj = question;
        success.sendMessage(msgToPost);
        getQuestionAsync(publishId, success, failure);
    }

    protected void resetServiceInterval() {
        HSService.resetInterval();
    }

    protected void stopInAppService() {
        this.c.stopService(new Intent(this.c, HSService.class));
    }

    public void startInAppService() {
        Boolean enableInAppNotification = Boolean.valueOf(true);
        JSONObject config = new JSONObject();
        String deviceToken = this.storage.getDeviceToken();
        try {
            config = this.storage.getAppConfig();
            if (config.has("enableInAppNotification")) {
                enableInAppNotification = (Boolean) config.get("enableInAppNotification");
            }
        } catch (JSONException e) {
            Log.d(TAG, "startInAppService JSONException", e);
        }
        if (enableInAppNotification.booleanValue() && (deviceToken.equals("") || deviceToken.equals("unreg"))) {
            String profileId = getProfileId();
            String conversation = this.storage.getActiveConversation(getProfileId());
            if (!TextUtils.isEmpty(profileId) && !TextUtils.isEmpty(conversation)) {
                Intent service = new Intent(this.c, HSService.class);
                if (!this.storage.getLibraryVersion().equals(SupportInternal.libraryVersion)) {
                    stopInAppService();
                }
                this.c.startService(service);
                return;
            }
            return;
        }
        stopInAppService();
    }

    protected JSONArray getMessagesWithFails(String issueId) {
        try {
            return this.storage.mergeMessages(this.storage.getFailedMessages(issueId, getProfileId()), IssuesUtil.messageListToJSONArray(IssuesDataSource.getIssue(issueId).getMessageList()));
        } catch (JSONException e) {
            Log.d(TAG, "JSONException", e);
            return new JSONArray();
        }
    }

    protected void sendFailedMessages() {
        try {
            JSONObject failedMessage = this.storage.popFailedMessage(getProfileId());
            if (failedMessage != null) {
                Handler localSuccess = new Handler() {
                    public void handleMessage(Message msg) {
                        HSApiData.this.sendFailedMessages();
                        HSApiData.this.c.sendBroadcast(new Intent("com.helpshift.failedMessageRequest"));
                    }
                };
                addMessage(localSuccess, localSuccess, failedMessage.getString(MessageColumns.ISSUE_ID), failedMessage.getString(MessageColumns.BODY), failedMessage.getString(MessageColumns.TYPE), failedMessage.getString("refers"), failedMessage.optInt("state", MARK_QUESTION) - 1);
            }
        } catch (JSONException e) {
            Log.d(TAG, "SendfailedMessages failed", e);
        }
    }

    private Boolean isStatusCodeRetriable(Integer status) {
        if (status.intValue() < HttpStatus.SC_BAD_REQUEST || status.intValue() >= 600 || status.intValue() == HttpStatus.SC_SERVICE_UNAVAILABLE || status.intValue() == HttpStatus.SC_GATEWAY_TIMEOUT) {
            return Boolean.valueOf(true);
        }
        return Boolean.valueOf(false);
    }

    public Handler getApiFailHandler(Handler failure, String key, int type, JSONObject params) {
        final Handler handler = failure;
        final int i = type;
        final JSONObject jSONObject = params;
        final String str = key;
        return new Handler() {
            public void handleMessage(Message msg) {
                Message msgToPost = handler.obtainMessage();
                msgToPost.obj = msg.obj;
                handler.sendMessage(msgToPost);
                try {
                    if (HSApiData.this.isStatusCodeRetriable((Integer) msg.obj.get(IssueColumns.STATUS)).booleanValue()) {
                        JSONObject failedApiCall = new JSONObject();
                        failedApiCall.put(InviteUsersRequest.KEY_TIME, i);
                        failedApiCall.put(SetUserPositionRequest.KEY_PLUS_USER_LIST, jSONObject);
                        HSApiData.this.storage.storeFailedApiCall(str, failedApiCall);
                        return;
                    }
                    HSApiData.this.storage.storeFailedApiCall(str, null);
                } catch (JSONException e) {
                    Log.d(HSApiData.TAG, "JSONException", e);
                }
            }
        };
    }

    protected Handler getApiSuccessHandler(final Handler success, final String key, int type, JSONObject params) {
        return new Handler() {
            public void handleMessage(Message msg) {
                Message msgToPost = success.obtainMessage();
                msgToPost.obj = msg.obj;
                success.sendMessage(msgToPost);
                try {
                    HSApiData.this.storage.storeFailedApiCall(key, null);
                } catch (JSONException e) {
                    Log.d(HSApiData.TAG, "JSONException", e);
                }
            }
        };
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected synchronized void sendFailedApiCalls() {
        /*
        r21 = this;
        monitor-enter(r21);
        r18 = new com.helpshift.support.HSApiData$23;	 Catch:{ all -> 0x0090 }
        r0 = r18;
        r1 = r21;
        r0.<init>();	 Catch:{ all -> 0x0090 }
        r0 = r21;
        r5 = r0.storage;	 Catch:{ JSONException -> 0x0085 }
        r16 = r5.getFailedApiCalls();	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r5 = r0.failedApiKeys;	 Catch:{ JSONException -> 0x0085 }
        if (r5 != 0) goto L_0x0020;
    L_0x0018:
        r5 = r16.keys();	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r0.failedApiKeys = r5;	 Catch:{ JSONException -> 0x0085 }
    L_0x0020:
        r0 = r21;
        r5 = r0.failedApiKeys;	 Catch:{ JSONException -> 0x0085 }
        r5 = r5.hasNext();	 Catch:{ JSONException -> 0x0085 }
        if (r5 == 0) goto L_0x00fd;
    L_0x002a:
        r0 = r21;
        r5 = r0.failedApiKeys;	 Catch:{ JSONException -> 0x0085 }
        r17 = r5.next();	 Catch:{ JSONException -> 0x0085 }
        r17 = (java.lang.String) r17;	 Catch:{ JSONException -> 0x0085 }
        r15 = r16.get(r17);	 Catch:{ JSONException -> 0x0085 }
        r15 = (org.json.JSONObject) r15;	 Catch:{ JSONException -> 0x0085 }
        r5 = "p";
        r19 = r15.getJSONObject(r5);	 Catch:{ JSONException -> 0x0085 }
        r5 = "t";
        r20 = r15.getInt(r5);	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r1 = r18;
        r2 = r17;
        r3 = r20;
        r4 = r19;
        r6 = r0.getApiSuccessHandler(r1, r2, r3, r4);	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r1 = r18;
        r2 = r17;
        r3 = r20;
        r4 = r19;
        r7 = r0.getApiFailHandler(r1, r2, r3, r4);	 Catch:{ JSONException -> 0x0085 }
        switch(r20) {
            case 0: goto L_0x0069;
            case 1: goto L_0x0093;
            case 2: goto L_0x00aa;
            case 3: goto L_0x00b4;
            case 4: goto L_0x00d5;
            default: goto L_0x0067;
        };
    L_0x0067:
        monitor-exit(r21);
        return;
    L_0x0069:
        r5 = "f";
        r0 = r19;
        r5 = r0.getString(r5);	 Catch:{ JSONException -> 0x0085 }
        r8 = "h";
        r0 = r19;
        r8 = r0.getBoolean(r8);	 Catch:{ JSONException -> 0x0085 }
        r8 = java.lang.Boolean.valueOf(r8);	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r0.markQuestion(r6, r7, r5, r8);	 Catch:{ JSONException -> 0x0085 }
        goto L_0x0067;
    L_0x0085:
        r14 = move-exception;
        r5 = "HelpShiftDebug";
        r8 = "JSONException";
        android.util.Log.d(r5, r8, r14);	 Catch:{ all -> 0x0090 }
        goto L_0x0067;
    L_0x0090:
        r5 = move-exception;
        monitor-exit(r21);
        throw r5;
    L_0x0093:
        r5 = "profile-id";
        r0 = r19;
        r5 = r0.getString(r5);	 Catch:{ JSONException -> 0x0085 }
        r8 = "device-token";
        r0 = r19;
        r8 = r0.getString(r8);	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r0.updateUAToken(r6, r7, r5, r8);	 Catch:{ JSONException -> 0x0085 }
    L_0x00aa:
        r5 = com.helpshift.util.HSJSONUtils.toStringHashMap(r19);	 Catch:{ JSONException -> 0x0085 }
        r0 = r21;
        r0.reportActionEvents(r6, r7, r5);	 Catch:{ JSONException -> 0x0085 }
        goto L_0x0067;
    L_0x00b4:
        r5 = "mids";
        r0 = r19;
        r8 = r0.getJSONArray(r5);	 Catch:{ JSONException -> 0x0085 }
        r5 = "src";
        r0 = r19;
        r9 = r0.getString(r5);	 Catch:{ JSONException -> 0x0085 }
        r5 = "at";
        r0 = r19;
        r10 = r0.getString(r5);	 Catch:{ JSONException -> 0x0085 }
        r5 = r21;
        r5.updateMessageSeenState(r6, r7, r8, r9, r10);	 Catch:{ JSONException -> 0x0085 }
        goto L_0x0067;
    L_0x00d5:
        r5 = "r";
        r0 = r19;
        r5 = r0.getInt(r5);	 Catch:{ JSONException -> 0x0085 }
        r9 = java.lang.Integer.valueOf(r5);	 Catch:{ JSONException -> 0x0085 }
        r5 = "f";
        r0 = r19;
        r10 = r0.getString(r5);	 Catch:{ JSONException -> 0x0085 }
        r5 = "id";
        r0 = r19;
        r11 = r0.getString(r5);	 Catch:{ JSONException -> 0x0085 }
        r8 = r21;
        r12 = r6;
        r13 = r7;
        r8.sendCustomerSatisfactionSurvey(r9, r10, r11, r12, r13);	 Catch:{ JSONException -> 0x0085 }
        goto L_0x0067;
    L_0x00fd:
        r5 = 0;
        r0 = r21;
        r0.failedApiKeys = r5;	 Catch:{ JSONException -> 0x0085 }
        goto L_0x0067;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.helpshift.support.HSApiData.sendFailedApiCalls():void");
    }

    protected void updateMessageSeenState(String issueId, String chatLaunchSource) {
        JSONArray messageIds = new JSONArray(com.helpshift.support.model.Message.updateMessagesSeenState(issueId));
        String readAt = HSFormat.tsSecFormatter.format(((double) System.currentTimeMillis()) / 1000.0d);
        JSONObject params = new JSONObject();
        try {
            params.put("mids", messageIds);
            params.put("src", chatLaunchSource);
            params.put("at", readAt);
        } catch (JSONException e) {
            Log.d(TAG, "JSONException", e);
        }
        updateMessageSeenState(new Handler(), getApiFailHandler(new Handler(), "msg_seen_" + Long.toString(System.currentTimeMillis()), MESSAGE_SEEN, params), messageIds, chatLaunchSource, readAt);
    }

    private void updateMessageSeenState(Handler success, Handler failure, JSONArray messageIds, String source, String readAt) {
        this.client.updateMessageSeenState(messageIds, source, readAt, success, failure);
    }

    protected Boolean isCSatEnabled() {
        return (Boolean) HSConfig.configData.get("csat");
    }

    protected void sendCustomerSatisfactionSurvey(Integer rating, String feedback, String issueId, Handler success, Handler failure) {
        if (rating.intValue() <= 0 || rating.intValue() > HIGHEST_RATING) {
            Message result = failure.obtainMessage();
            HashMap failureMessage = new HashMap();
            failureMessage.put(IssueColumns.STATUS, Integer.valueOf(HttpStatus.SC_BAD_REQUEST));
            failureMessage.put("reason", "Rating not in range");
            result.obj = failureMessage;
            failure.sendMessage(result);
            return;
        }
        feedback = feedback.trim();
        HS_ISSUE_CSAT_STATE hasCSatSurveyBeenSent = getCSatState(issueId);
        if (hasCSatSurveyBeenSent == HS_ISSUE_CSAT_STATE.CSAT_REQUESTED || hasCSatSurveyBeenSent == HS_ISSUE_CSAT_STATE.CSAT_RETRYING) {
            final Handler handler = success;
            final String str = issueId;
            Handler localSuccess = new Handler() {
                public void handleMessage(Message msg) {
                    if (msg.obj != null) {
                        Message result = handler.obtainMessage();
                        HashMap successMessage = new HashMap();
                        successMessage.put(IssueColumns.STATUS, Integer.valueOf(BaseRequest.InitBuddyList));
                        successMessage.put(LoginRequest.KEY_ID, str);
                        result.obj = successMessage;
                        handler.sendMessage(result);
                    }
                }
            };
            setCSatState(issueId, HS_ISSUE_CSAT_STATE.CSAT_DONE);
            JSONObject requestObject = new JSONObject();
            try {
                requestObject.put(SetUserPositionRequest.KEY_ROOM, rating);
                requestObject.put(HSFunnel.READ_FAQ, feedback);
                requestObject.put(LoginRequest.KEY_ID, issueId);
            } catch (JSONException e) {
                Log.d(TAG, "JSONException : ", e);
            }
            final Handler apiFailHandler = getApiFailHandler(failure, "csat_" + issueId, CSAT_REQUEST, requestObject);
            final String str2 = issueId;
            final Handler handler2 = success;
            this.client.sendCustomerSatisfactionRating(rating, feedback, issueId, localSuccess, new Handler() {
                public void handleMessage(Message msg) {
                    if (msg.obj != null) {
                        HSApiData.this.setCSatState(str2, HS_ISSUE_CSAT_STATE.CSAT_RETRYING);
                        Message result = handler2.obtainMessage();
                        HashMap failureMessage = new HashMap();
                        failureMessage.put(IssueColumns.STATUS, Integer.valueOf(HSApiData.MARK_QUESTION));
                        failureMessage.put(LoginRequest.KEY_ID, str2);
                        result.obj = failureMessage;
                        apiFailHandler.sendMessage(result);
                    }
                }
            });
            return;
        }
        result = failure.obtainMessage();
        failureMessage = new HashMap();
        failureMessage.put(IssueColumns.STATUS, Integer.valueOf(HttpStatus.SC_BAD_REQUEST));
        failureMessage.put("reason", "CSat survey already done for " + issueId);
        result.obj = failureMessage;
        failure.sendMessage(result);
    }

    protected HS_ISSUE_CSAT_STATE getCSatState(String issueId) {
        if (isCSatEnabled().booleanValue()) {
            JSONObject issueCSatStates = this.storage.getIssueCSatStates();
            if (issueCSatStates != null) {
                try {
                    if (issueCSatStates.has(issueId)) {
                        return HS_ISSUE_CSAT_STATE.values()[issueCSatStates.getInt(issueId)];
                    }
                } catch (JSONException e) {
                    Log.d(TAG, "JSONException : ", e);
                }
            }
        }
        return HS_ISSUE_CSAT_STATE.CSAT_NOT_APPLICABLE;
    }

    protected Boolean setCSatState(String issueId, HS_ISSUE_CSAT_STATE state) {
        JSONObject issueCSatStates = this.storage.getIssueCSatStates();
        Boolean status = Boolean.valueOf(false);
        if (issueCSatStates == null) {
            issueCSatStates = new JSONObject();
        }
        try {
            if (state != HS_ISSUE_CSAT_STATE.CSAT_RETRYING && state != HS_ISSUE_CSAT_STATE.CSAT_DONE && issueCSatStates.has(issueId) && (issueCSatStates.getInt(issueId) == HS_ISSUE_CSAT_STATE.CSAT_DONE.ordinal() || issueCSatStates.getInt(issueId) == HS_ISSUE_CSAT_STATE.CSAT_RETRYING.ordinal())) {
                return status;
            }
            issueCSatStates.put(issueId, state.ordinal());
            status = Boolean.valueOf(true);
            this.storage.setIssueCSatStates(issueCSatStates);
            return status;
        } catch (JSONException e) {
            Log.d(TAG, "JSONException : ", e);
            return status;
        }
    }

    protected Boolean storeCSatDraft(String issueId, Integer rating, String feedback) {
        Boolean state = Boolean.valueOf(false);
        JSONObject csatDraft = new JSONObject();
        feedback = feedback.trim();
        try {
            csatDraft.put(LoginRequest.KEY_ID, issueId);
            csatDraft.put("rating", rating);
            csatDraft.put("feedback", feedback);
            this.storage.setCSatDraft(csatDraft);
            setCSatState(issueId, HS_ISSUE_CSAT_STATE.CSAT_INPROGRESS);
        } catch (JSONException e) {
            Log.d(TAG, "JSONException : ", e);
        }
        return state;
    }

    protected JSONObject getCSatDraft() {
        return this.storage.getCSatDraft();
    }

    protected void clearNotifications(String profileId) {
        if (!TextUtils.isEmpty(profileId)) {
            NotificationManager notificationManager = (NotificationManager) this.c.getSystemService(NotificationUtils.PREFS_FILENAME);
            Iterator<String> iterator = this.storage.getNotifications(profileId).keys();
            while (iterator.hasNext()) {
                notificationManager.cancel((String) iterator.next(), PUSH_TOKEN);
            }
        }
    }

    protected void showNotifications() {
        String profileId = getProfileId();
        if (!TextUtils.isEmpty(profileId)) {
            JSONObject notifications = this.storage.getNotifications(profileId);
            Iterator<String> iterator = notifications.keys();
            while (iterator.hasNext()) {
                String issueId = (String) iterator.next();
                try {
                    JSONObject notification = notifications.getJSONObject(issueId);
                    HSNotification.showNotif(this.c, issueId, notification.getInt("issueTs"), notification.getInt("newMessageCount"), notification.getString("chatLaunchSource"), notification.getString("contentTitle"));
                } catch (JSONException e) {
                    Log.d(TAG, "showNotifications", e);
                }
            }
        }
    }

    protected boolean login(String identifier) {
        if (SupportFragment.isForeground()) {
            Log.d(TAG, "Login should be called before starting a Helpshift session");
            return false;
        } else if (Arrays.asList(HSConsts.invalidLogins).contains(identifier)) {
            logout();
            return false;
        } else {
            clearNotifications(getProfileId());
            if (!this.storage.getLoginIdentifier().equals(identifier)) {
                this.storage.setLoginIdentifier(identifier);
                getNotificationData(new Handler() {
                    public void handleMessage(Message msg) {
                        super.handleMessage(msg);
                        HSApiData.this.showNotifications();
                    }
                }, new Handler());
            }
            return true;
        }
    }

    protected void logout() {
        if (SupportFragment.isForeground()) {
            Log.d(TAG, "Logout should be called before starting a Helpshift session");
            return;
        }
        clearNotifications(getProfileId());
        this.storage.setLoginIdentifier(null);
        showNotifications();
    }

    public String getLoginId() {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            return getUUID();
        }
        return this.profilesManager.getProfile(id).getSaltedIdentifier();
    }

    public String getProfileId() {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            return this.storage.getIdentity();
        }
        return this.profilesManager.getProfileId(id);
    }

    public void setProfileId(String profileId) {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            this.storage.setIdentity(profileId);
        } else {
            this.profilesManager.setProfileId(id, profileId);
        }
    }

    public String getUsername() {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            return this.storage.getUsername();
        }
        return this.profilesManager.getName(id);
    }

    public void setUsername(String username) {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            this.storage.setUsername(username);
        } else {
            this.profilesManager.setName(id, username);
        }
    }

    public String getEmail() {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            return this.storage.getEmail();
        }
        return this.profilesManager.getEmail(id);
    }

    public void setEmail(String email) {
        String id = this.storage.getLoginIdentifier();
        if (TextUtils.isEmpty(id)) {
            this.storage.setEmail(email);
        } else {
            this.profilesManager.setEmail(id, email);
        }
    }

    protected void sendErrorReports(String reportType) {
        List<ErrorReport> errorReports = ErrorReportsDataSource.getErrorReportsByType(reportType);
        if (!errorReports.isEmpty()) {
            int currentItem = MARK_QUESTION;
            int batchItem = MARK_QUESTION;
            List<String> reportIdsConsumed = new ArrayList();
            JSONArray jsonArrayReports = new JSONArray();
            while (currentItem < errorReports.size()) {
                ErrorReport errorReport = (ErrorReport) errorReports.get(currentItem);
                jsonArrayReports.put(errorReport.getJSONObject());
                reportIdsConsumed.add(errorReport.getReportId());
                currentItem += PUSH_TOKEN;
                batchItem += PUSH_TOKEN;
                if (batchItem == 10 || currentItem == errorReports.size()) {
                    try {
                        sendErrorReportsBatch(reportType, new JSONArray(jsonArrayReports.toString()), new ArrayList(reportIdsConsumed));
                    } catch (JSONException e) {
                        Log.d(TAG, "Error parsing JSONArray " + jsonArrayReports, e);
                    }
                    batchItem = MARK_QUESTION;
                    reportIdsConsumed = new ArrayList();
                    jsonArrayReports = new JSONArray();
                }
            }
        }
    }
}
