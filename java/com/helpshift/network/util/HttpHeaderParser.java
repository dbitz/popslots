package com.helpshift.network.util;

import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class HttpHeaderParser {
    public static String parseCharset(Map<String, String> headers, String defaultCharset) {
        String contentType = (String) headers.get(Names.CONTENT_TYPE);
        if (contentType == null) {
            return defaultCharset;
        }
        String[] params = contentType.split(";");
        for (int i = 1; i < params.length; i++) {
            String[] pair = params[i].trim().split("=");
            if (pair.length == 2 && pair[0].equals(Values.CHARSET)) {
                return pair[1];
            }
        }
        return defaultCharset;
    }
}
