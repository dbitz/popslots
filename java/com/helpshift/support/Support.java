package com.helpshift.support;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import com.helpshift.Core.ApiProvider;
import com.helpshift.support.flows.Flow;
import com.helpshift.support.fragments.SupportFragment;
import java.util.List;
import java.util.Map;

public class Support implements ApiProvider {
    public static final String CustomMetadataKey = "hs-custom-metadata";
    public static final String IssueTagsKey = "hs-tags";
    public static final String JSON_PREFS = "HSJsonData";
    public static final String TAG = "HelpShiftDebug";
    public static final String TagsKey = "hs-tags";
    public static final String UserAcceptedTheSolution = "User accepted the solution";
    public static final String UserRejectedTheSolution = "User rejected the solution";
    public static final String UserReviewedTheApp = "User reviewed the app";
    public static final String UserSentScreenShot = "User sent a screenshot";
    public static final String libraryVersion = "4.1.1-support";

    public interface Delegate extends com.helpshift.support.SupportInternal.Delegate {
    }

    public static class EnableContactUs extends com.helpshift.support.SupportInternal.EnableContactUs {
    }

    private static class LazyHolder {
        private static final Support INSTANCE = new Support();

        private LazyHolder() {
        }
    }

    public static class RateAlert extends com.helpshift.support.SupportInternal.RateAlert {
    }

    private Support() {
    }

    public static Support getInstance() {
        return LazyHolder.INSTANCE;
    }

    public static Integer getNotificationCount() {
        return SupportInternal.getNotificationCount();
    }

    public static void getNotificationCount(Handler success, Handler failure) {
        SupportInternal.getNotificationCount(success, failure);
    }

    public static void setUserIdentifier(String userIdentifier) {
        SupportInternal.setUserIdentifier(userIdentifier);
    }

    public static void leaveBreadCrumb(String breadCrumb) {
        SupportInternal.leaveBreadCrumb(breadCrumb);
    }

    public static void clearBreadCrumbs() {
        SupportInternal.clearBreadCrumbs();
    }

    public static void showConversation(Activity a) {
        SupportInternal.showConversation(a);
    }

    public static void showConversation(Activity a, Map config) {
        SupportInternal.showConversation(a, config);
    }

    public static void showFAQSection(Activity a, String sectionPublishId) {
        SupportInternal.showFAQSection(a, sectionPublishId);
    }

    public static void showFAQSection(Activity a, String sectionPublishId, Map config) {
        SupportInternal.showFAQSection(a, sectionPublishId, config);
    }

    public static void showSingleFAQ(Activity a, String questionPublishId) {
        SupportInternal.showSingleFAQ(a, questionPublishId);
    }

    public static void showSingleFAQ(Activity a, String questionPublishId, Map config) {
        SupportInternal.showSingleFAQ(a, questionPublishId, config);
    }

    public static void showFAQs(Activity a) {
        SupportInternal.showFAQs(a);
    }

    public static void showFAQs(Activity a, Map config) {
        SupportInternal.showFAQs(a, config);
    }

    public static void setMetadataCallback(Callable f) {
        SupportInternal.setMetadataCallback(f);
    }

    public static void showAlertToRateApp(String url, AlertToRateAppListener alertToRateAppListener) {
        SupportInternal.showAlertToRateApp(url, alertToRateAppListener);
    }

    public static Delegate getDelegate() {
        return (Delegate) SupportInternal.getDelegate();
    }

    public static void setDelegate(Delegate delegate) {
        SupportInternal.setDelegate(delegate);
    }

    public static void setSDKLanguage(String locale) {
        SupportInternal.setSDKLanguage(locale);
    }

    public void _install(@NonNull Application application, @NonNull String apiKey, @NonNull String domain, @NonNull String appId) {
        SupportInternal.install(application, apiKey, domain, appId);
    }

    public void _install(@NonNull Application application, @NonNull String apiKey, @NonNull String domain, @NonNull String appId, @NonNull Map config) {
        SupportInternal.install(application, apiKey, domain, appId, config);
    }

    public void _setNameAndEmail(String name, String email) {
        SupportInternal.setNameAndEmail(name, email);
    }

    public void _registerDeviceToken(@NonNull Context context, @NonNull String deviceToken) {
        SupportInternal.registerDeviceToken(context, deviceToken);
    }

    public void _handlePush(Context context, Intent intent) {
        SupportInternal.handlePush(context, intent);
    }

    public void _handlePush(Context context, Bundle data) {
        SupportInternal.handlePush(context, data);
    }

    public void _login(@NonNull String userId, String name, String email) {
        SupportInternal.login(userId, name, email);
    }

    public void _logout() {
        SupportInternal.logout();
    }

    public static void showDynamicForm(@NonNull Activity activity, @NonNull List<Flow> flowList) {
        SupportInternal.showDynamicForm(activity, flowList);
    }

    public static SupportFragment getFAQsFragment(@NonNull Activity activity) {
        return SupportInternal.getFAQsFragment(activity);
    }

    public static SupportFragment getFAQsFragment(@NonNull Activity activity, @NonNull Map config) {
        return SupportInternal.getFAQsFragment(activity, config);
    }

    public static SupportFragment getConversationFragment(@NonNull Activity activity) {
        return SupportInternal.getConversationFragment(activity);
    }

    public static SupportFragment getConversationFragment(@NonNull Activity activity, @NonNull Map config) {
        return SupportInternal.getConversationFragment(activity, config);
    }

    public static SupportFragment getFAQSectionFragment(@NonNull Activity activity, @NonNull String sectionPublishId) {
        return SupportInternal.getFAQSectionFragment(activity, sectionPublishId);
    }

    public static SupportFragment getFAQSectionFragment(@NonNull Activity activity, @NonNull String sectionPublishId, @NonNull Map config) {
        return SupportInternal.getFAQSectionFragment(activity, sectionPublishId, config);
    }

    public static SupportFragment getSingleFAQFragment(@NonNull Activity activity, @NonNull String questionPublishId) {
        return SupportInternal.getSingleFAQFragment(activity, questionPublishId);
    }

    public static SupportFragment getSingleFAQFragment(@NonNull Activity activity, @NonNull String questionPublishId, @NonNull Map config) {
        return SupportInternal.getSingleFAQFragment(activity, questionPublishId, config);
    }

    public static SupportFragment getDynamicFormFragment(@NonNull Activity activity, @NonNull List<Flow> flowList) {
        return SupportInternal.getDynamicFormFragment(activity, flowList);
    }

    public static SupportFragment getDynamicFormFragment(@NonNull Activity activity, @NonNull List<Flow> flowList, @NonNull Map config) {
        return SupportInternal.getDynamicFormFragment(activity, flowList, config);
    }
}
