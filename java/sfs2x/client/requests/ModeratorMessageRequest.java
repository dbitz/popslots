package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;

public class ModeratorMessageRequest extends GenericMessageRequest {
    public ModeratorMessageRequest(String message, MessageRecipientMode recipientMode, ISFSObject params) {
        if (recipientMode == null) {
            throw new IllegalArgumentException("RecipientMode cannot be null!");
        }
        this.type = 2;
        this.message = message;
        this.params = params;
        this.recipient = recipientMode.getTarget();
        this.sendMode = recipientMode.getMode();
    }

    public ModeratorMessageRequest(String message, MessageRecipientMode recipientMode) {
        this(message, recipientMode, null);
    }
}
