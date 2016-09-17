package sfs2x.client.controllers.system;

import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;

public class ResPingPong implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        Map<String, Object> evtParams = new HashMap();
        evtParams.put("lagValue", Integer.valueOf(sfs.getLagMonitor().onPingPong()));
        sfs.dispatchEvent(new SFSEvent(SFSEvent.PING_PONG, evtParams));
    }
}
