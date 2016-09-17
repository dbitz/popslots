package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSBuddyEvent;
import sfs2x.client.entities.Buddy;
import sfs2x.client.entities.SFSBuddy;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.buddylist.SetBuddyVariablesRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResAddBuddy implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSBuddyEvent(SFSBuddyEvent.BUDDY_ERROR, evtParams));
            return;
        }
        Buddy buddy = SFSBuddy.fromSFSArray(sfso.getSFSArray(SetBuddyVariablesRequest.KEY_BUDDY_NAME));
        sfs.getBuddyManager().addBuddy(buddy);
        evtParams.put("buddy", buddy);
        sfs.dispatchEvent(new SFSBuddyEvent(SFSBuddyEvent.BUDDY_ADD, evtParams));
    }
}
