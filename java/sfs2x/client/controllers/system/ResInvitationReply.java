package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.SFSUser;
import sfs2x.client.entities.User;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResInvitationReply implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.INVITATION_REPLY_ERROR, evtParams));
            return;
        }
        User invitee;
        if (sfso.containsKey(InviteUsersRequest.KEY_USER_ID)) {
            invitee = sfs.getUserManager().getUserById(sfso.getInt(InviteUsersRequest.KEY_USER_ID).intValue());
        } else {
            invitee = SFSUser.fromSFSArray(sfso.getSFSArray(InviteUsersRequest.KEY_USER));
        }
        int reply = sfso.getByte(InviteUsersRequest.KEY_REPLY_ID).byteValue();
        ISFSObject data = sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST);
        evtParams.put("invitee", invitee);
        evtParams.put("reply", Integer.valueOf(reply));
        evtParams.put("data", data);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.INVITATION_REPLY, evtParams));
    }
}
