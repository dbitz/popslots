package com.scene53;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.NativeActivity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Debug;
import android.preference.PreferenceManager;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.view.Display;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.WindowManager;
import bolts.AppLinks;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CrashlyticsListener;
import com.crashlytics.android.core.internal.models.SessionEventData;
import com.crashlytics.android.ndk.CrashlyticsNdk;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.Session.Builder;
import com.facebook.Session.OpenRequest;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;
import com.facebook.internal.Utility;
import com.helpshift.support.storage.ProfilesDBHelper;
import com.scene53.gcm.GCMUtils;
import com.scene53.smartfox.SmartFoxImpl;
import com.scene53.utils.NetworkMonitor;
import com.scene53.utils.NotificationUtils;
import com.scene53.utils.PurchaseUtils;
import com.scene53.utils.Utils;
import com.scene53.utils.purchase.IabException;
import com.scene53.utils.purchase.IabHelper;
import com.scene53.utils.purchase.IabHelper.OnConsumeFinishedListener;
import com.scene53.utils.purchase.IabHelper.OnIabPurchaseFinishedListener;
import com.scene53.utils.purchase.IabHelper.OnIabSetupFinishedListener;
import com.scene53.utils.purchase.IabHelper.QueryInventoryFinishedListener;
import com.scene53.utils.purchase.IabResult;
import com.scene53.utils.purchase.Inventory;
import com.scene53.utils.purchase.Purchase;
import com.scene53.utils.purchase.Security;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.jdom.filter.ContentFilter;

public class Scene53NativeActivity extends NativeActivity {
    private static final String KEY_USER_LEFT = "didUserLeave";
    private static final List<String> PERMISSIONS = Arrays.asList(new String[]{"public_profile", ProfilesDBHelper.COLUMN_EMAIL, "user_birthday"});
    private static final int REQUEST_PURCHASE = 18249;
    private static Scene53NativeActivity s_instance;
    private IabHelper mHelper;
    private OnIabPurchaseFinishedListener mPurchaseFinishedListener;
    private boolean performedFullScreenCalc = false;
    private SharedPreferences prefs;
    private boolean shouldRunFullScreen = true;

    public static native String getFacebookApplicationId();

    public static native void handleOpenUrl(String str);

    public static native boolean isDEBUG();

    public static native void onFacebookLogin(boolean z);

    public static native void setAppCrashed(boolean z);

    public static native void setExternalFilesDir(String str);

    public static native void setInternalFilesDir(String str);

    public static native void setIsNetworkEnabledOnPause(boolean z);

    public static native void setNotificationData(String str, String str2);

    public static native void setPushNotificationData(String str, String str2, String str3);

    public static native void settmpdir(String str);

    static {
        System.loadLibrary("openal");
        System.loadLibrary("BigCasino");
    }

    public Scene53NativeActivity() {
        Log.v("Scene53", "Creating Scene53NativeActivity");
        SmartFoxImpl.s_activity = this;
        s_instance = this;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(ContentFilter.DOCTYPE);
        settmpdir(getFilesDirectory() + "/");
        String internalFilesDir = getInternalFilesDirectory() + "/";
        String externalFilesDir = getExternalFilesDirectory();
        if (externalFilesDir != "") {
            externalFilesDir = externalFilesDir + "/";
        }
        setInternalFilesDir(internalFilesDir);
        setExternalFilesDir(externalFilesDir);
        this.prefs = PreferenceManager.getDefaultSharedPreferences(this);
        String openUrl = getOpenUrl();
        Log.i("Scene53", "handling URL intent : " + openUrl);
        if (openUrl != null) {
            handleOpenUrl(openUrl);
        }
        Uri targetUrl = AppLinks.getTargetUrlFromInboundIntent(this, getIntent());
        if (targetUrl != null) {
            Log.i("Scene53", "handling AppLinks Target URL: " + targetUrl.toString());
            handleOpenUrl(targetUrl.toString());
        }
        GCMUtils.getRegId();
        setupIabHelper();
        Intent i = getIntent();
        Log.d("Scene53", "Intent action: " + i.getAction());
        Log.d("Scene53", "Intent data: " + i.getDataString());
        if (i.getExtras() != null) {
            for (String k : i.getExtras().keySet()) {
                Log.d("Scene53", "Intent Extra: " + k + "=" + i.getExtras().get(k));
            }
        }
        if (Session.getActiveSession() == null) {
            Session session;
            if (savedInstanceState != null) {
                session = Session.restoreSession(this, null, null, savedInstanceState);
            } else {
                session = new Builder(this).setApplicationId(getFacebookApplicationId()).build();
            }
            if (session.getState().equals(SessionState.CREATED_TOKEN_LOADED)) {
                session.openForRead(null);
            }
            Session.setActiveSession(session);
        }
    }

    public String getFilesDirectory() {
        File external = getExternalFilesDir(null);
        if (external != null && external.exists() && external.canWrite()) {
            return external.getAbsolutePath();
        }
        return getFilesDir().getAbsolutePath();
    }

    public String getInternalFilesDirectory() {
        return getFilesDir().getAbsolutePath();
    }

    public String getExternalFilesDirectory() {
        File external = getExternalFilesDir(null);
        if (external != null && external.exists() && external.canWrite()) {
            return external.getAbsolutePath();
        }
        return "";
    }

    @SuppressLint({"InlinedApi"})
    protected void runWithFullScreen() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public static Point getNavigationBarSize(Context context) {
        Point appUsableSize = getAppUsableScreenSize(context);
        Point realScreenSize = getRealScreenSize(context);
        if (appUsableSize.x < realScreenSize.x) {
            return new Point(realScreenSize.x - appUsableSize.x, appUsableSize.y);
        }
        if (appUsableSize.y < realScreenSize.y) {
            return new Point(appUsableSize.x, realScreenSize.y - appUsableSize.y);
        }
        return new Point();
    }

    public static boolean checkIfNeedToUseFullScreen(Context context) {
        Point appUsableSize = getAppUsableScreenSize(context);
        Point realScreenSize = getRealScreenSize(context);
        double[] supportedAspectRatios = new double[]{1.7769999504089355d, 1.3329999446868896d, 1.5d};
        double reelAspectRatio = ((double) realScreenSize.x) / ((double) realScreenSize.y);
        double usableAspectRatio = ((double) appUsableSize.x) / ((double) appUsableSize.y);
        double reelMinDistance = 1000.0d;
        double usableMinDistance = 1000.0d;
        for (int i = 0; i < supportedAspectRatios.length; i++) {
            if (Math.abs(reelAspectRatio - supportedAspectRatios[i]) < reelMinDistance) {
                reelMinDistance = Math.abs(reelAspectRatio - supportedAspectRatios[i]);
            }
            if (Math.abs(usableAspectRatio - supportedAspectRatios[i]) < usableMinDistance) {
                usableMinDistance = Math.abs(usableAspectRatio - supportedAspectRatios[i]);
            }
        }
        if (usableMinDistance < reelMinDistance) {
            return false;
        }
        return true;
    }

    public static Point getAppUsableScreenSize(Context context) {
        Display display = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point size = new Point();
        display.getSize(size);
        return size;
    }

    @SuppressLint({"NewApi"})
    public static Point getRealScreenSize(Context context) {
        Display display = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point size = new Point();
        if (VERSION.SDK_INT >= 17) {
            display.getRealSize(size);
        } else if (VERSION.SDK_INT >= 14) {
            try {
                size.x = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(display, new Object[0])).intValue();
                size.y = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(display, new Object[0])).intValue();
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
            } catch (NoSuchMethodException e3) {
            }
        }
        return size;
    }

    protected void runWithNavigationBar() {
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new OnSystemUiVisibilityChangeListener() {
            public void onSystemUiVisibilityChange(int visibility) {
                new Timer().schedule(new TimerTask() {
                    public void run() {
                        Scene53NativeActivity.this.runOnUiThread(new Runnable() {
                            public void run() {
                                Scene53NativeActivity.this.getWindow().getDecorView().setSystemUiVisibility(5);
                            }
                        });
                    }
                }, 1000);
            }
        });
        getWindow().getDecorView().setSystemUiVisibility(5);
    }

    protected void setViewVisibilityFlags() {
        if (VERSION.SDK_INT >= 19) {
            if (!this.performedFullScreenCalc) {
                this.performedFullScreenCalc = true;
                this.shouldRunFullScreen = checkIfNeedToUseFullScreen(getApplicationContext());
            }
            if (this.shouldRunFullScreen) {
                runWithFullScreen();
                return;
            } else {
                runWithNavigationBar();
                return;
            }
        }
        runWithNavigationBar();
    }

    @SuppressLint({"InlinedApi"})
    protected void onResume() {
        super.onResume();
        setViewVisibilityFlags();
    }

    protected void onStart() {
        super.onStart();
        Scene53App.get().setActive(true);
        NetworkMonitor.onNetworkChanged(this);
    }

    public void onWindowFocusChanged(boolean focus) {
        super.onWindowFocusChanged(focus);
        if (focus) {
            setViewVisibilityFlags();
        }
    }

    protected void onStop() {
        Scene53App.get().setActive(false);
        super.onStop();
    }

    protected void onDestroy() {
        if (this.mHelper != null) {
            this.mHelper.dispose();
        }
        this.mHelper = null;
        super.onDestroy();
    }

    public void finish() {
        setBoolPref(KEY_USER_LEFT, true);
        super.finish();
    }

    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Session session = Session.getActiveSession();
        if (session != null) {
            Session.saveSession(session, outState);
        }
    }

    public void initCrashlytics() {
        boolean userLeft = getBoolPref(KEY_USER_LEFT, true);
        setBoolPref(KEY_USER_LEFT, false);
        CrashlyticsCore.Builder core = new CrashlyticsCore.Builder();
        if (!userLeft) {
            core.listener(new CrashlyticsListener() {
                public void crashlyticsDidDetectCrashDuringPreviousExecution() {
                    Scene53NativeActivity.setAppCrashed(false);
                }
            });
        }
        Fabric.with(this, new Kit[]{new Crashlytics.Builder().core(core.build()).build(), new CrashlyticsNdk()});
        if (!userLeft) {
            new Thread(new Runnable() {
                public void run() {
                    SessionEventData crashEventData = null;
                    for (int i = 0; i < 10; i++) {
                        try {
                            Thread.sleep(1000);
                        } catch (InterruptedException e) {
                        }
                        crashEventData = CrashlyticsNdk.getInstance().getCrashEventData();
                        if (crashEventData != null) {
                            Scene53NativeActivity.setAppCrashed(true);
                            break;
                        }
                    }
                    Log.d("Scene53", "Crashlytics NDK crash " + (crashEventData != null ? "" : "not ") + "detected");
                }
            }).start();
        }
        Log.d("Scene53", "Crashlytics initialized");
    }

    public static void logException(String str) {
        Crashlytics.logException(new Exception(str));
    }

    public String getOpenUrl() {
        Uri uri = getIntent().getData();
        if (uri != null) {
            Log.d("Scene53", "Got openUrl from Intent data " + uri.toString());
            return uri.toString();
        }
        String openUrlExtra = getIntent().getStringExtra("OPEN_URL");
        if (openUrlExtra == null) {
            return "";
        }
        Log.d("Scene53", "Got openUrl from Intent extra " + openUrlExtra);
        return openUrlExtra;
    }

    public void parseIntentNotificationData() {
        Intent intent = getIntent();
        if (intent.getBooleanExtra(NotificationUtils.NOTIFICATION, false)) {
            String type = intent.getStringExtra(NotificationUtils.NOTIFICATION_TYPE);
            if (GCMUtils.NOTIFICATION_TYPE_PUSH.equals(type)) {
                setPushNotificationData(intent.getStringExtra(NotificationUtils.NOTIFICATION_AGENCY), intent.getStringExtra(NotificationUtils.NOTIFICATION_CAMPAIGN), intent.getStringExtra(NotificationUtils.NOTIFICATION_AD_SET_NAME));
            } else {
                setNotificationData(type, intent.getStringExtra(NotificationUtils.NOTIFICATION_NAME));
            }
        }
    }

    public void facebookLogin() {
        String applicationId = getFacebookApplicationId();
        Log.w("Scene53", "facebookLogin " + applicationId);
        Session currentSession = Session.getActiveSession();
        if (currentSession == null || currentSession.getState().isClosed()) {
            Session session = new Builder(this).setApplicationId(applicationId).build();
            Session.setActiveSession(session);
            currentSession = session;
        }
        if (currentSession.isOpened()) {
            onFacebookLogin(false);
            return;
        }
        OpenRequest openRequest = new OpenRequest((Activity) this);
        openRequest.setPermissions(PERMISSIONS);
        openRequest.setCallback(new StatusCallback() {
            public void call(Session session, SessionState state, Exception exception) {
                if (session.getState() != SessionState.OPENING) {
                    Scene53NativeActivity.onFacebookLogin(!session.isOpened());
                }
            }
        });
        currentSession.openForRead(openRequest);
    }

    public boolean isLoggedInToFacebook() {
        Session session = Session.getActiveSession();
        return session != null && session.isOpened();
    }

    public void clearToken() {
        Session.getActiveSession().closeAndClearTokenInformation();
    }

    public String getAccessToken() {
        return Session.getActiveSession().getAccessToken();
    }

    public String getAdvertisingId() {
        return Scene53App.get().getAdvertisingId();
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.w("Scene53", "onActivityResult purchase: " + requestCode + " / " + resultCode + " / " + data);
        this.mHelper.handleActivityResult(requestCode, resultCode, data);
        Session FBSession = Session.getActiveSession();
        if (FBSession != null) {
            FBSession.onActivityResult(this, requestCode, resultCode, data);
        }
    }

    public void setBoolPrefDefault(String key, boolean value) {
        if (!this.prefs.contains(key)) {
            setBoolPref(key, value);
        }
    }

    public void setBoolPref(String key, boolean value) {
        this.prefs.edit().putBoolean(key, value).commit();
    }

    public boolean getBoolPref(String key, boolean defValue) {
        return this.prefs.getBoolean(key, defValue);
    }

    public void setStringPref(String key, String value) {
        this.prefs.edit().putString(key, value).apply();
    }

    public String getStringPref(String key) {
        return this.prefs.getString(key, null);
    }

    public void setLongPref(String key, long value) {
        this.prefs.edit().putLong(key, value).apply();
    }

    public long getLongPref(String key) {
        return this.prefs.getLong(key, 0);
    }

    @SuppressLint({"NewApi"})
    public long getTotalMemory() {
        long totalMem;
        MemoryInfo mi = new MemoryInfo();
        ((ActivityManager) getSystemService("activity")).getMemoryInfo(mi);
        if (VERSION.SDK_INT >= 16) {
            totalMem = mi.totalMem;
        } else {
            totalMem = getTotalMemoryPreJB();
        }
        return totalMem / 1048576;
    }

    @SuppressLint({"NewApi"})
    public float getFreeMemory() {
        MemoryInfo mi = new MemoryInfo();
        ((ActivityManager) getSystemService("activity")).getMemoryInfo(mi);
        return (float) (mi.availMem / 1024);
    }

    @SuppressLint({"NewApi"})
    public float getUsedMemory() {
        if (isDEBUG()) {
            return 0.0f;
        }
        return (float) ((Debug.getNativeHeapAllocatedSize() + (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())) / 1024);
    }

    public long getTotalMemoryPreJB() {
        try {
            BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            String str2 = localBufferedReader.readLine();
            String[] arrayOfString = str2.split("\\s+");
            for (String num : arrayOfString) {
                Log.i(str2, num + "\t");
            }
            long initial_memory = (long) (Integer.valueOf(arrayOfString[1]).intValue() * 1024);
            localBufferedReader.close();
            return initial_memory;
        } catch (IOException e) {
            return -1;
        }
    }

    public String getMetaDataString(String key) {
        try {
            int stringRes = getPackageManager().getApplicationInfo(getPackageName(), ContentFilter.DOCTYPE).metaData.getInt(key);
            String value = "";
            if (stringRes > 0) {
                return getString(stringRes);
            }
            return value;
        } catch (NameNotFoundException e) {
            Log.w("Scene53", "Unable to load metadata");
            return "";
        }
    }

    public static int getNetworkReachabilityStatus() {
        NetworkInfo info = ((ConnectivityManager) Scene53App.get().getSystemService("connectivity")).getActiveNetworkInfo();
        if (info == null || !info.isConnected()) {
            return 0;
        }
        if (info.getType() == 1) {
            return 1;
        }
        return 2;
    }

    private void setupIabHelper() {
        this.mHelper = new IabHelper(this, PurchaseUtils.getAPIKey());
        this.mHelper.enableDebugLogging(true, "Scene53");
        this.mHelper.startSetup(new OnIabSetupFinishedListener() {
            public void onIabSetupFinished(IabResult result) {
                if (!result.isSuccess()) {
                    Log.w("Scene53", "Problem setting up In-app Billing: " + result);
                }
                ArrayMap<String, String> params = new ArrayMap();
                params.put(Response.SUCCESS_KEY, String.valueOf(result.isSuccess()));
                params.put("response", Integer.toString(result.getResponse()));
                params.put("playServicesVersion", PurchaseUtils.getPlayServicesVersion());
                Utils.reportAnalytics("sale", "debug", "purchaseServiceSetup", params);
            }
        });
        this.mPurchaseFinishedListener = new OnIabPurchaseFinishedListener() {
            public void onIabPurchaseFinished(IabResult result, Purchase purchase) {
                Log.i("Scene53", "onIabPurchaseFinished " + result);
                Scene53NativeActivity.setIsNetworkEnabledOnPause(false);
                if (result.isFailure()) {
                    if (result.getResponse() == 7) {
                        Scene53NativeActivity.this.checkForNonVerifiedTransactions();
                        return;
                    }
                    PurchaseUtils.onPurchaseFailed(result.getResponse(), result.getMessage(), Scene53NativeActivity.this.isPurchaseSupported());
                    Log.d("Scene53", "Error purchasing: " + result);
                } else if (purchase == null || !purchase.getDeveloperPayload().equals(PurchaseUtils.getIABPayload())) {
                    Log.e("Scene53", "Invalid purchase or developer payload for purchase");
                } else {
                    Log.w("Scene53", "Purchased item: " + purchase.getSku() + " / " + result);
                    PurchaseUtils.savePurchase(purchase);
                    PurchaseUtils.onPurchaseCompleted(purchase, true);
                }
            }
        };
    }

    public boolean isPurchaseSupported() {
        return this.mHelper.isSetupDone();
    }

    public void queryProducts(String[] productIds) {
        Log.d("Scene53", "CAndroidPurchaseManager Scene53NativeActivity::queryProducts");
        final ArrayList<String> list = new ArrayList(Arrays.asList(productIds));
        if (isPurchaseSupported()) {
            Log.d("Scene53", "Query products for " + list.size() + " products started");
            runOnUiThread(new Runnable() {
                public void run() {
                    Scene53NativeActivity.this.mHelper.queryInventoryAsync(true, list, new QueryInventoryFinishedListener() {
                        public void onQueryInventoryFinished(IabResult result, Inventory inv) {
                            Log.d("Scene53", "Query products finished! result: " + result);
                            PurchaseUtils.get().updateInventory(list, inv);
                        }
                    });
                }
            });
            return;
        }
        Log.w("Scene53", "Query products while purchase not supported");
    }

    public boolean checkForNonVerifiedTransactions() {
        boolean z = false;
        Log.d("Scene53", "CAndroidPurchaseManager Scene53NativeActivity::checkForNonVerifiedTransactions");
        if (isPurchaseSupported()) {
            ArrayMap<String, String> params;
            z = false;
            try {
                Inventory inv = this.mHelper.queryInventory(true, null);
                if (inv != null) {
                    PurchaseUtils.get().updateInventory(null, inv);
                    for (Purchase p : inv.getAllPurchases()) {
                        Log.d("Scene53", "CAndroidPurchaseManager Found non-verified transaction " + p.getSku() + " / " + p.getPurchaseState());
                        if (p.getPurchaseState() == 0) {
                            z = true;
                            boolean verified = false;
                            if (Security.verifyPurchase(PurchaseUtils.getAPIKey(), p.getOriginalJson(), p.getSignature())) {
                                PurchaseUtils.onPurchaseCompleted(p, false);
                                verified = true;
                            } else {
                                z = false;
                            }
                            params = new ArrayMap();
                            params.put("verified", String.valueOf(verified));
                            params.put("sku", p.getSku());
                            params.put("signature", p.getSignature());
                            params.put("purchaseData", p.getOriginalJson());
                            params.put("purchaseDataLength", Integer.toString(p.getOriginalJson().length()));
                            params.put("signatureLength", Integer.toString(p.getSignature().length()));
                            Utils.reportAnalytics("sale", "debug", "pendingPurchaseVerification", params);
                        }
                    }
                }
            } catch (IabException e) {
                Log.e("Scene53", "CAndroidPurchaseManager: Unable to check for non verified transactions: " + e.getLocalizedMessage());
                e.printStackTrace();
            }
            params = new ArrayMap();
            params.put("hasTransactions", String.valueOf(z));
            Utils.reportAnalytics("sale", "debug", "checkForNonVerifiedTransactions", params);
        }
        return z;
    }

    public void purchaseProduct(final String sku) {
        Log.d("Scene53", "CAndroidPurchaseManager Scene53NativeActivity::purchaseProduct " + sku);
        if (isPurchaseSupported()) {
            setIsNetworkEnabledOnPause(true);
            runOnUiThread(new Runnable() {
                public void run() {
                    Scene53NativeActivity.this.mHelper.launchPurchaseFlow(Scene53NativeActivity.this, sku, Scene53NativeActivity.REQUEST_PURCHASE, Scene53NativeActivity.this.mPurchaseFinishedListener, PurchaseUtils.getIABPayload());
                }
            });
        }
    }

    public void consumeProduct(final String sku) {
        Log.d("Scene53", "CAndroidPurchaseManager Scene53NativeActivity::consumeProduct " + sku);
        if (isPurchaseSupported()) {
            runOnUiThread(new Runnable() {
                public void run() {
                    Scene53NativeActivity.this.mHelper.consumeAsync(PurchaseUtils.getPurchase(sku), new OnConsumeFinishedListener() {
                        public void onConsumeFinished(Purchase purchase, IabResult result) {
                            if (result.isFailure()) {
                                Log.d("Scene53", "Error consuming: " + result);
                                return;
                            }
                            Log.w("Scene53", "Consumed item: " + purchase.getSku() + " / " + result);
                            PurchaseUtils.delPurchase(purchase.getSku());
                        }
                    });
                }
            });
        }
    }
}
