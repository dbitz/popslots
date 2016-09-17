package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.SFSArray;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.variables.RoomVariable;
import sfs2x.client.exceptions.SFSValidationException;

public class SetRoomVariablesRequest extends BaseRequest {
    public static final String KEY_VAR_LIST = "vl";
    public static final String KEY_VAR_ROOM = "r";
    private Room room;
    private List<RoomVariable> roomVariables;

    public SetRoomVariablesRequest(List<RoomVariable> roomVariables, Room room) {
        super(11);
        this.roomVariables = roomVariables;
        this.room = room;
    }

    public SetRoomVariablesRequest(List<RoomVariable> roomVariables) {
        this(roomVariables, null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.room != null) {
            if (!this.room.containsUser(sfs.getMySelf())) {
                errors.add("You are not joined in the target room");
            }
        } else if (sfs.getLastJoinedRoom() == null) {
            errors.add("You are not joined in any rooms");
        }
        if (this.roomVariables == null || this.roomVariables.isEmpty()) {
            errors.add("No variables were specified");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("SetRoomVariables request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        ISFSArray varList = SFSArray.newInstance();
        for (RoomVariable rv : this.roomVariables) {
            varList.addSFSArray(rv.toSFSArray());
        }
        if (this.room == null) {
            this.room = sfs.getLastJoinedRoom();
        }
        this.sfso.putSFSArray(KEY_VAR_LIST, varList);
        this.sfso.putInt(KEY_VAR_ROOM, this.room.getId());
    }
}
