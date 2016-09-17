package sfs2x.client.bitswarm.bbox;

import java.util.Map;
import sfs2x.client.core.SFSEvent;

public class BBEvent extends SFSEvent {
    public static final String CONNECT = "bb-connect";
    public static final String DATA = "bb-data";
    public static final String DISCONNECT = "bb-disconnect";
    public static final String IO_ERROR = "bb-ioError";
    public static final String SECURITY_ERROR = "bb-securityError";

    public BBEvent(String type) {
        super(type);
    }

    public BBEvent(String type, Map<String, Object> params) {
        super(type, params);
    }
}
