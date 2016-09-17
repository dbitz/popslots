package sfs2x.client.requests.buddylist;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class InitBuddyListRequest extends BaseRequest {
    public static final String KEY_BLIST = "bl";
    public static final String KEY_BUDDY_STATES = "bs";
    public static final String KEY_MY_VARS = "mv";

    public InitBuddyListRequest() {
        super(BaseRequest.InitBuddyList);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (sfs.getBuddyManager().isInited()) {
            errors.add("Buddy List is already initialized.");
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("InitBuddyRequest error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
    }
}
