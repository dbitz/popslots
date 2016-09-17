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
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResChangeRoomPassword implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_PASSWORD_STATE_CHANGE_ERROR, evtParams));
            return;
        }
        int roomId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        Room targetRoom = sfs.getRoomManager().getRoomById(roomId);
        if (targetRoom != null) {
            sfs.getRoomManager().changeRoomPasswordState(targetRoom, sfso.getBool(SetUserPositionRequest.KEY_PLUS_USER_LIST).booleanValue());
            evtParams.put("room", targetRoom);
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_PASSWORD_STATE_CHANGE, evtParams));
            return;
        }
        sfs.getLogger().warn("Room not found, ID:" + roomId + ", Room password change failed.");
    }
}
