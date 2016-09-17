package com.scene53.utils;

import android.os.Build;
import android.provider.Settings.Secure;
import android.util.Log;
import com.adjust.sdk.Constants;
import com.scene53.Scene53App;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UUIDUtils {
    private static final String KEY_DEVICE_ID = "deviceId";
    protected static final char[] hexArray = "0123456789ABCDEF".toCharArray();

    public static String getDeviceName() {
        return Build.MODEL;
    }

    public static String bytesToHex(byte[] bytes) {
        char[] hexChars = new char[(bytes.length * 2)];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = hexArray[v & 15];
        }
        return new String(hexChars);
    }

    private static String sha1Hash(String toHash) {
        String hash = toHash;
        try {
            MessageDigest digest = MessageDigest.getInstance(Constants.SHA1);
            byte[] bytes = toHash.getBytes(Constants.ENCODING);
            digest.update(bytes, 0, bytes.length);
            hash = bytesToHex(digest.digest());
        } catch (NoSuchAlgorithmException e) {
            Log.w("Scene53", "Unable to create hash of unique uid (NoSuchAlgorithmException) : " + e.getLocalizedMessage());
        } catch (UnsupportedEncodingException e2) {
            Log.w("Scene53", "Unable to create hash of unique uid (UnsupportedEncodingException) : " + e2.getLocalizedMessage());
        }
        return hash;
    }

    public static String generateUniqueId() {
        String id = Secure.getString(Scene53App.get().getContentResolver(), "android_id") + ".scene53.popslots";
        String hashedId = sha1Hash(id);
        Log.d("Scene53", "UUID is " + id + " / " + hashedId);
        return hashedId;
    }

    public static boolean isNewDevice() {
        return Scene53App.get().getSharedPreferences("com.bigcasino", 0).contains(KEY_DEVICE_ID);
    }

    public static String getUserUniqueId() {
        String uid = Scene53App.get().getSharedPreferences("com.bigcasino", 0).getString(KEY_DEVICE_ID, null);
        if (uid != null) {
            return uid;
        }
        uid = generateUniqueId();
        setUserUniqueId(uid);
        return uid;
    }

    public static void setUserUniqueId(String uuid) {
        Scene53App.get().getSharedPreferences("com.bigcasino", 0).edit().putString(KEY_DEVICE_ID, uuid).apply();
    }
}
