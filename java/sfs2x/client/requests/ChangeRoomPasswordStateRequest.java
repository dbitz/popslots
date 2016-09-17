package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.exceptions.SFSValidationException;

public class ChangeRoomPasswordStateRequest extends BaseRequest {
    public static final String KEY_PASS = "p";
    public static final String KEY_ROOM = "r";
    private String newPass;
    private Room room;

    public ChangeRoomPasswordStateRequest(Room room, String newPass) {
        super(9);
        this.room = room;
        this.newPass = newPass;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.room == null) {
            errors.add("Provided room is null");
        }
        if (this.newPass == null) {
            errors.add("Invalid new room password. It must be a non-null string.");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("ChangePassState request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putInt(KEY_ROOM, this.room.getId());
        this.sfso.putUtfString(KEY_PASS, this.newPass);
    }
}
