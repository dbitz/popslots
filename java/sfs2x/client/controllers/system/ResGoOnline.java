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
import sfs2x.client.entities.variables.ReservedBuddyVariables;
import sfs2x.client.entities.variables.SFSBuddyVariable;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.buddylist.GoOnlineRequest;
import sfs2x.client.requests.buddylist.SetBuddyVariablesRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResGoOnline implements IResHandler {
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
        String buddyName = sfso.getUtfString(SetBuddyVariablesRequest.KEY_BUDDY_NAME);
        Buddy buddy = sfs.getBuddyManager().getBuddyByName(buddyName);
        boolean isItMe = buddyName.equals(sfs.getMySelf().getName());
        int onlineValue = sfso.getByte(GoOnlineRequest.KEY_ONLINE).byteValue();
        boolean onlineState = onlineValue == 0;
        boolean fireEvent = true;
        if (isItMe) {
            if (sfs.getBuddyManager().getMyOnlineState() != onlineState) {
                sfs.getLogger().warn("Unexpected: MyOnlineState is not in synch with the server. Resynching: " + onlineState);
                sfs.getBuddyManager().setMyOnlineState(onlineState);
            }
        } else if (buddy != null) {
            buddy.setId(sfso.getInt(GoOnlineRequest.KEY_BUDDY_ID).intValue());
            buddy.setVariable(new SFSBuddyVariable(ReservedBuddyVariables.BV_ONLINE, Boolean.valueOf(onlineState)));
            if (onlineValue == 2) {
                buddy.clearVolatileVariables();
            }
            fireEvent = sfs.getBuddyManager().getMyOnlineState();
        } else {
            sfs.getLogger().warn("GoOnline error, buddy not found: " + buddyName + ", in local BuddyList.");
            return;
        }
        if (fireEvent) {
            evtParams.put("buddy", buddy);
            evtParams.put("isItMe", Boolean.valueOf(isItMe));
            sfs.dispatchEvent(new SFSBuddyEvent(SFSBuddyEvent.BUDDY_ONLINE_STATE_UPDATE, evtParams));
        }
    }
}
