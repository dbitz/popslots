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
import sfs2x.client.entities.managers.IUserManager;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResRoomLost implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        Room room = sfs.getRoomManager().getRoomById(sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue());
        IUserManager globalUserManager = sfs.getUserManager();
        if (room != null) {
            sfs.getRoomManager().removeRoom(room);
            for (User user : room.getUserList()) {
                globalUserManager.removeUser(user);
            }
            evtParams.put("room", room);
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_REMOVE, evtParams));
        }
    }
}
