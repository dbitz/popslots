package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;

public class AdminMessageRequest extends GenericMessageRequest {
    public AdminMessageRequest(String message, MessageRecipientMode recipientMode, ISFSObject params) {
        if (recipientMode == null) {
            throw new IllegalArgumentException("RecipientMode cannot be null!");
        }
        this.type = 3;
        this.message = message;
        this.params = params;
        this.recipient = recipientMode.getTarget();
        this.sendMode = recipientMode.getMode();
    }

    public AdminMessageRequest(String message, MessageRecipientMode recipientMode) {
        this(message, recipientMode, null);
    }
}
