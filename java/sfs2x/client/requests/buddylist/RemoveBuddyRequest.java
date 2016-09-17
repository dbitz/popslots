package sfs2x.client.requests.buddylist;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class RemoveBuddyRequest extends BaseRequest {
    public static final String KEY_BUDDY_NAME = "bn";
    private String name;

    public RemoveBuddyRequest(String buddyName) {
        super(BaseRequest.RemoveBuddy);
        this.name = buddyName;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!sfs.getBuddyManager().isInited()) {
            errors.add("BuddyList is not inited. Please send an InitBuddyRequest first.");
        }
        if (!sfs.getBuddyManager().getMyOnlineState()) {
            errors.add("Can't remove buddy while off-line");
        }
        if (!sfs.getBuddyManager().containsBuddy(this.name)) {
            errors.add("Can't remove buddy, it's not in your list: " + this.name);
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("BuddyList request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_BUDDY_NAME, this.name);
    }
}
