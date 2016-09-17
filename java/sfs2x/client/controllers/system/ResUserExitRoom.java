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
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResUserExitRoom implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        int rId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        int uId = sfso.getInt(InviteUsersRequest.KEY_USER).intValue();
        Room room = sfs.getRoomManager().getRoomById(rId);
        User user = sfs.getUserManager().getUserById(uId);
        if (room == null || user == null) {
            sfs.getLogger().warn("Failed to handle UserExit event. Room: " + room + ", User: " + user);
            return;
        }
        room.removeUser(user);
        sfs.getUserManager().removeUser(user);
        if (user.isItMe() && room.isJoined()) {
            room.setJoined(false);
            if (sfs.getJoinedRooms().size() == 0) {
                sfs.setLastJoinedRoom(null);
            }
            if (!room.isManaged()) {
                sfs.getRoomManager().removeRoom(room);
            }
        }
        evtParams.put("user", user);
        evtParams.put("room", room);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.USER_EXIT_ROOM, evtParams));
    }
}
