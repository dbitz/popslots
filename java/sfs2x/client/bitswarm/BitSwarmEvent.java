package sfs2x.client.bitswarm;

import java.util.Map;
import sfs2x.client.core.BaseEvent;

public class BitSwarmEvent extends BaseEvent {
    public static final String CONNECT = "connect";
    public static final String DATA_ERROR = "dataError";
    public static final String DISCONNECT = "disconnect";
    public static final String IO_ERROR = "ioError";
    public static final String RECONNECTION_TRY = "reconnectionTry";
    public static final String SECURITY_ERROR = "securityError";

    public BitSwarmEvent(String type) {
        super(type, null);
    }

    public BitSwarmEvent(String type, Map<String, Object> arguments) {
        super(type, arguments);
    }
}