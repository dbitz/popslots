package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.Collection;
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
import sfs2x.client.entities.MMOItem;
import sfs2x.client.entities.MMORoom;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;
import sfs2x.client.entities.data.Vec3D;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class ResSetUserPosition implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        int roomId = sfso.getInt(SetUserPositionRequest.KEY_ROOM).intValue();
        Collection<Integer> minusUserList = sfso.getIntArray(SetUserPositionRequest.KEY_MINUS_USER_LIST);
        ISFSArray plusUserList = sfso.getSFSArray(SetUserPositionRequest.KEY_PLUS_USER_LIST);
        Collection<Integer> minusItemList = sfso.getIntArray(SetUserPositionRequest.KEY_MINUS_ITEM_LIST);
        ISFSArray plusItemList = sfso.getSFSArray(SetUserPositionRequest.KEY_PLUS_ITEM_LIST);
        Room theRoom = sfs.getRoomManager().getRoomById(roomId);
        if (theRoom == null) {
            System.out.println(" >>> TARGET ROOM IS NULL: " + roomId);
            return;
        }
        int i;
        List<User> addedUsers = new LinkedList();
        List<User> removedUsers = new LinkedList();
        List<IMMOItem> addedItems = new LinkedList();
        List<IMMOItem> removedItems = new LinkedList();
        if (minusUserList != null && minusUserList.size() > 0) {
            for (Integer uid : minusUserList) {
                User removedUser = theRoom.getUserById(uid.intValue());
                if (removedUser != null) {
                    theRoom.removeUser(removedUser);
                    removedUsers.add(removedUser);
                }
            }
        }
        if (plusUserList != null) {
            for (i = 0; i < plusUserList.size(); i++) {
                ISFSArray encodedUser = plusUserList.getSFSArray(i);
                User newUser = systemController.getOrCreateUser(encodedUser, true, theRoom);
                addedUsers.add(newUser);
                theRoom.addUser(newUser);
                if (encodedUser.size() > 5) {
                    newUser.setAOIEntryPoint(Vec3D.fromArray(encodedUser.get(5)));
                }
            }
        }
        MMORoom mmoRoom = (MMORoom) theRoom;
        if (minusItemList != null) {
            for (Integer itemId : minusItemList) {
                IMMOItem mmoItem = mmoRoom.getMMOItem(itemId.intValue());
                if (mmoItem != null) {
                    mmoRoom.RemoveItem(itemId.intValue());
                    removedItems.add(mmoItem);
                }
            }
        }
        if (plusItemList != null) {
            for (i = 0; i < plusItemList.size(); i++) {
                ISFSArray encodedItem = plusItemList.getSFSArray(i);
                IMMOItem newItem = MMOItem.fromSFSArray(encodedItem);
                addedItems.add(newItem);
                mmoRoom.addMMOItem(newItem);
                if (encodedItem.size() > 2) {
                    ((MMOItem) newItem).setAOIEntryPoint(Vec3D.fromArray(encodedItem.get(2)));
                }
            }
        }
        evtParams.put("addedItems", addedItems);
        evtParams.put("removedItems", removedItems);
        evtParams.put("removedUsers", removedUsers);
        evtParams.put("addedUsers", addedUsers);
        evtParams.put("room", mmoRoom);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.PROXIMITY_LIST_UPDATE, evtParams));
    }
}
