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
import sfs2x.client.entities.Room;
import sfs2x.client.entities.SFSRoom;
import sfs2x.client.requests.FindRoomsRequest;

public class ResFindRooms implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        ISFSArray roomListData = sfso.getSFSArray(FindRoomsRequest.KEY_FILTERED_ROOMS);
        List<Room> roomList = new ArrayList();
        for (int i = 0; i < roomListData.size(); i++) {
            Room theRoom = SFSRoom.fromSFSArray(roomListData.getSFSArray(i));
            Room localRoom = sfs.getRoomManager().getRoomById(theRoom.getId());
            if (localRoom != null) {
                theRoom.setJoined(localRoom.isJoined());
            }
            roomList.add(theRoom);
        }
        evtParams.put("rooms", roomList);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_FIND_RESULT, evtParams));
    }
}
