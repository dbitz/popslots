package com.helpshift.network.request;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.adjust.sdk.Constants;
import com.helpshift.exceptions.InstallException;
import com.helpshift.model.InfoModelFactory;
import com.helpshift.network.NameValuePair;
import com.helpshift.network.errors.NetworkError;
import com.helpshift.network.response.NetworkResponse;
import com.helpshift.network.response.Response;
import com.helpshift.network.response.Response.ErrorListener;
import com.helpshift.network.response.Response.Listener;
import com.helpshift.network.response.ResponseParser;
import com.helpshift.network.util.HeaderUtil;
import com.helpshift.network.util.constants.NetworkConstants;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.util.SchemaUtil;
import com.helpshift.util.SecurityUtil;
import com.helpshift.util.StringUtil;
import com.helpshift.util.TimeUtil;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class Request {
    private static final String TAG = "HelpshiftDebug";
    private static AtomicInteger sequenceGenerator = new AtomicInteger();
    private final ErrorListener errorListener;
    private Listener listener;
    private final int method;
    private Map<String, String> requestData;
    private boolean responseDelivered = false;
    private ResponseParser responseParser;
    private Integer sequence;
    private Future task;
    private final String url;

    public interface Method {
        public static final int GET = 0;
        public static final int POST = 1;
    }

    public <T> Request(int method, String url, Map<String, String> requestData, Listener<T> listener, ErrorListener errorListener, ResponseParser<T> responseParser) {
        this.method = method;
        this.url = sanitiseUrl(url);
        this.listener = listener;
        this.errorListener = errorListener;
        this.requestData = requestData;
        this.sequence = Integer.valueOf(sequenceGenerator.incrementAndGet());
        this.responseParser = responseParser;
    }

    public Map<String, String> getRequestData() {
        return this.requestData;
    }

    public Request setFutureTask(Future requestTask) {
        this.task = requestTask;
        return this;
    }

    private String sanitiseUrl(String url) {
        String sanitisedUrl = url;
        if (url.startsWith("/")) {
            return sanitisedUrl;
        }
        return "/" + url;
    }

    public int getMethod() {
        return this.method;
    }

    public String getMethodString() {
        switch (this.method) {
            case Base64.NO_OPTIONS /*0*/:
                return "GET";
            case BuddyOnlineState.OFFLINE /*1*/:
                return "POST";
            default:
                return "";
        }
    }

    public int getSequence() {
        if (this.sequence != null) {
            return this.sequence.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Map<String, String> getHeaders() {
        Map<String, String> headers = HeaderUtil.getCommonHeaders();
        if (this.method == 0) {
            String etag = InfoModelFactory.getInstance().sdkInfoModel.getEtag(this.url);
            if (!TextUtils.isEmpty(etag)) {
                headers.put(Names.IF_NONE_MATCH, etag);
            }
        } else if (this.method == 1) {
            headers.put("Content-type", "application/x-www-form-urlencoded");
        }
        return headers;
    }

    public String getUrl() {
        return this.url;
    }

    private String getApiUri() {
        return NetworkConstants.getApiBase() + NetworkConstants.getApiVersion() + this.url;
    }

    public String getFullUri() throws InstallException {
        if (InfoModelFactory.getInstance().appInfoModel.isInstalled()) {
            return NetworkConstants.getScheme() + InfoModelFactory.getInstance().appInfoModel.getDomainName() + getApiUri();
        }
        throw new InstallException("Install information missing");
    }

    public URL getParsedURL() throws InstallException, MalformedURLException {
        String url = getFullUri();
        if (this.method == 0) {
            url = url + "?" + encodeGetParameters(addAuth());
        }
        return new URL(url);
    }

    private Map<String, String> addAuth() throws InstallException {
        Map<String, String> data;
        String uriStr = getApiUri();
        if (this.requestData != null) {
            data = new HashMap(this.requestData);
        } else {
            data = new HashMap();
        }
        if (InfoModelFactory.getInstance().appInfoModel.isInstalled()) {
            data.put("platform-id", InfoModelFactory.getInstance().appInfoModel.getPlatformId());
            data.put("method", getMethodString());
            data.put("uri", uriStr);
            String ts = TimeUtil.getCurrentTimestamp();
            if (SchemaUtil.validateTimestamp(ts)) {
                data.put(ErrorReport.KEY_TIMESTAMP, ts);
            }
            List<String> mapKeys = new ArrayList(data.keySet());
            List<String> dataList = new ArrayList();
            Collections.sort(mapKeys);
            for (String key : mapKeys) {
                if (!(key.equals(MessageColumns.SCREENSHOT) || key.equals(MessageColumns.META))) {
                    String dataString = StringUtil.toString(data.get(key));
                    if (dataString != null) {
                        dataList.add(key + "=" + dataString);
                    }
                }
            }
            try {
                data.put("signature", SecurityUtil.getSignature(TextUtils.join("&", dataList)));
                data.remove("method");
                data.remove("uri");
            } catch (GeneralSecurityException e) {
                Log.d(TAG, "Could not generate signature: " + e.getLocalizedMessage(), e);
            }
            return data;
        }
        throw new InstallException("appId Missing");
    }

    private String encodeGetParameters(Map<String, String> inputParams) {
        List<String> dataList = new ArrayList();
        for (String key : new ArrayList(inputParams.keySet())) {
            dataList.add(key + "=" + Uri.encode((String) inputParams.get(key)));
        }
        return TextUtils.join("&", dataList);
    }

    private List<NameValuePair> encodePostParameters(Map<String, String> inputParams) {
        List<String> mapKeys = new ArrayList(inputParams.keySet());
        List<NameValuePair> params = new ArrayList(mapKeys.size());
        for (String key : mapKeys) {
            String dataString = StringUtil.toString(inputParams.get(key));
            if (dataString != null) {
                params.add(new NameValuePair(key, dataString));
            }
        }
        return params;
    }

    public String getPOSTParametersQuery() throws InstallException {
        StringBuilder result = new StringBuilder();
        boolean first = true;
        for (NameValuePair pair : encodePostParameters(addAuth())) {
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

    public void markDelivered() {
        this.responseDelivered = true;
    }

    public boolean hasHadResponseDelivered() {
        return this.responseDelivered;
    }

    protected <T> Response<T> parseNetworkResponse(NetworkResponse response) {
        return this.responseParser.parseResponse(response);
    }

    protected NetworkError parseNetworkError(NetworkError networkError) {
        return networkError;
    }

    public <T> void deliverResponse(T response) {
        this.listener.onResponse(response, Integer.valueOf(getSequence()));
    }

    public void deliverError(NetworkError error) {
        if (this.errorListener != null) {
            this.errorListener.onErrorResponse(error, Integer.valueOf(getSequence()));
        }
    }

    public int getConnectTimeout() {
        return NetworkConstants.SOCKET_TIMEOUT;
    }

    public int getReadTimeout() {
        return NetworkConstants.SOCKET_TIMEOUT;
    }

    public boolean isUsingCache() {
        return false;
    }

    public boolean isDoInput() {
        return true;
    }

    public boolean isDoOutput() {
        return this.method == 1;
    }

    public String getUserAgent() {
        return NetworkConstants.getUserAgent();
    }

    public String getContentType() {
        return NetworkConstants.getContentType();
    }

    public String toString() {
        return this.url + " " + TAG + " " + " " + this.sequence;
    }
}
