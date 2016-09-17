package com.helpshift.support;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.helpshift.support.FaqTagFilter.Operator;
import com.helpshift.support.activities.ParentActivity;
import com.helpshift.support.activities.ParentActivity.FlowListHolder;
import com.helpshift.support.constants.ErrorReportTypes;
import com.helpshift.support.constants.FaqsColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.flows.Flow;
import com.helpshift.support.fragments.MainFragment;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.model.Issue;
import com.helpshift.support.res.drawable.HSImages;
import com.helpshift.support.res.values.HSConfig;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.storage.ErrorReportsDataSource;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.support.util.DBUtil;
import com.helpshift.support.util.HSActivityUtil;
import com.helpshift.support.util.HSNotification;
import com.helpshift.support.util.Meta;
import com.helpshift.util.HSPattern;
import com.helpshift.util.HelpshiftConnectionUtil;
import com.helpshift.util.HelpshiftContext;
import com.helpshift.util.TimeUtil;
import com.helpshift.util.constants.KeyValueStoreColumns;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class SupportInternal {
    public static final String CustomMetadataKey = "hs-custom-metadata";
    public static final String IssueTagsKey = "hs-tags";
    public static final String JSON_PREFS = "HSJsonData";
    public static final String TAG = "HelpShiftDebug";
    public static final String TagsKey = "hs-tags";
    public static final String UserAcceptedTheSolution = "User accepted the solution";
    public static final String UserRejectedTheSolution = "User rejected the solution";
    public static final String UserReviewedTheApp = "User reviewed the app";
    public static final String UserSentScreenShot = "User sent a screenshot";
    private static Context c = null;
    private static HSApiData data = null;
    private static Delegate delegate = null;
    public static final String libraryVersion = "4.1.1-support";
    private static HSStorage storage = null;

    public interface Delegate {
        void didReceiveNotification(int i);

        void displayAttachmentFile(File file);

        void newConversationStarted(String str);

        void sessionBegan();

        void sessionEnded();

        void userCompletedCustomerSatisfactionSurvey(int i, String str);

        void userRepliedToConversation(String str);
    }

    public static class EnableContactUs {
        public static final Integer AFTER_MARKING_ANSWER_UNHELPFUL = Integer.valueOf(3);
        public static final Integer AFTER_VIEWING_FAQS = Integer.valueOf(2);
        public static final Integer ALWAYS = Integer.valueOf(0);
        public static final Integer NEVER = Integer.valueOf(1);
    }

    public static class RateAlert {
        public static final int CLOSE = 2;
        public static final int FAIL = 3;
        public static final int FEEDBACK = 1;
        public static final int SUCCESS = 0;
    }

    private SupportInternal() {
    }

    private static void init(Application application) {
        initialize(application.getApplicationContext());
    }

    private static void init(Context context) {
        initialize(context.getApplicationContext());
    }

    private static void initialize(Context context) {
        HelpshiftContext.setApplicationContext(context);
        if (c == null) {
            data = new HSApiData(context);
            storage = data.storage;
            ContactUsFilter.init(context);
            Initializer.init(context);
            c = context;
        }
    }

    private static void cleanStorage() {
        String identity = storage.getIdentity();
        String uuid = storage.getUUID();
        Boolean requireEmail = storage.getRequireEmail();
        Boolean fullPrivacy = storage.getEnableFullPrivacy();
        Boolean hideNameEmail = storage.getHideNameAndEmail();
        Boolean showSearchOnNewConversation = storage.getShowSearchOnNewConversation();
        JSONObject metaData = storage.getCustomMetaData();
        Float timeDelta = storage.getServerTimeDelta();
        String oldVersion = storage.getLibraryVersion();
        if (oldVersion.length() > 0 && !oldVersion.equals(libraryVersion)) {
            storage.clearDatabase();
            storage.setIdentity(identity);
            if (!TextUtils.isEmpty(uuid)) {
                storage.setUUID(uuid);
            }
            storage.setRequireEmail(requireEmail);
            storage.setEnableFullPrivacy(fullPrivacy);
            storage.setHideNameAndEmail(hideNameEmail);
            storage.setShowSearchOnNewConversation(showSearchOnNewConversation);
            storage.setCustomMetaData(metaData);
            storage.setServerTimeDelta(timeDelta);
        }
        storage.setLibraryVersion(libraryVersion);
    }

    public static void install(Application application, String apiKey, String domain, String appId) {
        install(application, apiKey, domain, appId, new HashMap());
    }

    @TargetApi(14)
    public static void install(Application application, String apiKey, String domain, String appId, Map config) {
        init(application);
        Map config2 = new HashMap(config);
        if (!(config2.containsKey("disableErrorLogging") && ((Boolean) config2.get("disableErrorLogging")).booleanValue())) {
            UncaughtExceptionHandler.init(application.getApplicationContext());
        }
        cleanStorage();
        DBUtil.restoreDatabaseBackup(ProfilesDBHelper.DATABASE_NAME);
        if (config2 == null) {
            config = new HashMap();
        } else {
            config = config2;
        }
        String profileId = data.getProfileId();
        if (((String) config.get("sdkType")) != null) {
            storage.setSdkType((String) config.get("sdkType"));
        } else {
            storage.setSdkType("android");
        }
        String notifIcon = config.get("notificationIcon");
        if (notifIcon != null && (notifIcon instanceof String)) {
            String mDrawableName = notifIcon;
            config.put("notificationIcon", Integer.valueOf(application.getResources().getIdentifier(mDrawableName, "drawable", application.getPackageName())));
        }
        Object notifSound = config.get("notificationSound");
        if (notifSound != null && (notifSound instanceof String)) {
            mDrawableName = (String) notifSound;
            config.put("notificationSound", Integer.valueOf(application.getResources().getIdentifier(mDrawableName, "raw", application.getPackageName())));
        }
        Boolean enableDialogUIForTablets = config.get("enableDialogUIForTablets");
        if (enableDialogUIForTablets != null && (enableDialogUIForTablets instanceof Boolean)) {
            config.put("enableDialogUIForTablets", enableDialogUIForTablets);
        }
        storage.updateDisableHelpshiftBranding();
        try {
            String applicationVersion = c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionName;
            if (!storage.getApplicationVersion().equals(applicationVersion)) {
                data.resetReviewCounter();
                data.enableReview();
                storage.setApplicationVersion(applicationVersion);
            }
        } catch (NameNotFoundException e) {
            Log.d(TAG, "Application Name Not Found", e);
        }
        HSImages.initImages(c);
        storage.setAppConfig(new JSONObject(config));
        storage.setActiveDownloads(new JSONObject());
        data.install(apiKey, domain, appId);
        if (!TextUtils.isEmpty(profileId)) {
            try {
                data.getLatestIssues(new Handler(), new Handler());
            } catch (JSONException e2) {
                Log.d(TAG, "Install - Get Latest Issues", e2);
            }
        }
        if (VERSION.SDK_INT >= 14) {
            HSLifecycleCallbacks hsLifecycleCallbacks = HSLifecycleCallbacks.getInstance();
            application.unregisterActivityLifecycleCallbacks(hsLifecycleCallbacks);
            application.registerActivityLifecycleCallbacks(hsLifecycleCallbacks);
            return;
        }
        data.updateReviewCounter();
        if (data.showReviewP().booleanValue()) {
            Intent i = new Intent(c, HSReview.class);
            i.setFlags(268435456);
            c.startActivity(i);
        }
        try {
            data.getConfig(new Handler() {
                public void handleMessage(Message msg) {
                    HSConfig.updateConfig((JSONObject) msg.obj);
                    SupportInternal.storage.updateActiveConversation(SupportInternal.data.getProfileId());
                }
            }, new Handler());
        } catch (JSONException e22) {
            Log.d(TAG, e22.toString(), e22);
        }
        if (HelpshiftConnectionUtil.isOnline(c)) {
            c.startService(new Intent(c, HSRetryService.class));
        }
        data.startInAppService();
        data.reportAppStartEvent();
        if (ErrorReportsDataSource.hasReports()) {
            long lastReportedTime = storage.getLastErrorReportedTime();
            long currentElapsedTime = TimeUtil.getAdjustedTimeInMillis(storage.getServerTimeDelta());
            if (currentElapsedTime - lastReportedTime > ErrorReport.BATCH_TIME) {
                storage.setLastErrorReportedTime(currentElapsedTime);
                data.sendErrorReports(ErrorReportTypes.RUNTIME_ERROR);
            }
        }
    }

    public static Integer getNotificationCount() {
        if (data != null) {
            return data.storage.getActiveNotifCnt(data.getProfileId());
        }
        return Integer.valueOf(0);
    }

    public static void getNotificationCount(Handler success, final Handler failure) {
        if (success != null) {
            if (data == null || storage == null) {
                if (HelpshiftContext.getApplicationContext() != null) {
                    init(HelpshiftContext.getApplicationContext());
                } else {
                    return;
                }
            }
            Integer activeCnt = storage.getActiveNotifCnt(data.getProfileId());
            Message msgToPost = success.obtainMessage();
            Bundle countData = new Bundle();
            countData.putInt(KeyValueStoreColumns.value, activeCnt.intValue());
            countData.putBoolean("cache", true);
            msgToPost.obj = countData;
            success.sendMessage(msgToPost);
            Handler localFailure = new Handler() {
                public void handleMessage(Message msg) {
                    if (failure != null) {
                        Message msgToPost = failure.obtainMessage();
                        msgToPost.obj = msg.obj;
                        failure.sendMessage(msgToPost);
                    }
                }
            };
            if (TextUtils.isEmpty(data.getProfileId())) {
                Message failureMsg = localFailure.obtainMessage();
                Bundle failureCount = new Bundle();
                failureCount.putInt(KeyValueStoreColumns.value, -1);
                failureMsg.obj = failureCount;
                localFailure.sendMessage(failureMsg);
                return;
            }
            data.getNotificationCount(success, localFailure);
        }
    }

    public static void setNameAndEmail(String name, String email) {
        if (name == null) {
            name = "";
        } else {
            name = name.trim();
        }
        if (email == null) {
            email = "";
        } else {
            email = email.trim();
        }
        if (TextUtils.isEmpty(name) && TextUtils.isEmpty(email)) {
            data.setUsername("");
            data.setEmail("");
        }
        if (!(TextUtils.isEmpty(name) || HSPattern.checkSpecialCharacters(name))) {
            data.setUsername(name);
        }
        if (!TextUtils.isEmpty(email) && HSPattern.checkEmail(email)) {
            data.setEmail(email);
        }
    }

    public static void setUserIdentifier(String userIdentifier) {
        if (userIdentifier != null) {
            storage.setDeviceIdentifier(userIdentifier.trim());
        }
    }

    public static void registerDeviceToken(Context context, String deviceToken) {
        init(context);
        if (deviceToken != null) {
            String profileId = data.getProfileId();
            storage.setDeviceToken(deviceToken);
            if (!TextUtils.isEmpty(profileId)) {
                data.updateUAToken();
                return;
            }
            return;
        }
        Log.d(TAG, "Device Token is null");
    }

    public static void leaveBreadCrumb(String breadCrumb) {
        if (breadCrumb != null && !TextUtils.isEmpty(breadCrumb.trim())) {
            storage.pushBreadCrumb(breadCrumb);
        }
    }

    public static void clearBreadCrumbs() {
        storage.clearBreadCrumbs();
    }

    public static void showConversation(Activity a) {
        showConversation(a, new HashMap());
    }

    public static void showConversation(Activity a, Map config) {
        HashMap configHashMap = new HashMap(config);
        Intent i = new Intent(a, ParentActivity.class);
        i.putExtra(SupportFragment.SUPPORT_MODE, 1);
        i.putExtra("decomp", true);
        i.putExtras(cleanConfig(configHashMap));
        i.putExtra("showInFullScreen", HSActivityUtil.isFullScreen(a));
        i.putExtra("chatLaunchSource", HSConsts.SRC_SUPPORT);
        i.putExtra("isRoot", true);
        i.putExtra(HSConsts.SEARCH_PERFORMED, false);
        a.startActivity(i);
    }

    public static void showFAQSection(Activity a, String sectionPublishId) {
        showFAQSection(a, sectionPublishId, new HashMap());
    }

    public static void showFAQSection(Activity a, String sectionPublishId, Map config) {
        HashMap configHashMap = new HashMap(config);
        Intent i = new Intent(a, ParentActivity.class);
        i.putExtra(SupportFragment.SUPPORT_MODE, 2);
        i.putExtras(cleanConfig(removeFAQFlowUnsupportedConfigs(configHashMap)));
        i.putExtra("sectionPublishId", sectionPublishId);
        i.putExtra("showInFullScreen", HSActivityUtil.isFullScreen(a));
        i.putExtra("decomp", true);
        i.putExtra("isRoot", true);
        a.startActivity(i);
    }

    public static void showSingleFAQ(Activity a, String questionPublishId) {
        showSingleFAQ(a, questionPublishId, new HashMap());
    }

    public static void showSingleFAQ(Activity a, String questionPublishId, Map config) {
        HashMap configHashMap = new HashMap(config);
        Intent i = new Intent(a, ParentActivity.class);
        i.putExtra(SupportFragment.SUPPORT_MODE, 3);
        i.putExtras(cleanConfig(removeFAQFlowUnsupportedConfigs(configHashMap)));
        i.putExtra("questionPublishId", questionPublishId);
        i.putExtra("showInFullScreen", HSActivityUtil.isFullScreen(a));
        i.putExtra("decomp", true);
        i.putExtra("isRoot", true);
        a.startActivity(i);
    }

    public static void setMetadataCallback(Callable f) {
        Meta.setMetadataCallback(f);
        try {
            storage.setCustomMetaData(Meta.getCustomMeta());
        } catch (JSONException e) {
            Log.d(TAG, "Exception getting custom meta ", e);
        }
    }

    private static void createMetadataCallback(final HashMap config) {
        if (config.containsKey(CustomMetadataKey)) {
            setMetadataCallback(new Callable() {
                public HashMap call() {
                    if (config.get(SupportInternal.CustomMetadataKey) instanceof HashMap) {
                        return (HashMap) config.get(SupportInternal.CustomMetadataKey);
                    }
                    return null;
                }
            });
        }
    }

    public static void showFAQs(Activity a) {
        showFAQs(a, new HashMap());
    }

    public static void showFAQs(Activity a, Map config) {
        HashMap configHashMap = new HashMap(config);
        Intent i = new Intent(a, ParentActivity.class);
        i.putExtras(cleanConfig(removeFAQFlowUnsupportedConfigs(configHashMap)));
        i.putExtra("showInFullScreen", HSActivityUtil.isFullScreen(a));
        i.putExtra("decomp", false);
        i.putExtra("isRoot", true);
        a.startActivity(i);
    }

    public static void showDynamicForm(Activity activity, List<Flow> flowList) {
        Intent intent = new Intent(activity, ParentActivity.class);
        FlowListHolder.setFlowList(flowList);
        intent.putExtra("showInFullScreen", HSActivityUtil.isFullScreen(activity));
        intent.putExtra(SupportFragment.SUPPORT_MODE, 4);
        activity.startActivity(intent);
    }

    public static HashMap removeFAQFlowUnsupportedConfigs(HashMap config) {
        if (config == null) {
            config = new HashMap();
        }
        for (String s : new String[]{"conversationPrefillText"}) {
            config.remove(s);
            if (s.equals(HSConsts.SHOW_SEARCH_ON_NEW_CONVERSATION)) {
                storage.setShowSearchOnNewConversation(Boolean.valueOf(false));
            }
        }
        return config;
    }

    public static Bundle cleanConfig(HashMap configMap) {
        boolean z = true;
        ContactUsFilter.setConfig(configMap);
        Bundle cleanConfig = new Bundle();
        if (configMap != null) {
            createMetadataCallback(configMap);
            JSONObject config = new JSONObject(configMap);
            if (!(config.optBoolean("gotoCoversationAfterContactUs", false) || config.optBoolean("gotoConversationAfterContactUs", false))) {
                z = false;
            }
            Boolean showConvOnReportIssue = Boolean.valueOf(z);
            try {
                if (config.has("requireEmail")) {
                    storage.setRequireEmail(Boolean.valueOf(config.getBoolean("requireEmail")));
                }
                if (config.has("hideNameAndEmail")) {
                    storage.setHideNameAndEmail(Boolean.valueOf(config.getBoolean("hideNameAndEmail")));
                }
                if (config.has(HSConsts.SHOW_SEARCH_ON_NEW_CONVERSATION)) {
                    storage.setShowSearchOnNewConversation(Boolean.valueOf(config.getBoolean(HSConsts.SHOW_SEARCH_ON_NEW_CONVERSATION)));
                }
                if (config.has("enableFullPrivacy")) {
                    storage.setEnableFullPrivacy(Boolean.valueOf(config.getBoolean("enableFullPrivacy")));
                }
                if (config.has(HSConsts.SHOW_CONVERSATION_RESOLUTION_QUESTION)) {
                    storage.setShowConversationResolutionQuestion(Boolean.valueOf(config.getBoolean(HSConsts.SHOW_CONVERSATION_RESOLUTION_QUESTION)));
                }
            } catch (JSONException e) {
                Log.d(TAG, "Exception parsing config : " + e);
            }
            storage.setConversationPrefillText(null);
            try {
                if (config.has("conversationPrefillText") && !config.getString("conversationPrefillText").equals("null")) {
                    if (config.has(CustomMetadataKey)) {
                        cleanConfig.putBoolean("dropMeta", true);
                    }
                    String prefillText = config.getString("conversationPrefillText").trim();
                    if (!TextUtils.isEmpty(prefillText)) {
                        storage.setConversationPrefillText(prefillText);
                    }
                }
                if (config.has(MainFragment.TOOLBAR_ID)) {
                    cleanConfig.putInt(MainFragment.TOOLBAR_ID, config.getInt(MainFragment.TOOLBAR_ID));
                }
            } catch (JSONException e2) {
                Log.d(TAG, "JSON exception while parsing config : ", e2);
            }
            cleanConfig.putBoolean("showConvOnReportIssue", showConvOnReportIssue.booleanValue());
            cleanConfig.putBoolean(HSConsts.SHOW_SEARCH_ON_NEW_CONVERSATION, config.optBoolean(HSConsts.SHOW_SEARCH_ON_NEW_CONVERSATION, false));
            cleanConfig.putSerializable("withTagsMatching", cleanFaqTagFilter(configMap.get("withTagsMatching")));
        }
        return cleanConfig;
    }

    private static FaqTagFilter cleanFaqTagFilter(Object filterTagsConfigObject) {
        if (filterTagsConfigObject == null) {
            return null;
        }
        try {
            Map<String, Object> filterTagsConfig = (Map) filterTagsConfigObject;
            String operator = (String) filterTagsConfig.get("operator");
            if (!TextUtils.isEmpty(operator)) {
                operator = operator.trim().toLowerCase(Locale.US);
                String[] tags = (String[]) filterTagsConfig.get(FaqsColumns.TAGS);
                if (tags != null && tags.length > 0) {
                    if (operator.equals("and")) {
                        return new FaqTagFilter(Operator.AND, tags);
                    }
                    if (operator.equals("or")) {
                        return new FaqTagFilter(Operator.OR, tags);
                    }
                    if (operator.equals("not")) {
                        return new FaqTagFilter(Operator.NOT, tags);
                    }
                }
            }
        } catch (ClassCastException e) {
            Log.d(TAG, "Invalid FaqTagFilter object in config", e);
        }
        return null;
    }

    public static void handlePush(Context context, Intent i) {
        init(context);
        String issueId = i.getExtras().getString(MessageColumns.ISSUE_ID);
        if (!storage.getForegroundIssue().equals(issueId)) {
            try {
                int messCnt = storage.getIssuePushCount(issueId);
                Issue issue = IssuesDataSource.getIssue(issueId);
                if (issue != null) {
                    HSNotification.showNotif(c, issue, messCnt, HSConsts.SRC_PUSH, i);
                }
            } catch (JSONException e) {
                Log.d(TAG, "handlePush JSONException", e);
            }
        }
    }

    public static void handlePush(Context context, Bundle data) {
        Intent pushIntent = new Intent();
        pushIntent.putExtras(data);
        handlePush(context, pushIntent);
    }

    public static void showAlertToRateApp(String url, AlertToRateAppListener alertToRateAppListener) {
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(url)) {
            intent.setData(Uri.parse(url.trim()));
        }
        if (!TextUtils.isEmpty(url) && intent.resolveActivity(c.getPackageManager()) != null) {
            HSReviewFragment.setAlertToRateAppListener(alertToRateAppListener);
            Intent i = new Intent(c, HSReview.class);
            i.putExtra("disableReview", false);
            i.putExtra("rurl", url.trim());
            i.setFlags(268435456);
            c.startActivity(i);
        } else if (alertToRateAppListener != null) {
            alertToRateAppListener.onAction(3);
        }
    }

    public static Delegate getDelegate() {
        return delegate;
    }

    public static void setDelegate(Delegate delegate) {
        delegate = delegate;
    }

    public static void login(String identifier, String name, String email) {
        if (data.login(identifier)) {
            setNameAndEmail(name, email);
        }
    }

    public static void logout() {
        data.logout();
    }

    public static void setSDKLanguage(String locale) {
        storage.setSdkLanguage(locale);
    }

    public static SupportFragment getFAQsFragment(Activity activity) {
        return getFAQsFragment(activity, new HashMap());
    }

    public static SupportFragment getFAQsFragment(Activity activity, Map config) {
        Bundle bundle = cleanConfig(removeFAQFlowUnsupportedConfigs(new HashMap(config)));
        bundle.putBoolean("showInFullScreen", HSActivityUtil.isFullScreen(activity).booleanValue());
        return SupportFragment.newInstance(bundle);
    }

    public static SupportFragment getConversationFragment(Activity activity) {
        return getConversationFragment(activity, new HashMap());
    }

    public static SupportFragment getConversationFragment(Activity activity, Map config) {
        Bundle bundle = cleanConfig(new HashMap(config));
        bundle.putBoolean("showInFullScreen", HSActivityUtil.isFullScreen(activity).booleanValue());
        bundle.putInt(SupportFragment.SUPPORT_MODE, 1);
        bundle.putBoolean("decomp", true);
        bundle.putBoolean("showInFullScreen", HSActivityUtil.isFullScreen(activity).booleanValue());
        bundle.putString("chatLaunchSource", HSConsts.SRC_SUPPORT);
        bundle.putBoolean("isRoot", true);
        bundle.putBoolean(HSConsts.SEARCH_PERFORMED, false);
        return SupportFragment.newInstance(bundle);
    }

    public static SupportFragment getFAQSectionFragment(Activity activity, String sectionPublishId) {
        return getFAQSectionFragment(activity, sectionPublishId, new HashMap());
    }

    public static SupportFragment getFAQSectionFragment(Activity activity, String sectionPublishId, Map config) {
        Bundle bundle = cleanConfig(removeFAQFlowUnsupportedConfigs(new HashMap(config)));
        bundle.putInt(SupportFragment.SUPPORT_MODE, 2);
        bundle.putString("sectionPublishId", sectionPublishId);
        bundle.putBoolean("showInFullScreen", HSActivityUtil.isFullScreen(activity).booleanValue());
        bundle.putBoolean("decomp", true);
        bundle.putBoolean("isRoot", true);
        return SupportFragment.newInstance(bundle);
    }

    public static SupportFragment getSingleFAQFragment(Activity activity, String questionPublishId) {
        return getSingleFAQFragment(activity, questionPublishId, new HashMap());
    }

    public static SupportFragment getSingleFAQFragment(Activity activity, String questionPublishId, Map config) {
        Bundle bundle = cleanConfig(removeFAQFlowUnsupportedConfigs(new HashMap(config)));
        bundle.putInt(SupportFragment.SUPPORT_MODE, 3);
        bundle.putString("questionPublishId", questionPublishId);
        bundle.putBoolean("showInFullScreen", HSActivityUtil.isFullScreen(activity).booleanValue());
        bundle.putBoolean("decomp", true);
        bundle.putBoolean("isRoot", true);
        return SupportFragment.newInstance(bundle);
    }

    public static SupportFragment getDynamicFormFragment(Activity activity, List<Flow> flowList) {
        return getDynamicFormFragment(activity, flowList, new HashMap());
    }

    public static SupportFragment getDynamicFormFragment(Activity activity, List<Flow> flowList, Map config) {
        FlowListHolder.setFlowList(flowList);
        Bundle bundle = cleanConfig(new HashMap(config));
        bundle.putInt(SupportFragment.SUPPORT_MODE, 4);
        bundle.putBoolean("showInFullScreen", HSActivityUtil.isFullScreen(activity).booleanValue());
        return SupportFragment.newInstance(bundle);
    }
}
