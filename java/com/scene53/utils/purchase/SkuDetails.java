package com.scene53.utils.purchase;

import android.util.Log;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.constants.SectionsColumns;
import org.json.JSONException;
import org.json.JSONObject;

public class SkuDetails {
    String mCurrencyCode;
    String mDescription;
    String mItemType;
    String mJson;
    double mPrice;
    String mPriceString;
    String mSku;
    String mTitle;
    String mType;

    public SkuDetails(String jsonSkuDetails) throws JSONException {
        this(IabHelper.ITEM_TYPE_INAPP, jsonSkuDetails);
    }

    public SkuDetails(String itemType, String jsonSkuDetails) throws JSONException {
        this.mItemType = itemType;
        this.mJson = jsonSkuDetails;
        JSONObject o = new JSONObject(this.mJson);
        this.mSku = o.optString("productId");
        this.mType = o.optString(MessageColumns.TYPE);
        this.mPriceString = o.optString("price");
        this.mTitle = o.optString(SectionsColumns.TITLE);
        this.mDescription = o.optString("description");
        this.mCurrencyCode = o.optString("price_currency_code");
        this.mPrice = ((double) o.optInt("price_amount_micros", 0)) / 1000000.0d;
        Log.i("SceneDebug", "Price for itemType is " + this.mPrice);
    }

    public String getSku() {
        return this.mSku;
    }

    public String getType() {
        return this.mType;
    }

    public String getPriceString() {
        return this.mPriceString;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getCurrencyCode() {
        return this.mCurrencyCode;
    }

    public double getPrice() {
        return this.mPrice;
    }

    public String toString() {
        return "SkuDetails:" + this.mJson;
    }
}
