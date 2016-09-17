package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.SFSUser;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.LogoutRequest;
import sfs2x.client.requests.game.QuickGameJoinRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResLogin implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.LOGIN_ERROR, evtParams));
            return;
        }
        systemController.populateRoomList(sfso.getSFSArray(QuickGameJoinRequest.KEY_ROOM_LIST));
        sfs.setMySelf(new SFSUser(sfso.getInt(LoginRequest.KEY_ID).intValue(), sfso.getUtfString(LoginRequest.KEY_USER_NAME), true));
        sfs.getMySelf().setUserManager(sfs.getUserManager());
        sfs.getMySelf().setPrivilegeId(sfso.getShort(LoginRequest.KEY_PRIVILEGE_ID).shortValue());
        sfs.getUserManager().addUser(sfs.getMySelf());
        sfs.setReconnectionSeconds(sfso.getShort(LoginRequest.KEY_RECONNECTION_SECONDS).shortValue());
        sfs.getMySelf().setPrivilegeId(sfso.getShort(LoginRequest.KEY_PRIVILEGE_ID).shortValue());
        evtParams.put("zone", sfso.getUtfString(LogoutRequest.KEY_ZONE_NAME));
        evtParams.put("user", sfs.getMySelf());
        evtParams.put("data", sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
        BaseEvent evt = new SFSEvent(SFSEvent.LOGIN, evtParams);
        sfs.handleLogin(evt);
        sfs.dispatchEvent(evt);
    }
}
