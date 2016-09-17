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
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.UnsubscribeRoomGroupRequest;
import sfs2x.client.requests.game.QuickGameJoinRequest;
import sfs2x.client.util.SFSErrorCodes;

public class ResSubscribeRoomGroup implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_GROUP_SUBSCRIBE_ERROR, evtParams));
            return;
        }
        String groupId = sfso.getUtfString(UnsubscribeRoomGroupRequest.KEY_GROUP_ID);
        ISFSArray roomListData = sfso.getSFSArray(QuickGameJoinRequest.KEY_ROOM_LIST);
        if (sfs.getRoomManager().containsGroup(groupId)) {
            sfs.getLogger().warn("SubscribeGroup Error. Group:" + groupId + "already subscribed!");
        }
        systemController.populateRoomList(roomListData);
        evtParams.put("groupId", groupId);
        evtParams.put("newRooms", sfs.getRoomManager().getRoomListFromGroup(groupId));
        sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_GROUP_SUBSCRIBE, evtParams));
    }
}
