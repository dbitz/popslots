package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.SFSRoom;
import sfs2x.client.entities.User;
import sfs2x.client.entities.managers.IRoomManager;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.JoinRoomRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResJoinRoom implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        IRoomManager roomManager = sfs.getRoomManager();
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        sfs.setJoining(false);
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_JOIN_ERROR, evtParams));
            return;
        }
        ISFSArray roomObj = sfso.getSFSArray(SetUserPositionRequest.KEY_ROOM);
        ISFSArray userList = sfso.getSFSArray(JoinRoomRequest.KEY_USER_LIST);
        Room room = SFSRoom.fromSFSArray(roomObj);
        room.setRoomManager(sfs.getRoomManager());
        room = roomManager.replaceRoom(room, roomManager.containsGroup(room.getGroupId()));
        for (int j = 0; j < userList.size(); j++) {
            ISFSArray userObj = userList.getSFSArray(j);
            User user = systemController.getOrCreateUser(userObj, true, room);
            user.setPlayerId(userObj.getShort(3).shortValue(), room);
            room.addUser(user);
        }
        room.setJoined(true);
        sfs.setLastJoinedRoom(room);
        evtParams.put("room", room);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_JOIN, evtParams));
    }
}
