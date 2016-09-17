package sfs2x.client.controllers.system;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;
import sfs2x.client.requests.game.InviteUsersRequest;

public class ResUserLost implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        User user = sfs.getUserManager().getUserById(message.getContent().getInt(InviteUsersRequest.KEY_USER).intValue());
        if (user != null) {
            List<Room> joinedRooms = sfs.getRoomManager().getUserRooms(user);
            sfs.getRoomManager().removeUser(user);
            sfs.getUserManager().removeUser(user);
            for (Room room : joinedRooms) {
                Map<String, Object> evtParams = new HashMap();
                evtParams.put("user", user);
                evtParams.put("room", room);
                sfs.dispatchEvent(new SFSEvent(SFSEvent.USER_EXIT_ROOM, evtParams));
            }
        }
    }
}
