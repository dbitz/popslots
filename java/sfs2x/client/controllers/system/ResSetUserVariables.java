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
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.User;
import sfs2x.client.entities.variables.SFSUserVariable;
import sfs2x.client.entities.variables.UserVariable;
import sfs2x.client.requests.SetUserVariablesRequest;
import sfs2x.client.requests.game.InviteUsersRequest;

public class ResSetUserVariables implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        int uId = sfso.getInt(InviteUsersRequest.KEY_USER).intValue();
        ISFSArray varListData = sfso.getSFSArray(SetUserVariablesRequest.KEY_VAR_LIST);
        User user = sfs.getUserManager().getUserById(uId);
        List<String> changedVarNames = new ArrayList();
        if (user != null) {
            for (int j = 0; j < varListData.size(); j++) {
                UserVariable userVar = SFSUserVariable.fromSFSArray(varListData.getSFSArray(j));
                user.setVariable(userVar);
                changedVarNames.add(userVar.getName());
            }
            evtParams.put("changedVars", changedVarNames);
            evtParams.put("user", user);
            sfs.dispatchEvent(new SFSEvent(SFSEvent.USER_VARIABLES_UPDATE, evtParams));
            return;
        }
        sfs.getLogger().warn("UserVariablesUpdate: unknown user id = " + uId);
    }
}
