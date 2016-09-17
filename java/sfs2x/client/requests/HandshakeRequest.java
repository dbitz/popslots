package sfs2x.client.requests;

import sfs2x.client.ISmartFox;

public class HandshakeRequest extends BaseRequest {
    public static final String KEY_API = "api";
    public static final String KEY_CLIENT_TYPE = "cl";
    public static final String KEY_COMPRESSION_THRESHOLD = "ct";
    public static final String KEY_MAX_MESSAGE_SIZE = "ms";
    public static final String KEY_RECONNECTION_TOKEN = "rt";
    public static final String KEY_SESSION_TOKEN = "tk";

    public HandshakeRequest(String apiVersion, String reconnectionToken, String clientType) {
        super(0);
        this.sfso.putUtfString(KEY_API, apiVersion);
        this.sfso.putUtfString(KEY_CLIENT_TYPE, clientType);
        this.sfso.putBool("bin", true);
        if (reconnectionToken != null) {
            this.sfso.putUtfString(KEY_RECONNECTION_TOKEN, reconnectionToken);
        }
    }

    public HandshakeRequest(String apiVersion, String clientType) {
        this(apiVersion, null, clientType);
    }

    public void validate(ISmartFox sfs) {
    }

    public void execute(ISmartFox sfs) {
    }
}
