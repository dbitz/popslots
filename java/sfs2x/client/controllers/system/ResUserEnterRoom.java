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

public class ResUserEnterRoom implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        Room room = sfs.getRoomManager().getRoomById(sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue());
        if (room != null) {
            User user = systemController.getOrCreateUser(sfso.getSFSArray(InviteUsersRequest.KEY_USER), true, room);
            room.addUser(user);
            evtParams.put("user", user);
            evtParams.put("room", room);
            sfs.dispatchEvent(new SFSEvent(SFSEvent.USER_ENTER_ROOM, evtParams));
        }
    }
}
