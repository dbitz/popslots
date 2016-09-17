package sfs2x.client.requests.buddylist;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Buddy;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class BlockBuddyRequest extends BaseRequest {
    public static final String KEY_BUDDY_BLOCK_STATE = "bs";
    public static final String KEY_BUDDY_NAME = "bn";
    private boolean blocked;
    private String buddyName;

    public BlockBuddyRequest(String buddyName, boolean blocked) {
        super(BaseRequest.BlockBuddy);
        this.buddyName = buddyName;
        this.blocked = blocked;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!sfs.getBuddyManager().isInited()) {
            errors.add("BuddyList is not inited. Please send an InitBuddyRequest first.");
        }
        if (this.buddyName == null || this.buddyName.length() < 1) {
            errors.add("Invalid buddy name: " + this.buddyName);
        }
        if (!sfs.getBuddyManager().getMyOnlineState()) {
            errors.add("Can't block buddy while off-line");
        }
        Buddy buddy = sfs.getBuddyManager().getBuddyByName(this.buddyName);
        if (buddy == null) {
            errors.add("Can't block buddy, it's not in your list: " + this.buddyName);
        } else if (buddy.isBlocked() == this.blocked) {
            errors.add("BuddyBlock flag is already in the requested state: " + this.blocked + ", for buddy: " + buddy);
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("BuddyList request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_BUDDY_NAME, this.buddyName);
        this.sfso.putBool(KEY_BUDDY_BLOCK_STATE, this.blocked);
    }
}
