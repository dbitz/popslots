package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSBuddyEvent;
import sfs2x.client.entities.Buddy;
import sfs2x.client.entities.variables.BuddyVariable;
import sfs2x.client.entities.variables.SFSBuddyVariable;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.buddylist.SetBuddyVariablesRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResSetBuddyVariables implements IResHandler {
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
        ISFSArray buddyVarsData = sfso.getSFSArray(SetBuddyVariablesRequest.KEY_BUDDY_VARS);
        Buddy buddy = sfs.getBuddyManager().getBuddyByName(buddyName);
        boolean isItMe = buddyName.equals(sfs.getMySelf().getName());
        List<String> changedVarNames = new ArrayList();
        List<BuddyVariable> variables = new ArrayList();
        boolean fireEvent = true;
        for (int j = 0; j < buddyVarsData.size(); j++) {
            BuddyVariable buddyVar = SFSBuddyVariable.fromSFSArray(buddyVarsData.getSFSArray(j));
            variables.add(buddyVar);
            changedVarNames.add(buddyVar.getName());
        }
        if (isItMe) {
            sfs.getBuddyManager().setMyVariables(variables);
        } else if (buddy != null) {
            buddy.setVariables(variables);
            fireEvent = sfs.getBuddyManager().getMyOnlineState();
        } else {
            sfs.getLogger().warn("Unexpected. Target of BuddyVariables update not found: " + buddyName);
            return;
        }
        if (fireEvent) {
            evtParams.put("isItMe", Boolean.valueOf(isItMe));
            evtParams.put("changedVars", changedVarNames);
            evtParams.put("buddy", buddy);
            sfs.dispatchEvent(new SFSBuddyEvent(SFSBuddyEvent.BUDDY_VARIABLES_UPDATE, evtParams));
        }
    }
}
