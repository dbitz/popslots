package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSBuddyEvent;
import sfs2x.client.entities.SFSBuddy;
import sfs2x.client.entities.variables.BuddyVariable;
import sfs2x.client.entities.variables.SFSBuddyVariable;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.buddylist.InitBuddyListRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResInitBuddyList implements IResHandler {
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
        int i;
        ISFSArray bListData = sfso.getSFSArray(InitBuddyListRequest.KEY_BLIST);
        ISFSArray myVarsData = sfso.getSFSArray(InitBuddyListRequest.KEY_MY_VARS);
        Collection<String> buddyStates = sfso.getUtfStringArray(InitBuddyListRequest.KEY_BUDDY_STATES);
        sfs.getBuddyManager().clearAll();
        for (i = 0; i < bListData.size(); i++) {
            sfs.getBuddyManager().addBuddy(SFSBuddy.fromSFSArray(bListData.getSFSArray(i)));
        }
        if (buddyStates != null) {
            sfs.getBuddyManager().setBuddyStates(new ArrayList(buddyStates));
        }
        List<BuddyVariable> myBuddyVariables = new ArrayList();
        for (i = 0; i < myVarsData.size(); i++) {
            myBuddyVariables.add(SFSBuddyVariable.fromSFSArray(myVarsData.getSFSArray(i)));
        }
        sfs.getBuddyManager().setMyVariables(myBuddyVariables);
        sfs.getBuddyManager().setInited(true);
        evtParams.put("buddyList", sfs.getBuddyManager().getBuddyList());
        evtParams.put("myVariables", sfs.getBuddyManager().getMyVariables());
        sfs.dispatchEvent(new SFSBuddyEvent(SFSBuddyEvent.BUDDY_LIST_INIT, evtParams));
    }
}
