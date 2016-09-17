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
import sfs2x.client.entities.variables.RoomVariable;
import sfs2x.client.entities.variables.SFSRoomVariable;
import sfs2x.client.requests.SetUserVariablesRequest;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResSetRoomVariables implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        int rId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        ISFSArray varListData = sfso.getSFSArray(SetUserVariablesRequest.KEY_VAR_LIST);
        Room targetRoom = sfs.getRoomManager().getRoomById(rId);
        List<String> changedVarNames = new ArrayList();
        if (targetRoom != null) {
            for (int j = 0; j < varListData.size(); j++) {
                RoomVariable roomVar = SFSRoomVariable.fromSFSArray(varListData.getSFSArray(j));
                targetRoom.setVariable(roomVar);
                changedVarNames.add(roomVar.getName());
            }
            evtParams.put("changedVars", changedVarNames);
            evtParams.put("room", targetRoom);
            sfs.dispatchEvent(new SFSEvent(SFSEvent.ROOM_VARIABLES_UPDATE, evtParams));
            return;
        }
        sfs.getLogger().warn("RoomVariablesUpdate, unknown Room id = " + rId);
    }
}
