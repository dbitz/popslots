package com.helpshift.support.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.helpshift.support.HSStorage;
import com.helpshift.support.Log;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.util.HelpshiftContext;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class LocaleUtil {
    private static final String TAG = LocaleUtil.class.getSimpleName();
    private static final HSStorage storage = new HSStorage(HelpshiftContext.getApplicationContext());

    public static void changeLanguage(Context context) {
        String language = storage.getSdkLanguage();
        if (!TextUtils.isEmpty(language)) {
            Resources resources = context.getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            Configuration configuration = resources.getConfiguration();
            configuration.locale = getLocale(language);
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    private static Locale getLocale(String language) {
        if (!language.contains("_")) {
            return new Locale(language);
        }
        String[] languageArray = language.split("_");
        return new Locale(languageArray[0], languageArray[1]);
    }

    public static String getAcceptLanguageHeader() {
        String sdkLanguage = storage.getSdkLanguage();
        if (TextUtils.isEmpty(sdkLanguage)) {
            return Locale.getDefault().toString();
        }
        return sdkLanguage;
    }

    public static boolean isDefaultFallbackLanguageEnabled() {
        boolean defaultFallbackLanguageEnabled = true;
        try {
            JSONObject config = storage.getAppConfig();
            if (config.has(HSConsts.ENABLE_DEFAULT_FALLBACK_LANGUAGE)) {
                defaultFallbackLanguageEnabled = config.getBoolean(HSConsts.ENABLE_DEFAULT_FALLBACK_LANGUAGE);
            }
        } catch (JSONException e) {
            Log.d(TAG, "isDefaultFallbackLanguageEnabled", e);
        }
        return defaultFallbackLanguageEnabled;
    }
}
