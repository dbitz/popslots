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
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResUserCountChange implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        Room room = sfs.getRoomManager().getRoomById(sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue());
        if (room != null) {
            int uCount = sfso.getShort("uc").shortValue();
            int sCount = 0;
            if (sfso.containsKey("sc")) {
                sCount = sfso.getShort("sc").shortValue();
            }
            room.setUserCount(uCount);
            room.setSpectatorCount(sCount);
            evtParams.put("room", room);
            evtParams.put("uCount", Integer.valueOf(uCount));
            evtParams.put("sCount", Integer.valueOf(sCount));
            sfs.dispatchEvent(new SFSEvent(SFSEvent.USER_COUNT_CHANGE, evtParams));
        }
    }
}
