package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSObject;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.util.SFSStringUtils;

public class ExtensionRequest extends BaseRequest {
    public static final String KEY_CMD = "c";
    public static final String KEY_PARAMS = "p";
    public static final String KEY_ROOM = "r";
    private String extCmd;
    private ISFSObject params;
    private Room room;
    private Boolean useUDP;

    public ExtensionRequest(String extCmd, ISFSObject params, Room room, boolean useUDP) {
        super(13);
        this.targetController = 1;
        this.extCmd = extCmd;
        this.params = params;
        this.room = room;
        this.useUDP = Boolean.valueOf(useUDP);
        if (this.params == null) {
            this.params = new SFSObject();
        }
    }

    public ExtensionRequest(String extCmd, ISFSObject params, Room room) {
        this(extCmd, params, room, false);
    }

    public ExtensionRequest(String extCmd, ISFSObject params) {
        this(extCmd, params, null, false);
    }

    public boolean getUseUDP() {
        return this.useUDP.booleanValue();
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (SFSStringUtils.isEmptyOrNull(this.extCmd)) {
            errors.add("Missing extension command");
        }
        if (this.params == null) {
            errors.add("Missing extension parameters");
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("ExtensionCall request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_CMD, this.extCmd);
        this.sfso.putInt(KEY_ROOM, this.room == null ? -1 : this.room.getId());
        this.sfso.putSFSObject(KEY_PARAMS, this.params);
    }
}
