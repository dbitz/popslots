package sfs2x.client.requests.mmo;

import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.LinkedList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.MMORoom;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.data.Vec3D;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class SetUserPositionRequest extends BaseRequest {
    public static final String KEY_MINUS_ITEM_LIST = "n";
    public static final String KEY_MINUS_USER_LIST = "m";
    public static final String KEY_PLUS_ITEM_LIST = "q";
    public static final String KEY_PLUS_USER_LIST = "p";
    public static final String KEY_ROOM = "r";
    public static final String KEY_VEC3D = "v";
    private Vec3D pos;
    private Room room;

    public SetUserPositionRequest(Vec3D position, Room room) {
        super(30);
        this.pos = position;
        this.room = room;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new LinkedList();
        if (this.pos == null) {
            errors.add("Position must be a valid Vec3D ");
        }
        if (this.room == null) {
            this.room = sfs.getLastJoinedRoom();
        }
        if (this.room == null) {
            errors.add("You are not joined in any room");
        }
        if (!(this.room instanceof MMORoom)) {
            errors.add("Selected Room is not an MMORoom");
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("SetUserVariables request error", errors);
        }
    }

    public void execute(ISmartFox sfs) throws SFSException {
        this.sfso.putInt(KEY_ROOM, this.room.getId());
        if (this.pos.isFloat()) {
            this.sfso.putFloatArray(KEY_VEC3D, this.pos.toFloatArray());
        } else {
            this.sfso.putIntArray(KEY_VEC3D, this.pos.toIntArray());
        }
    }
}
