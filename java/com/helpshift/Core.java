package com.helpshift;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.Map;

public class Core {
    private static ApiProvider apiProvider;

    public interface ApiProvider {
        void _handlePush(Context context, Intent intent);

        void _handlePush(Context context, Bundle bundle);

        void _install(Application application, String str, String str2, String str3);

        void _install(Application application, String str, String str2, String str3, Map map);

        void _login(String str, String str2, String str3);

        void _logout();

        void _registerDeviceToken(Context context, String str);

        void _setNameAndEmail(String str, String str2);
    }

    public static void init(ApiProvider apiProvider) {
        apiProvider = apiProvider;
    }

    private static void verifyInit() {
        if (apiProvider == null) {
            throw new ExceptionInInitializerError("com.Helpshift.Core.init() method not called");
        }
    }

    public static void setNameAndEmail(String name, String email) {
        verifyInit();
        apiProvider._setNameAndEmail(name, email);
    }

    public static void install(Application application, String apiKey, String domain, String appId) {
        verifyInit();
        apiProvider._install(application, apiKey, domain, appId);
    }

    public static void install(Application application, String apiKey, String domain, String appId, Map config) {
        verifyInit();
        apiProvider._install(application, apiKey, domain, appId, config);
    }

    public static void registerDeviceToken(Context context, String deviceToken) {
        verifyInit();
        apiProvider._registerDeviceToken(context, deviceToken);
    }

    public static void handlePush(Context context, Intent intent) {
        verifyInit();
        apiProvider._handlePush(context, intent);
    }

    public static void handlePush(Context context, Bundle data) {
        verifyInit();
        apiProvider._handlePush(context, data);
    }

    public static void login(String userId, String name, String email) {
        verifyInit();
        apiProvider._login(userId, name, email);
    }

    public static void logout() {
        verifyInit();
        apiProvider._logout();
    }
}
