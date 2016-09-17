package sfs2x.client.controllers.system;

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
import sfs2x.client.util.SFSErrorCodes;

public class ResUnsubscribeRoomGroup implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        if (sfso.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = sfso.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            evtParams.put("errorMessage", SFSErrorCodes.getErrorMessage(errorCode, sfso.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray()));
            evtParams.put("errorCode", Short.valueOf(errorCode));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_GROUP_UNSUBSCRIBE_ERROR, evtParams));
            return;
        }
        String groupId = sfso.getUtfString(UnsubscribeRoomGroupRequest.KEY_GROUP_ID);
        if (!sfs.getRoomManager().containsGroup(groupId)) {
            sfs.getLogger().warn("UnsubscribeGroup Error. Group:" + groupId + "is not subscribed!");
        }
        sfs.getRoomManager().removeGroup(groupId);
        evtParams.put("groupId", groupId);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_GROUP_UNSUBSCRIBE, evtParams));
    }
}
