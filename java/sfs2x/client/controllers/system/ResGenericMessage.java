package sfs2x.client.controllers.system;

import com.helpshift.support.model.ErrorReport;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSBuddyEvent;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.Buddy;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.SFSUser;
import sfs2x.client.entities.User;
import sfs2x.client.requests.GenericMessageRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResGenericMessage implements IResHandler {
    private ISmartFox sfs;

    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        this.sfs = sfs;
        ISFSObject sfso = message.getContent();
        int msgType = sfso.getByte(InviteUsersRequest.KEY_TIME).byteValue();
        if (msgType == 0) {
            handlePublicMessage(sfso);
        } else if (msgType == 1) {
            handlePrivateMessage(sfso);
        } else if (msgType == 5) {
            handleBuddyMessage(sfso);
        } else if (msgType == 2) {
            handleModMessage(sfso);
        } else if (msgType == 3) {
            handleAdminMessage(sfso);
        } else if (msgType == 4) {
            handleObjectMessage(sfso);
        }
    }

    private void handlePublicMessage(ISFSObject sfso) {
        Map<String, Object> evtParams = new HashMap();
        int rId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        Room room = this.sfs.getRoomManager().getRoomById(rId);
        if (room != null) {
            evtParams.put("room", room);
            evtParams.put("sender", this.sfs.getUserManager().getUserById(sfso.getInt(InviteUsersRequest.KEY_USER).intValue()));
            evtParams.put(ErrorReport.KEY_MESSAGE, sfso.getUtfString(SetUserPositionRequest.KEY_MINUS_USER_LIST));
            evtParams.put("data", sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
            this.sfs.dispatchEvent(new SFSEvent(SFSEvent.PUBLIC_MESSAGE, evtParams));
            return;
        }
        this.sfs.getLogger().warn("Unexpected, PublicMessage target room doesn't exist. RoomId: " + rId);
    }

    private void handlePrivateMessage(ISFSObject sfso) throws SFSException {
        Map<String, Object> evtParams = new HashMap();
        User sender = this.sfs.getUserManager().getUserById(sfso.getInt(InviteUsersRequest.KEY_USER).intValue());
        if (sender == null) {
            if (sfso.containsKey(GenericMessageRequest.KEY_SENDER_DATA)) {
                sender = SFSUser.fromSFSArray(sfso.getSFSArray(GenericMessageRequest.KEY_SENDER_DATA));
            } else {
                this.sfs.getLogger().warn("Unexpected. Private message has no Sender details!");
                return;
            }
        }
        evtParams.put("sender", sender);
        evtParams.put(ErrorReport.KEY_MESSAGE, sfso.getUtfString(SetUserPositionRequest.KEY_MINUS_USER_LIST));
        evtParams.put("data", sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
        this.sfs.dispatchEvent(new SFSEvent(SFSEvent.PRIVATE_MESSAGE, evtParams));
    }

    private void handleBuddyMessage(ISFSObject sfso) {
        Map<String, Object> evtParams = new HashMap();
        int senderId = sfso.getInt(InviteUsersRequest.KEY_USER).intValue();
        Buddy senderBuddy = this.sfs.getBuddyManager().getBuddyById(senderId);
        evtParams.put("isItMe", Boolean.valueOf(this.sfs.getMySelf().getId() == senderId));
        evtParams.put("buddy", senderBuddy);
        evtParams.put(ErrorReport.KEY_MESSAGE, sfso.getUtfString(SetUserPositionRequest.KEY_MINUS_USER_LIST));
        evtParams.put("data", sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
        this.sfs.dispatchEvent(new SFSBuddyEvent(SFSBuddyEvent.BUDDY_MESSAGE, evtParams));
    }

    private void handleModMessage(ISFSObject sfso) throws SFSException {
        handleModMessage(sfso, SFSEvent.MODERATOR_MESSAGE);
    }

    private void handleAdminMessage(ISFSObject sfso) throws SFSException {
        handleModMessage(sfso, SFSEvent.ADMIN_MESSAGE);
    }

    private void handleModMessage(ISFSObject sfso, String evt) throws SFSException {
        Map<String, Object> evtParams = new HashMap();
        evtParams.put("sender", SFSUser.fromSFSArray(sfso.getSFSArray(GenericMessageRequest.KEY_SENDER_DATA)));
        evtParams.put(ErrorReport.KEY_MESSAGE, sfso.getUtfString(SetUserPositionRequest.KEY_MINUS_USER_LIST));
        evtParams.put("data", sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
        this.sfs.dispatchEvent(new SFSEvent(evt, evtParams));
    }

    private void handleObjectMessage(ISFSObject sfso) {
        Map<String, Object> evtParams = new HashMap();
        evtParams.put("sender", this.sfs.getUserManager().getUserById(sfso.getInt(InviteUsersRequest.KEY_USER).intValue()));
        evtParams.put(ErrorReport.KEY_MESSAGE, sfso.getSFSObject(SetUserPositionRequest.KEY_PLUS_USER_LIST));
        this.sfs.dispatchEvent(new SFSEvent(SFSEvent.OBJECT_MESSAGE, evtParams));
    }
}
