package sfs2x.client.requests.buddylist;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Buddy;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class AddBuddyRequest extends BaseRequest {
    public static final String KEY_BUDDY_NAME = "bn";
    private String name;

    public AddBuddyRequest(String buddyName) {
        super(BaseRequest.AddBuddy);
        this.name = buddyName;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!sfs.getBuddyManager().isInited()) {
            errors.add("BuddyList is not inited. Please send an InitBuddyRequest first.");
        }
        if (this.name == null || this.name.length() < 1) {
            errors.add("Invalid buddy name: " + this.name);
        }
        if (!sfs.getBuddyManager().getMyOnlineState()) {
            errors.add("Can't add buddy while off-line");
        }
        Buddy buddy = sfs.getBuddyManager().getBuddyByName(this.name);
        if (!(buddy == null || buddy.isTemp())) {
            errors.add("Can't add buddy, it is already in your list: " + this.name);
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("BuddyList request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_BUDDY_NAME, this.name);
    }
}
