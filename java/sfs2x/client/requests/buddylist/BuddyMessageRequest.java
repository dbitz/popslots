package sfs2x.client.requests.buddylist;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import sfs2x.client.entities.Buddy;
import sfs2x.client.requests.GenericMessageRequest;

public class BuddyMessageRequest extends GenericMessageRequest {
    public BuddyMessageRequest(String message, Buddy targetBuddy) {
        this(message, targetBuddy, null);
    }

    public BuddyMessageRequest(String message, Buddy targetBuddy, ISFSObject params) {
        this.type = 5;
        this.message = message;
        this.recipient = Integer.valueOf(targetBuddy != null ? targetBuddy.getId() : -1);
        this.params = params;
    }
}
