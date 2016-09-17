package sfs2x.client.controllers.system;

import com.helpshift.support.model.ErrorReport;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.SFSEvent;

public class ResHandshake implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        Map<String, Object> evtParams = new HashMap();
        evtParams.put(ErrorReport.KEY_MESSAGE, message.getContent());
        BaseEvent evt = new SFSEvent(SFSEvent.HANDSHAKE, evtParams);
        sfs.handleHandShake(evt);
        sfs.dispatchEvent(evt);
    }
}
