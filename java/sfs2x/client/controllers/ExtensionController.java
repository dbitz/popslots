package sfs2x.client.controllers;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.BaseController;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.core.SFSEvent;

public class ExtensionController extends BaseController {
    public static final String KEY_CMD = "c";
    public static final String KEY_PARAMS = "p";
    public static final String KEY_ROOM = "r";
    private BitSwarmClient bitSwarm;
    private ISmartFox sfs;

    public ExtensionController(ISmartFox sfs) {
        this.sfs = sfs;
    }

    public ExtensionController(BitSwarmClient bitSwarm) {
        this.bitSwarm = bitSwarm;
        this.sfs = bitSwarm.getSfs();
    }

    public void handleMessage(IMessage message) {
        if (this.sfs.isDebug()) {
            this.log.info(message.toString());
        }
        ISFSObject obj = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        evtParams.put("cmd", obj.getUtfString(KEY_CMD));
        evtParams.put("params", obj.getSFSObject(KEY_PARAMS));
        if (obj.containsKey(KEY_ROOM)) {
            evtParams.put("sourceRoom", obj.getInt(KEY_ROOM));
        }
        if (message.isUDP()) {
            evtParams.put("packetId", Long.valueOf(message.getPacketId()));
        }
        this.sfs.dispatchEvent(new SFSEvent(SFSEvent.EXTENSION_RESPONSE, evtParams));
    }
}
