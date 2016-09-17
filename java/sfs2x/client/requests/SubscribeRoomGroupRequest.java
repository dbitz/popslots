package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.util.SFSStringUtils;

public class SubscribeRoomGroupRequest extends BaseRequest {
    public static final String KEY_GROUP_ID = "g";
    public static final String KEY_ROOM_LIST = "rl";
    private String groupId;

    public SubscribeRoomGroupRequest(String groupId) {
        super(15);
        this.groupId = groupId;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (SFSStringUtils.isEmptyOrNull(this.groupId)) {
            errors.add("Invalid groupId. Must be a string with at least 1 character.");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("SubscribeGroup request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_GROUP_ID, this.groupId);
    }
}
