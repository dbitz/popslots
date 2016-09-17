package sfs2x.client.requests.buddylist;

import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class GoOnlineRequest extends BaseRequest {
    public static final String KEY_BUDDY_ID = "bi";
    public static final String KEY_BUDDY_NAME = "bn";
    public static final String KEY_ONLINE = "o";
    private boolean online;

    public GoOnlineRequest(boolean online) {
        super(BaseRequest.GoOnline);
        this.online = online;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!sfs.getBuddyManager().isInited()) {
            errors.add("BuddyList is not inited. Please send an InitBuddyRequest first.");
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("GoOnline request error", errors);
        }
    }

    public void execute(ISmartFox sfs) throws SFSException {
        sfs.getBuddyManager().setMyOnlineState(this.online);
        this.sfso.putBool(KEY_ONLINE, this.online);
    }
}
