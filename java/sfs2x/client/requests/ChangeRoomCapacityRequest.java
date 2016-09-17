package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.exceptions.SFSValidationException;

public class ChangeRoomCapacityRequest extends BaseRequest {
    public static final String KEY_ROOM = "r";
    public static final String KEY_SPEC_SIZE = "s";
    public static final String KEY_USER_SIZE = "u";
    private int newMaxSpect;
    private int newMaxUsers;
    private Room room;

    public ChangeRoomCapacityRequest(Room room, int newMaxUsers, int newMaxSpect) {
        super(19);
        this.room = room;
        this.newMaxUsers = newMaxUsers;
        this.newMaxSpect = newMaxSpect;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.room == null) {
            errors.add("Provided room is null");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("ChangeRoomCapacity request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putInt(KEY_ROOM, this.room.getId());
        this.sfso.putInt(KEY_USER_SIZE, this.newMaxUsers);
        this.sfso.putInt(KEY_SPEC_SIZE, this.newMaxSpect);
    }
}
