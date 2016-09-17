package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResSpectatorToPlayer implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.SPECTATOR_TO_PLAYER_ERROR, evtParams));
            return;
        }
        int roomId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        int userId = sfso.getInt(InviteUsersRequest.KEY_USER).intValue();
        int playerId = sfso.getShort(SetUserPositionRequest.KEY_PLUS_USER_LIST).shortValue();
        User user = sfs.getUserManager().getUserById(userId);
        Room targetRoom = sfs.getRoomManager().getRoomById(roomId);
        if (targetRoom == null) {
            sfs.getLogger().warn("Room not found, ID:" + roomId + ", SpectatorToPlayer failed.");
        } else if (user == null) {
            sfs.getLogger().warn("User not found, ID:" + userId + ", SpectatorToPlayer failed.");
        } else if (user.isJoinedInRoom(targetRoom)) {
            user.setPlayerId(playerId, targetRoom);
            evtParams.put("room", targetRoom);
            evtParams.put("user", user);
            evtParams.put("playerId", Integer.valueOf(playerId));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.SPECTATOR_TO_PLAYER, evtParams));
        } else {
            sfs.getLogger().warn("User: " + user + " not joined in Room: " + targetRoom + ", SpectatorToPlayer failed.");
        }
    }
}
