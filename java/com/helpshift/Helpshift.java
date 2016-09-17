package com.helpshift;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.helpshift.support.AlertToRateAppListener;
import com.helpshift.support.HSCallable;
import com.helpshift.support.Support;
import com.helpshift.support.SupportInternal;
import java.util.Map;

@Deprecated
public class Helpshift {
    public static final String HSCustomMetadataKey = "hs-custom-metadata";
    public static final String HSTagsKey = "hs-tags";
    public static final String HSUserAcceptedTheSolution = "User accepted the solution";
    public static final String HSUserRejectedTheSolution = "User rejected the solution";
    public static final String HSUserReviewedTheApp = "User reviewed the app";
    public static final String HSUserSentScreenShot = "User sent a screenshot";
    public static final String TAG = "HelpShiftDebug";

    public interface Delegate extends com.helpshift.support.SupportInternal.Delegate {
    }

    public static class EnableContactUs extends com.helpshift.support.SupportInternal.EnableContactUs {
    }

    public static class RateAlert extends com.helpshift.support.SupportInternal.RateAlert {
    }

    public static void install(Application application, String apiKey, String domain, String appId) {
        Core.init(Support.getInstance());
        Core.install(application, apiKey, domain, appId);
    }

    public static void install(Application application, String apiKey, String domain, String appId, Map config) {
        Core.init(Support.getInstance());
        Core.install(application, apiKey, domain, appId, config);
    }

    public static void setNameAndEmail(String name, String email) {
        Core.setNameAndEmail(name, email);
    }

    public static void registerDeviceToken(Context context, String deviceToken) {
        Core.registerDeviceToken(context, deviceToken);
    }

    public static void login(String userId, String name, String email) {
        Core.login(userId, name, email);
    }

    public static void logout() {
        Core.logout();
    }

    public static Integer getNotificationCount() {
        return SupportInternal.getNotificationCount();
    }

    public static void getNotificationCount(Handler success, Handler failure) {
        SupportInternal.getNotificationCount(success, failure);
    }

    public static void handlePush(Context context, Intent intent) {
        Core.handlePush(context, intent);
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

    public static void setMetadataCallback(HSCallable f) {
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
}
