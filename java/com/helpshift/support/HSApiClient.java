package com.helpshift.support;

import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.adjust.sdk.Constants;
import com.facebook.internal.ServerProtocol;
import com.helpshift.exceptions.InstallException;
import com.helpshift.network.NameValuePair;
import com.helpshift.network.util.constants.NetworkConstants;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.support.util.LocaleUtil;
import com.helpshift.util.TimeUtil;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class HSApiClient {
    static final String TAG = "HelpShiftDebug";
    public static final String apiVersion = "2";
    public static final String libraryVersion = "4.1.1-support";
    private static int timeStampErrorReplies = 0;
    static final int timeStampMaxRetries = 3;
    final String SC_SENT = "Screenshot sent";
    final String SOL_ACCEPT = "Accepted the solution";
    final String SOL_REJECTED = "Did not accept the solution";
    final String SOL_REVIEW = "Accepted review request";
    final String apiBase = "/api/lib/";
    final String apiKey;
    final String appId;
    final String domain;
    final String scheme = "https://";
    private HSStorage storage;

    static /* synthetic */ int access$808() {
        int i = timeStampErrorReplies;
        timeStampErrorReplies = i + 1;
        return i;
    }

    protected HSApiClient(String domain, String appId, String apiKey, HSStorage storage) {
        this.domain = domain;
        this.appId = appId;
        this.apiKey = apiKey;
        this.storage = storage;
    }

    private static void addHeadersToConnection(HttpURLConnection connection) {
        String userAgent = "Helpshift-Android/4.1.1-support/" + VERSION.RELEASE;
        String acceptLangHead = String.format("%s;q=1.0", new Object[]{LocaleUtil.getAcceptLanguageHeader()});
        connection.setConnectTimeout(NetworkConstants.SOCKET_TIMEOUT);
        connection.setRequestProperty(Names.USER_AGENT, userAgent);
        connection.setRequestProperty(Names.ACCEPT_LANGUAGE, acceptLangHead);
        connection.setRequestProperty(Names.ACCEPT_ENCODING, Values.GZIP);
        connection.setRequestProperty("X-HS-V", "Helpshift-Android/4.1.1-support");
    }

    private static String constructPostParamsQuery(List<NameValuePair> params) {
        StringBuilder result = new StringBuilder();
        boolean first = true;
        for (NameValuePair pair : params) {
            if (first) {
                first = false;
            } else {
                result.append("&");
            }
            try {
                result.append(URLEncoder.encode(pair.getName(), Constants.ENCODING));
                result.append("=");
                result.append(URLEncoder.encode(pair.getValue(), Constants.ENCODING));
            } catch (UnsupportedEncodingException e) {
                Log.d(TAG, "Exception Unsupported Encoding", e);
            }
        }
        return result.toString();
    }

    private String bytesToHex(byte[] bytes) {
        char[] hexArray = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] hexChars = new char[(bytes.length * 2)];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = hexArray[v & 15];
        }
        return new String(hexChars);
    }

    private String getSignature(String sigString) throws GeneralSecurityException, InstallException {
        return getSignature(sigString, this.apiKey);
    }

    private String getSignature(String sigString, String key) throws GeneralSecurityException, InstallException {
        String data = sigString;
        if (TextUtils.isEmpty(key)) {
            throw new InstallException("apiKey Missing");
        }
        try {
            SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(Constants.ENCODING), "HmacSHA256");
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(secretKey);
            return bytesToHex(mac.doFinal(data.getBytes(Constants.ENCODING)));
        } catch (UnsupportedEncodingException e) {
            throw new GeneralSecurityException(e);
        }
    }

    private String getApiUri(String route) {
        return "/api/lib/2" + route;
    }

    private String getApiUrl(String route) throws InstallException {
        if (!TextUtils.isEmpty(this.domain)) {
            return "https://" + this.domain + getApiUri(route);
        }
        throw new InstallException("domain Missing");
    }

    private String constructGetParams(HashMap<String, String> data) {
        List<String> dataList = new ArrayList();
        for (String key : new ArrayList(data.keySet())) {
            dataList.add(key + "=" + Uri.encode((String) data.get(key)));
        }
        return TextUtils.join("&", dataList);
    }

    private String getStringValue(Object value) {
        if (value instanceof String) {
            return (String) value;
        }
        if (value instanceof ArrayList) {
            return new JSONArray((ArrayList) value).toString();
        }
        return null;
    }

    private List<NameValuePair> constructPostParams(HashMap<String, String> data) {
        List<String> mapKeys = new ArrayList(data.keySet());
        List<NameValuePair> params = new ArrayList(mapKeys.size());
        for (String key : mapKeys) {
            String dataString = getStringValue(data.get(key));
            if (dataString != null) {
                params.add(new NameValuePair(key, dataString));
            }
        }
        return params;
    }

    private HashMap<String, String> addAuthErrorLog(HashMap<String, String> data) throws InstallException {
        List<String> dataList = new ArrayList();
        dataList.add("platform-id=sdk");
        String token = UUID.randomUUID().toString();
        dataList.add("token=" + token);
        data.put(ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN, token);
        try {
            data.put("signature", getSignature(TextUtils.join("&", dataList), "sdk"));
        } catch (GeneralSecurityException e) {
            Log.d(TAG, "Could not generate signature: " + e.getLocalizedMessage(), e);
        }
        return data;
    }

    private HashMap<String, String> addAuth(HashMap<String, String> data, String route, String method) throws InstallException {
        String uriStr = getApiUri(route);
        if (TextUtils.isEmpty(this.appId)) {
            throw new InstallException("appId Missing");
        }
        data.put("platform-id", this.appId);
        data.put("method", method);
        data.put("uri", uriStr);
        data.put(ErrorReport.KEY_TIMESTAMP, TimeUtil.getAdjustedTimestamp(this.storage.getServerTimeDelta()));
        List<String> mapKeys = new ArrayList(data.keySet());
        List<String> dataList = new ArrayList();
        Collections.sort(mapKeys);
        for (String key : mapKeys) {
            if (!(key.equals(MessageColumns.SCREENSHOT) || key.equals(MessageColumns.META))) {
                String dataString = getStringValue(data.get(key));
                if (dataString != null) {
                    dataList.add(key + "=" + dataString);
                }
            }
        }
        try {
            data.put("signature", getSignature(TextUtils.join("&", dataList)));
            data.remove("method");
            data.remove("uri");
        } catch (GeneralSecurityException e) {
            Log.d(TAG, "Could not generate signature: " + e.getLocalizedMessage(), e);
        }
        return data;
    }

    private void sendFailMessage(Handler failure, int status) {
        Message result = failure.obtainMessage();
        HashMap messageResponse = new HashMap();
        messageResponse.put(IssueColumns.STATUS, Integer.valueOf(status));
        result.obj = messageResponse;
        failure.sendMessage(result);
    }

    private void makeRequest(String method, String route, HashMap data, Handler success, Handler failure) {
        makeRequest(method, route, data, success, failure, false);
    }

    private void makeRequest(String method, String route, HashMap data, Handler success, Handler failure, boolean forErrorLog) {
        final HashMap hashMap = data;
        final String str = route;
        final String str2 = method;
        final boolean z = forErrorLog;
        final Handler handler = success;
        final Handler handler2 = failure;
        new Thread(new Runnable() {
            /* JADX WARNING: inconsistent code. */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                r32 = this;
                r5 = new java.util.HashMap;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r2 = r2;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r5.<init>(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = r3;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r28 = r2.getApiUrl(r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r8 = 0;
                r0 = r32;
                r2 = r4;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = "GET";
                if (r2 != r3) goto L_0x00f0;
            L_0x001f:
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r4 = r2;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r6 = r3;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r7 = r4;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = r3.addAuth(r4, r6, r7);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r22 = r2.constructGetParams(r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r29 = new java.net.URL;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = new java.lang.StringBuilder;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2.<init>();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r28;
                r2 = r2.append(r0);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = "?";
                r2 = r2.append(r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r22;
                r2 = r2.append(r0);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = r2.toString();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r29;
                r0.<init>(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r8 = r29.openConnection();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r8 = (java.net.HttpURLConnection) r8;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "GET";
                r8.setRequestMethod(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                com.helpshift.support.HSApiClient.addHeadersToConnection(r8);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = r2.storage;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = r3;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r12 = r2.getEtag(r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = android.text.TextUtils.isEmpty(r12);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                if (r2 != 0) goto L_0x0089;
            L_0x0083:
                r2 = "If-None-Match";
                r8.setRequestProperty(r2, r12);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
            L_0x0089:
                if (r8 == 0) goto L_0x040c;
            L_0x008b:
                r27 = r8.getResponseCode();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r8.getHeaderFields();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r15 = r2.entrySet();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3 = r15.iterator();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x009b:
                r2 = r3.hasNext();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x0197;
            L_0x00a1:
                r14 = r3.next();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r14 = (java.util.Map.Entry) r14;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r14.getKey();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x009b;
            L_0x00ad:
                r2 = r14.getKey();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = "ETag";
                r2 = r2.equals(r4);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x009b;
            L_0x00bc:
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = r2.storage;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r6 = r3;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r14.getValue();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.util.List) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r7 = 0;
                r2 = r2.get(r7);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4.setEtag(r6, r2);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x009b;
            L_0x00d9:
                r9 = move-exception;
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = r7;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r4 = 1;
                r2.sendFailMessage(r3, r4);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "HelpShiftDebug";
                r3 = "Exception JSON";
                android.util.Log.d(r2, r3, r9);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
            L_0x00ef:
                return;
            L_0x00f0:
                r0 = r32;
                r2 = r4;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = "POST";
                if (r2 != r3) goto L_0x0089;
            L_0x00f9:
                r0 = r32;
                r2 = r5;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                if (r2 == 0) goto L_0x0179;
            L_0x00ff:
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r4 = r2;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = r3.addAuthErrorLog(r4);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r20 = r2.constructPostParams(r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
            L_0x0113:
                r29 = new java.net.URL;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r29;
                r1 = r28;
                r0.<init>(r1);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r8 = r29.openConnection();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r8 = (java.net.HttpURLConnection) r8;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "POST";
                r8.setRequestMethod(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = 1;
                r8.setDoOutput(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "Content-type";
                r3 = "application/x-www-form-urlencoded";
                r8.setRequestProperty(r2, r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                com.helpshift.support.HSApiClient.addHeadersToConnection(r8);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r19 = r8.getOutputStream();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r30 = new java.io.BufferedWriter;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = new java.io.OutputStreamWriter;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = "UTF-8";
                r0 = r19;
                r2.<init>(r0, r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r30;
                r0.<init>(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = com.helpshift.support.HSApiClient.constructPostParamsQuery(r20);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r30;
                r0.write(r2);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r30.flush();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r30.close();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r19.close();	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x0089;
            L_0x0161:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "install() not called";
                android.util.Log.e(r2, r3, r9);
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;
                r0 = r32;
                r3 = r7;
                r4 = 1;
                r2.sendFailMessage(r3, r4);
                goto L_0x00ef;
            L_0x0179:
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r4 = r2;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r6 = r3;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r7 = r4;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r3 = r3.addAuth(r4, r6, r7);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r20 = r2.constructPostParams(r3);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x0113;
            L_0x0197:
                r17 = "";
                r25 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r25.<init>();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
                r0 = r27;
                if (r0 < r2) goto L_0x0225;
            L_0x01a5:
                r2 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
                r0 = r27;
                if (r0 >= r2) goto L_0x0225;
            L_0x01ab:
                r23 = new java.io.BufferedInputStream;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r8.getInputStream();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r23;
                r0.<init>(r2);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3 = r15.iterator();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r24 = r23;
            L_0x01bc:
                r2 = r3.hasNext();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x01fb;
            L_0x01c2:
                r14 = r3.next();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r14 = (java.util.Map.Entry) r14;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r14.getKey();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x041a;
            L_0x01ce:
                r2 = r14.getKey();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = "Content-Encoding";
                r2 = r2.equals(r4);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x041a;
            L_0x01dd:
                r2 = r14.getValue();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.util.List) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = 0;
                r2 = r2.get(r4);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = "gzip";
                r2 = r2.equalsIgnoreCase(r4);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x041a;
            L_0x01f3:
                r23 = new java.util.zip.GZIPInputStream;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r23.<init>(r24);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x01f8:
                r24 = r23;
                goto L_0x01bc;
            L_0x01fb:
                r16 = new java.io.InputStreamReader;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r16;
                r1 = r24;
                r0.<init>(r1);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r21 = new java.io.BufferedReader;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r21;
                r1 = r16;
                r0.<init>(r1);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x020d:
                r17 = r21.readLine();	 Catch:{ IOException -> 0x021b, JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r17 == 0) goto L_0x0225;
            L_0x0213:
                r0 = r25;
                r1 = r17;
                r0.append(r1);	 Catch:{ IOException -> 0x021b, JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x020d;
            L_0x021b:
                r13 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "IO Exception ex";
                android.util.Log.d(r2, r3, r13);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x0225:
                r18 = new java.util.HashMap;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r18.<init>();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = "status";
                r3 = java.lang.Integer.valueOf(r27);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r18;
                r0.put(r2, r3);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
                r0 = r27;
                if (r0 < r2) goto L_0x02e8;
            L_0x023c:
                r2 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
                r0 = r27;
                if (r0 >= r2) goto L_0x02e8;
            L_0x0242:
                r2 = 0;
                com.helpshift.support.HSApiClient.timeStampErrorReplies = r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = "response";
                r3 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x02a3, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = r25.toString();	 Catch:{ JSONException -> 0x02a3, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3.<init>(r4);	 Catch:{ JSONException -> 0x02a3, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r18;
                r0.put(r2, r3);	 Catch:{ JSONException -> 0x02a3, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x0257:
                r0 = r32;
                r2 = r6;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r26 = r2.obtainMessage();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r18;
                r1 = r26;
                r1.obj = r0;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r6;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r26;
                r2.sendMessage(r0);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x026e:
                r8.disconnect();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x00ef;
            L_0x0273:
                r9 = move-exception;
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = r7;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r4 = 3;
                r2.sendFailMessage(r3, r4);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "HelpShiftDebug";
                r3 = "Exception Unknown Host";
                android.util.Log.d(r2, r3, r9);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x00ef;
            L_0x028b:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "Exception Malformed URL";
                android.util.Log.d(r2, r3, r9);
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;
                r0 = r32;
                r3 = r7;
                r4 = 1;
                r2.sendFailMessage(r3, r4);
                goto L_0x00ef;
            L_0x02a3:
                r10 = move-exception;
                r2 = "response";
                r3 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x02b6, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = r25.toString();	 Catch:{ JSONException -> 0x02b6, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3.<init>(r4);	 Catch:{ JSONException -> 0x02b6, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r18;
                r0.put(r2, r3);	 Catch:{ JSONException -> 0x02b6, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x0257;
            L_0x02b6:
                r11 = move-exception;
                throw r11;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x02b8:
                r9 = move-exception;
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = r7;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r4 = 0;
                r2.sendFailMessage(r3, r4);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "HelpShiftDebug";
                r3 = "Exception cannot connect Host";
                android.util.Log.d(r2, r3, r9);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x00ef;
            L_0x02d0:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "Exception Protocol";
                android.util.Log.d(r2, r3, r9);
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;
                r0 = r32;
                r3 = r7;
                r4 = 1;
                r2.sendFailMessage(r3, r4);
                goto L_0x00ef;
            L_0x02e8:
                r2 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
                r0 = r27;
                if (r0 != r2) goto L_0x032d;
            L_0x02ee:
                com.helpshift.support.HSApiClient.access$808();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r6;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r26 = r2.obtainMessage();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = 0;
                r0 = r26;
                r0.obj = r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r6;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r26;
                r2.sendMessage(r0);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x026e;
            L_0x0309:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "Exception Socket timeout";
                android.util.Log.d(r2, r3, r9);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x00ef;
            L_0x0315:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "Exception Unknown Host";
                android.util.Log.d(r2, r3, r9);
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;
                r0 = r32;
                r3 = r7;
                r4 = 3;
                r2.sendFailMessage(r3, r4);
                goto L_0x00ef;
            L_0x032d:
                r2 = 422; // 0x1a6 float:5.91E-43 double:2.085E-321;
                r0 = r27;
                if (r0 != r2) goto L_0x03ef;
            L_0x0333:
                com.helpshift.support.HSApiClient.access$808();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = com.helpshift.support.HSApiClient.timeStampErrorReplies;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3 = 3;
                if (r2 > r3) goto L_0x03ba;
            L_0x033d:
                r31 = r15.iterator();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
            L_0x0341:
                r2 = r31.hasNext();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x026e;
            L_0x0347:
                r14 = r31.next();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r14 = (java.util.Map.Entry) r14;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r14.getKey();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x0341;
            L_0x0353:
                r2 = r14.getKey();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3 = "HS-UEpoch";
                r2 = r2.equals(r3);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                if (r2 == 0) goto L_0x0341;
            L_0x0362:
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3 = r2.storage;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = r14.getValue();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.util.List) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = 0;
                r2 = r2.get(r4);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2 = com.helpshift.util.TimeUtil.calculateTimeAdjustment(r2);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r3.setServerTimeDelta(r2);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r3 = r4;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r4 = r3;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r6 = r6;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r7 = r7;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r2.makeRequest(r3, r4, r5, r6, r7);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x0341;
            L_0x0396:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "Exception SSL Peer Unverified";
                android.util.Log.d(r2, r3, r9);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x00ef;
            L_0x03a2:
                r9 = move-exception;
                r2 = "HelpShiftDebug";
                r3 = "Exception IO";
                android.util.Log.d(r2, r3, r9);
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;
                r0 = r32;
                r3 = r7;
                r4 = 1;
                r2.sendFailMessage(r3, r4);
                goto L_0x00ef;
            L_0x03ba:
                r2 = 0;
                com.helpshift.support.HSApiClient.timeStampErrorReplies = r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r7;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r26 = r2.obtainMessage();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r18;
                r1 = r26;
                r1.obj = r0;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r7;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r26;
                r2.sendMessage(r0);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x026e;
            L_0x03d7:
                r9 = move-exception;
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r0 = r32;
                r3 = r7;	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r4 = 1;
                r2.sendFailMessage(r3, r4);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                r2 = "HelpShiftDebug";
                r3 = "Exception IO";
                android.util.Log.d(r2, r3, r9);	 Catch:{ InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0, UnknownHostException -> 0x0315, IOException -> 0x03a2 }
                goto L_0x00ef;
            L_0x03ef:
                r2 = 0;
                com.helpshift.support.HSApiClient.timeStampErrorReplies = r2;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r7;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r26 = r2.obtainMessage();	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r18;
                r1 = r26;
                r1.obj = r0;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r2 = r7;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r26;
                r2.sendMessage(r0);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x026e;
            L_0x040c:
                r0 = r32;
                r2 = com.helpshift.support.HSApiClient.this;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r0 = r32;
                r3 = r7;	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                r4 = 3;
                r2.sendFailMessage(r3, r4);	 Catch:{ JSONException -> 0x00d9, UnknownHostException -> 0x0273, SocketException -> 0x02b8, SocketTimeoutException -> 0x0309, SSLPeerUnverifiedException -> 0x0396, IOException -> 0x03d7, InstallException -> 0x0161, MalformedURLException -> 0x028b, ProtocolException -> 0x02d0 }
                goto L_0x00ef;
            L_0x041a:
                r23 = r24;
                goto L_0x01f8;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.helpshift.support.HSApiClient.1.run():void");
            }
        }).start();
    }

    private String getMimeType(String url) {
        String type = null;
        try {
            InputStream is = new FileInputStream(url);
            type = URLConnection.guessContentTypeFromStream(is);
            if (type == null) {
                type = URLConnection.guessContentTypeFromName(url);
            }
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return type;
    }

    private void uploadImage(String method, String route, HashMap plainData, Handler success, Handler failure) {
        final HashMap hashMap = plainData;
        final String str = route;
        final String str2 = method;
        final Handler handler = success;
        final Handler handler2 = failure;
        new Thread(new Runnable() {
            public void run() {
                try {
                    HashMap data = HSApiClient.this.addAuth(hashMap, str, str2);
                    File file = new File((String) data.get(MessageColumns.SCREENSHOT));
                    String screenshotMimeType = HSApiClient.this.getMimeType(file.getPath());
                    HashMap messageResponse;
                    Message result;
                    if (new HashSet(Arrays.asList(new String[]{"image/jpeg", "image/png", "image/gif", "image/x-png", "image/x-citrix-pjpeg", "image/x-citrix-gif", "image/pjpeg"})).contains(screenshotMimeType)) {
                        URL postUrl = null;
                        try {
                            postUrl = new URL(HSApiClient.this.getApiUrl(str));
                        } catch (MalformedURLException e) {
                            Log.d(HSApiClient.TAG, e.getMessage(), e);
                            HSApiClient.this.sendFailMessage(handler2, 2);
                        }
                        String lineEnd = "\r\n";
                        String twoHyphens = "--";
                        String boundary = "*****";
                        if (postUrl != null) {
                            try {
                                HttpURLConnection conn = (HttpURLConnection) postUrl.openConnection();
                                conn.setDoInput(true);
                                conn.setDoOutput(true);
                                conn.setUseCaches(false);
                                conn.setRequestMethod("POST");
                                conn.setConnectTimeout(30000);
                                conn.setReadTimeout(30000);
                                conn.setRequestProperty(Names.CONNECTION, "Keep-Alive");
                                conn.setRequestProperty(Names.CONTENT_TYPE, "multipart/form-data;boundary=" + boundary);
                                DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
                                dos.writeBytes(twoHyphens + boundary + lineEnd);
                                for (String key : new ArrayList(data.keySet())) {
                                    if (!key.equals(MessageColumns.SCREENSHOT)) {
                                        String value = (String) data.get(key);
                                        dos.writeBytes("Content-Disposition: form-data; name=\"" + key + "\"; " + lineEnd);
                                        dos.writeBytes("Content-Type: text/plain;charset=UTF-8" + lineEnd);
                                        dos.writeBytes("Content-Length: " + value.length() + lineEnd);
                                        dos.writeBytes(lineEnd);
                                        dos.writeBytes(value + lineEnd);
                                        dos.writeBytes(twoHyphens + boundary + lineEnd);
                                    }
                                }
                                FileInputStream fileInputStream = new FileInputStream(file);
                                dos.writeBytes(twoHyphens + boundary + lineEnd);
                                dos.writeBytes("Content-Disposition: form-data; name=\"screenshot\"; filename=\"" + file.getName() + "\"" + lineEnd);
                                dos.writeBytes("Content-Type: " + screenshotMimeType + lineEnd);
                                dos.writeBytes("Content-Length: " + file.length() + lineEnd);
                                dos.writeBytes(lineEnd);
                                int bufferSize = Math.min(fileInputStream.available(), 1048576);
                                byte[] buffer = new byte[bufferSize];
                                int bytesRead = fileInputStream.read(buffer, 0, bufferSize);
                                while (bytesRead > 0) {
                                    dos.write(buffer, 0, bufferSize);
                                    bufferSize = Math.min(fileInputStream.available(), 1048576);
                                    bytesRead = fileInputStream.read(buffer, 0, bufferSize);
                                }
                                dos.writeBytes(lineEnd);
                                dos.writeBytes(twoHyphens + boundary + twoHyphens + lineEnd);
                                fileInputStream.close();
                                int status = conn.getResponseCode();
                                StringBuilder responseStr = new StringBuilder();
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                                while (true) {
                                    try {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        responseStr.append(line);
                                    } catch (Throwable ex) {
                                        Log.d(HSApiClient.TAG, "IO Exception ex", ex);
                                        HSApiClient.this.sendFailMessage(handler2, 2);
                                    }
                                }
                                String response = responseStr.toString();
                                messageResponse = new HashMap();
                                messageResponse.put(IssueColumns.STATUS, Integer.valueOf(status));
                                if (status < 200 || status >= 300) {
                                    result = handler2.obtainMessage();
                                    result.obj = messageResponse;
                                    handler2.sendMessage(result);
                                } else {
                                    try {
                                        messageResponse.put("response", new JSONArray(response));
                                    } catch (JSONException e2) {
                                        messageResponse.put("response", new JSONObject(response));
                                    }
                                    result = handler.obtainMessage();
                                    result.obj = messageResponse;
                                    handler.sendMessage(result);
                                }
                                conn.disconnect();
                                dos.flush();
                                dos.close();
                                return;
                            } catch (JSONException eobj) {
                                throw eobj;
                            } catch (Exception e3) {
                                Log.d(HSApiClient.TAG, e3.getMessage(), e3);
                                HSApiClient.this.sendFailMessage(handler2, 2);
                                return;
                            }
                        }
                        HSApiClient.this.sendFailMessage(handler2, 2);
                        return;
                    }
                    messageResponse = new HashMap();
                    messageResponse.put(IssueColumns.STATUS, Integer.valueOf(-1));
                    result = handler.obtainMessage();
                    result.obj = messageResponse;
                    handler2.sendMessage(result);
                } catch (InstallException e4) {
                    Log.e(HSApiClient.TAG, "Error : ", e4);
                    HSApiClient.this.sendFailMessage(handler2, 1);
                }
            }
        }).start();
    }

    protected void fetchFaqs(Handler success, Handler failure) {
        HashMap data = new HashMap();
        data.put("edfl", String.valueOf(LocaleUtil.isDefaultFallbackLanguageEnabled()));
        makeRequest("GET", "/faqs/", data, success, failure);
    }

    protected void registerProfile(Handler success, Handler failure, String username, String email, String identifier, String crittercismId) {
        HashMap data = new HashMap();
        data.put("displayname", username);
        data.put(ProfilesDBHelper.COLUMN_EMAIL, email);
        data.put("identifier", identifier);
        if (crittercismId != null) {
            data.put("crittercism-id", crittercismId);
        }
        makeRequest("POST", "/profiles/", data, success, failure);
    }

    protected void updateUAToken(Handler success, Handler failure, String deviceToken, String profileId) {
        HashMap data = new HashMap();
        data.put(ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN, deviceToken);
        data.put("profile-id", profileId);
        makeRequest("POST", "/update-ua-token/", data, success, failure);
    }

    protected void fetchMyIssues(Handler success, Handler failure, String profileId, String since, String mc, String chatLaunchSource) {
        HashMap data = new HashMap();
        data.put("profile-id", profileId);
        data.put("since", since);
        data.put("mc", mc);
        if (chatLaunchSource != null) {
            data.put("chat-launch-source", chatLaunchSource);
        }
        makeRequest("POST", "/my-issues/", data, success, failure);
    }

    protected void createIssue(Handler success, Handler failure, String profileId, String messageText, String meta) {
        HashMap data = new HashMap();
        data.put("profile-id", profileId);
        data.put("message-text", messageText);
        data.put(MessageColumns.META, meta);
        makeRequest("POST", "/issues/", data, success, failure);
    }

    protected void addMessage(Handler success, Handler failure, String profileId, String issueId, String messageText, String type, String refers, String messageMeta) {
        HashMap data = new HashMap();
        if (type == "ca") {
            messageText = "Accepted the solution";
        } else if (type == "ncr") {
            messageText = "Did not accept the solution";
        } else if (type == "ar") {
            messageText = "Accepted review request";
        }
        data.put("profile-id", profileId);
        data.put("message-text", messageText);
        data.put(MessageColumns.TYPE, type);
        data.put("refers", refers);
        data.put("message-meta", messageMeta);
        makeRequest("POST", "/issues/" + issueId + "/messages/", data, success, failure);
    }

    public void addScMessage(Handler success, Handler failure, String profileId, String issueId, String messageText, String type, String refers, String imageUri) {
        HashMap data = new HashMap();
        if (type == "sc") {
            messageText = "Screenshot sent";
        }
        data.put("profile-id", profileId);
        data.put("message-text", messageText);
        data.put(MessageColumns.TYPE, type);
        data.put("refers", refers);
        data.put(MessageColumns.SCREENSHOT, imageUri);
        uploadImage("POST", "/issues/" + issueId + "/messages/", data, success, failure);
    }

    protected void fetchMessages(Handler success, Handler failure, String profileId, String issueId, String since, String chatLaunchSource) {
        HashMap data = new HashMap();
        data.put("profile-id", profileId);
        data.put("since", since);
        if (chatLaunchSource != null) {
            data.put("chat-launch-source", chatLaunchSource);
        }
        makeRequest("GET", "/issues/" + issueId + "/messages/", data, success, failure);
    }

    protected void markHelpful(Handler success, Handler failure, String faqId) {
        HashMap data = new HashMap();
        makeRequest("POST", "/faqs/" + faqId + "/helpful/", data, success, failure);
    }

    protected void markUnhelpful(Handler success, Handler failure, String faqId) {
        HashMap data = new HashMap();
        makeRequest("POST", "/faqs/" + faqId + "/unhelpful/", data, success, failure);
    }

    protected void getConfig(Handler success, Handler failure) {
        makeRequest("GET", "/config/", new HashMap(), success, failure);
    }

    protected void sendErrorReport(Handler success, Handler failure, HashMap data) {
        makeRequest("POST", "/events/log", data, success, failure, true);
    }

    protected void reportActionEvents(Handler success, Handler failure, HashMap data) {
        makeRequest("POST", "/events/", data, success, failure);
    }

    protected void getQuestion(String publishId, Handler success, Handler failure) {
        HashMap data = new HashMap();
        data.put("edfl", String.valueOf(LocaleUtil.isDefaultFallbackLanguageEnabled()));
        makeRequest("GET", "/faqs/" + publishId + "/", data, success, failure);
    }

    protected void updateMessageSeenState(JSONArray messageIds, String source, String readAt, Handler success, Handler failure) {
        HashMap data = new HashMap();
        data.put("message-ids", messageIds.toString());
        data.put("source", source);
        data.put("read-at", readAt);
        makeRequest("POST", "/events/messages/seen/", data, success, failure);
    }

    protected void sendCustomerSatisfactionRating(Integer rating, String feedback, String issueId, Handler success, Handler failure) {
        HashMap data = new HashMap();
        data.put("rating", "" + rating);
        if (!TextUtils.isEmpty(feedback)) {
            data.put("feedback", feedback);
        }
        makeRequest("POST", "/issues/" + issueId + "/customer-survey/", data, success, failure);
    }
}
