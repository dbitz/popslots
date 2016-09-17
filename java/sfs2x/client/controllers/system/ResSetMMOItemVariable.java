package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.IMMOItem;
import sfs2x.client.entities.MMORoom;
import sfs2x.client.entities.variables.IMMOItemVariable;
import sfs2x.client.entities.variables.MMOItemVariable;
import sfs2x.client.requests.mmo.SetMMOItemVariables;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResSetMMOItemVariable implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        int roomId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        int mmoItemId = sfso.getInt(SetMMOItemVariables.KEY_ITEM_ID).intValue();
        ISFSArray varList = sfso.getSFSArray(SetUserPositionRequest.KEY_VEC3D);
        MMORoom mmoRoom = (MMORoom) sfs.getRoomManager().getRoomById(roomId);
        List<String> changedVarNames = new LinkedList();
        if (mmoRoom != null) {
            IMMOItem mmoItem = mmoRoom.getMMOItem(mmoItemId);
            if (mmoItem != null) {
                for (int i = 0; i < varList.size(); i++) {
                    IMMOItemVariable itemVar = MMOItemVariable.fromSFSArray(varList.getSFSArray(i));
                    mmoItem.setVariable(itemVar);
                    changedVarNames.add(itemVar.getName());
                }
                evtParams.put("changedVars", changedVarNames);
                evtParams.put("mmoItem", mmoItem);
                evtParams.put("room", mmoRoom);
                sfs.dispatchEvent(new SFSEvent(SFSEvent.MMOITEM_VARIABLES_UPDATE, evtParams));
            }
        }
    }
}
