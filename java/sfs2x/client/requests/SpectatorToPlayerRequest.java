package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.exceptions.SFSValidationException;

public class SpectatorToPlayerRequest extends BaseRequest {
    public static final String KEY_PLAYER_ID = "p";
    public static final String KEY_ROOM_ID = "r";
    public static final String KEY_USER_ID = "u";
    private Room room;

    public SpectatorToPlayerRequest(Room targetRoom) {
        super(17);
        this.room = targetRoom;
    }

    public SpectatorToPlayerRequest() {
        this(null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (sfs.getJoinedRooms().size() < 1) {
            errors.add("You are not joined in any rooms");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("LeaveRoom request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        if (this.room == null) {
            this.room = sfs.getLastJoinedRoom();
        }
        this.sfso.putInt(KEY_ROOM_ID, this.room.getId());
    }
}