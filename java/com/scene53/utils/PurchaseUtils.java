package com.scene53.utils;

import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.scene53.utils.purchase.IabHelper;
import com.scene53.utils.purchase.Inventory;
import com.scene53.utils.purchase.Purchase;
import com.scene53.utils.purchase.SkuDetails;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class PurchaseUtils {
    private static final String IAB_PAYLOAD_PART1 = "AbcGt";
    private static final String IAB_PAYLOAD_PART2 = "Klfoe4";
    private static final String IAB_PAYLOAD_PART3 = "MCkdie3+";
    private static final String IAB_PAYLOAD_PART4 = "LEri8f";
    private static final String IAB_PAYLOAD_PART5 = "Qmcjd2P";
    private static final String IAB_PAYLOAD_PART6 = "lLdoPw12";
    private static final String PART1 = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm9";
    private static final String PART2 = "pwDKcMpTkWO+rQbl7hfFYOIdB/h3BcdNEZRIw1dtyOs0swRK+h2X/";
    private static final String PART3 = "ntqTnAtaqDWsaEd89KWmhQ3sxQPKqWhOIYCAY5b3G6hKKkLR0HuMp";
    private static final String PART4 = "TZbv1uKTAwiw55vrmHy6pbycudsMOmw6wHQcRkklMhpkUbmqtTmr7M+H";
    private static final String PART5 = "pQYOJmGvSntG8iTbxLMzCEGlRYdyJv6SyiN0LwwqxPgCp8IJg/3m7NYQpFu";
    private static final String PART6 = "G8oWf1JAry8DgDRqB8a7qhNozqiG/jyZaj0SkMrW";
    private static final String PART7 = "Cn/bUpnFD/ff1kUaGnbN5t5nXO3342GOpOiHq1T";
    private static final String PART8 = "D8Wvq3QZcsJ0KrtUwSbSeIbNnjAALluXbnZyJDtwIDAQAB";
    private static PurchaseUtils _instance;
    private HashSet<String> mInvalidProducts = new HashSet();
    private ArrayMap<String, SkuDetails> mProducts = new ArrayMap();
    private ArrayMap<String, Purchase> mPurchases = new ArrayMap();

    public static native void analyticsReportInvalidProducts(String str);

    public static native void onProductsResponse();

    public static native void onTransactionCompleted(String str, String str2, String str3, boolean z, String str4, String str5);

    public static native void onTransactionFailed(String str, int i, String str2, boolean z);

    public static String getIABPayload() {
        return "AbcGtKlfoe4MCkdie3+LEri8fQmcjd2PlLdoPw12";
    }

    public static String getAPIKey() {
        return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm9pwDKcMpTkWO+rQbl7hfFYOIdB/h3BcdNEZRIw1dtyOs0swRK+h2X/ntqTnAtaqDWsaEd89KWmhQ3sxQPKqWhOIYCAY5b3G6hKKkLR0HuMpTZbv1uKTAwiw55vrmHy6pbycudsMOmw6wHQcRkklMhpkUbmqtTmr7M+HpQYOJmGvSntG8iTbxLMzCEGlRYdyJv6SyiN0LwwqxPgCp8IJg/3m7NYQpFuG8oWf1JAry8DgDRqB8a7qhNozqiG/jyZaj0SkMrWCn/bUpnFD/ff1kUaGnbN5t5nXO3342GOpOiHq1TD8Wvq3QZcsJ0KrtUwSbSeIbNnjAALluXbnZyJDtwIDAQAB";
    }

    public static PurchaseUtils get() {
        if (_instance == null) {
            _instance = new PurchaseUtils();
        }
        return _instance;
    }

    private PurchaseUtils() {
    }

    public void updateInventory(List<String> products, Inventory inv) {
        if (inv == null) {
            onProductsResponse();
            return;
        }
        Iterator i$;
        for (Purchase p : inv.getAllPurchases()) {
            this.mPurchases.put(p.getSku(), p);
        }
        if (products != null) {
            for (String p2 : products) {
                SkuDetails details = inv.getSkuDetails(p2);
                Log.i("Scene53", "Received product from app store " + p2 + " / " + details);
                if (details == null) {
                    this.mInvalidProducts.add(p2);
                } else {
                    this.mInvalidProducts.remove(p2);
                    this.mProducts.put(p2, details);
                    Log.i("Scene53", "Product title: " + details.getTitle());
                    Log.i("Scene53", "Product description: " + details.getDescription());
                    Log.i("Scene53", "Product price: " + details.getPrice());
                    Log.i("Scene53", "Product id: " + details.getSku());
                    Log.i("Scene53", "Product type: " + details.getType());
                }
            }
            if (this.mInvalidProducts.size() > 0) {
                String invalidProductIds = "";
                i$ = this.mInvalidProducts.iterator();
                while (i$.hasNext()) {
                    invalidProductIds = (invalidProductIds + ((String) i$.next())) + ", ";
                }
                analyticsReportInvalidProducts(invalidProductIds.substring(0, invalidProductIds.length() - 2));
            }
            onProductsResponse();
        }
    }

    public static SkuDetails getSkuDetails(String sku) {
        return (SkuDetails) get().mProducts.get(sku);
    }

    public static boolean isOfferValid(String sku) {
        return !get().mInvalidProducts.contains(sku);
    }

    public static void onPurchaseCompleted(Purchase p, boolean showAlert) {
        Log.i("Scene53", "CAndroidPurchaseManager::onPurchaseCompleted(Purchase p, boolean showAlert)");
        ArrayMap<String, String> params = new ArrayMap();
        params.put("productId", p.getSku());
        params.put("signature", p.getSignature());
        params.put("signatureLength", Integer.toString(p.getSignature().length()));
        params.put("purchaseData", p.getOriginalJson());
        params.put("purchaseDataLength", Integer.toString(p.getOriginalJson().length()));
        params.put("transactionId", p.getOrderId());
        params.put("receipt", p.getToken());
        Utils.reportAnalytics("sale", "debug", "javaTransComplete", params);
        onTransactionCompleted(p.getOrderId(), p.getSku(), p.getToken(), showAlert, p.getOriginalJson(), p.getSignature());
    }

    public static void onPurchaseFailed(int errCode, String errDesc, boolean canPurchase) {
        Log.i("Scene53", "CAndroidPurchaseManager::onPurchaseFailed(int errCode, String errDesc)");
        ArrayMap<String, String> params = new ArrayMap();
        params.put("errDesc", errDesc);
        params.put("errCode", Integer.toString(errCode));
        params.put("canPurchase", String.valueOf(canPurchase));
        Utils.reportAnalytics("sale", "debug", "javaTransFailed", params);
        onTransactionFailed("", errCode, errDesc, errCode == IabHelper.IABHELPER_USER_CANCELLED);
    }

    public static Purchase getPurchase(String sku) {
        return (Purchase) get().mPurchases.get(sku);
    }

    public static void savePurchase(Purchase p) {
        get().mPurchases.put(p.getSku(), p);
    }

    public static void delPurchase(String sku) {
        get().mPurchases.remove(sku);
    }

    public static String getPlayServicesVersion() {
        return Integer.toString(GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }
}
