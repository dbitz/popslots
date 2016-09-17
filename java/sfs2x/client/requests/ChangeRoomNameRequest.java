package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.mmo.SetUserPositionRequest;
import sfs2x.client.util.SFSStringUtils;

public class ChangeRoomNameRequest extends BaseRequest {
    public static String KEY_NAME = SetUserPositionRequest.KEY_MINUS_ITEM_LIST;
    public static final String KEY_ROOM = "r";
    private String newName;
    private Room room;

    public ChangeRoomNameRequest(Room room, String newName) {
        super(8);
        this.room = room;
        this.newName = newName;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.room == null) {
            errors.add("Provided room is null");
        }
        if (SFSStringUtils.isEmptyOrNull(this.newName)) {
            errors.add("Invalid new room name. It must be a non-null and non-empty string.");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("ChangeRoomName request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putInt(KEY_ROOM, this.room.getId());
        this.sfso.putUtfString(KEY_NAME, this.newName);
    }
}
