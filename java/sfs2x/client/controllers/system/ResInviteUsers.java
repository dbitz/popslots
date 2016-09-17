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
import sfs2x.client.entities.invitation.Invitation;
import sfs2x.client.entities.invitation.SFSInvitation;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResInviteUsers implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        User inviter;
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(InviteUsersRequest.KEY_USER_ID)) {
            inviter = sfs.getUserManager().getUserById(sfso.getInt(InviteUsersRequest.KEY_USER_ID).intValue());
        } else {
            inviter = SFSUser.fromSFSArray(sfso.getSFSArray(InviteUsersRequest.KEY_USER));
        }
        int expiryTime = sfso.getShort(InviteUsersRequest.KEY_TIME).shortValue();
        int invitationId = sfso.getInt(InviteUsersRequest.KEY_INVITATION_ID).intValue();
        Invitation invitation = new SFSInvitation(inviter, sfs.getMySelf(), expiryTime, sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
        invitation.setId(invitationId);
        evtParams.put(SFSEvent.INVITATION, invitation);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.INVITATION, evtParams));
    }
}
