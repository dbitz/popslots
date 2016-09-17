package com.helpshift.network.util;

import com.helpshift.network.util.constants.NetworkConstants;
import java.util.HashMap;
import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class HeaderUtil {
    public static Map<String, String> getCommonHeaders() {
        HashMap<String, String> headerMap = new HashMap();
        headerMap.put(Names.ACCEPT_LANGUAGE, NetworkConstants.getAcceptLangHead());
        headerMap.put(Names.ACCEPT_ENCODING, Values.GZIP);
        headerMap.put("X-HS-V", "Helpshift-Android/" + NetworkConstants.getLibraryVersion());
        return headerMap;
    }
}
