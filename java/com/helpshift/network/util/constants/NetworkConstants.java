package com.helpshift.network.util.constants;

import android.os.Build.VERSION;
import java.util.Locale;

public class NetworkConstants {
    public static final int CONNECT_TIMEOUT = 5000;
    public static int DEFAULT_POOL_SIZE = 4096;
    public static int DEFAULT_REQUEST_MAX_SIZE = 8;
    public static final int POOL_SHUTDOWN_TIMEOUT = 60;
    public static final int SOCKET_TIMEOUT = 5000;
    private static final String apiBase = "/api/lib/";
    private static final String apiVersion = "1";
    private static final String contentType = "application/x-www-form-urlencoded";
    private static final String libraryVersion = "4.1.1-support";
    private static final String scheme = "https://";
    private static final String userAgent = ("Helpshift-Android/4.1.1-support/" + VERSION.RELEASE);

    public static class ErrorCodes {
        public static final Integer CONTENT_NOT_FOUND = Integer.valueOf(6);
        public static final Integer CONTENT_UNCHANGED = Integer.valueOf(9);
        public static final Integer ENTITY_TOO_LARGE = Integer.valueOf(0);
        public static final Integer NO_CONNECTION = Integer.valueOf(5);
        public static final Integer OBJECT_NOT_FOUND = Integer.valueOf(2);
        public static final Integer PARSE_ERROR = Integer.valueOf(7);
        public static final Integer REQUEST_TIMEOUT = Integer.valueOf(4);
        public static final Integer SERVER_ERROR = Integer.valueOf(3);
        public static final Integer TIMESTAMP_MISMATCH = Integer.valueOf(8);
        public static final Integer UNAUTHORIZED_ACCESS = Integer.valueOf(1);
    }

    public static String getApiVersion() {
        return apiVersion;
    }

    public static String getApiBase() {
        return apiBase;
    }

    public static String getScheme() {
        return scheme;
    }

    public static String getLibraryVersion() {
        return libraryVersion;
    }

    public static String getAcceptLangHead() {
        return String.format("%s;q=1.0", new Object[]{Locale.getDefault().getLanguage()});
    }

    public static String getUserAgent() {
        return userAgent;
    }

    public static String getContentType() {
        return contentType;
    }
}
