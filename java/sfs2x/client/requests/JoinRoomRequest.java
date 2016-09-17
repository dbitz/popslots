package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.exceptions.SFSValidationException;

public class JoinRoomRequest extends BaseRequest {
    public static final String KEY_AS_SPECTATOR = "sp";
    public static final String KEY_PASS = "p";
    public static final String KEY_ROOM = "r";
    public static final String KEY_ROOM_ID = "i";
    public static final String KEY_ROOM_NAME = "n";
    public static final String KEY_ROOM_TO_LEAVE = "rl";
    public static final String KEY_USER_LIST = "ul";
    private boolean asSpectator;
    private int id;
    private String name;
    private String pass;
    private Integer roomIdToLeave;

    public JoinRoomRequest(Object id, String pass, Integer roomIdToLeave, boolean asSpectator) {
        super(4);
        this.id = -1;
        if (id instanceof String) {
            this.name = (String) id;
        } else if (id instanceof Integer) {
            this.id = ((Integer) id).intValue();
        } else if (id instanceof Room) {
            this.id = ((Room) id).getId();
        }
        this.pass = pass;
        this.roomIdToLeave = roomIdToLeave;
        this.asSpectator = asSpectator;
    }

    public JoinRoomRequest(Object id, String pass, Integer roomIdToLeave) {
        this(id, pass, roomIdToLeave, false);
    }

    public JoinRoomRequest(Object id, String pass) {
        this(id, pass, null, false);
    }

    public JoinRoomRequest(Object id) {
        this(id, null, null, false);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        if (this.id < 0 && this.name == null) {
            List<String> errors = new ArrayList();
            errors.add("Missing Room id or name, you should provide at least one");
            throw new SFSValidationException("JoinRoomRequest Error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        if (this.id > -1) {
            this.sfso.putInt(KEY_ROOM_ID, this.id);
        } else if (this.name != null) {
            this.sfso.putUtfString(KEY_ROOM_NAME, this.name);
        }
        if (this.pass != null) {
            this.sfso.putUtfString(KEY_PASS, this.pass);
        }
        if (this.roomIdToLeave != null) {
            this.sfso.putInt(KEY_ROOM_TO_LEAVE, this.roomIdToLeave.intValue());
        }
        if (this.asSpectator) {
            this.sfso.putBool(KEY_AS_SPECTATOR, this.asSpectator);
        }
    }
}
