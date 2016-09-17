package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;

public class PrivateMessageRequest extends GenericMessageRequest {
    public PrivateMessageRequest(String message, int recipientId, ISFSObject params) {
        this.type = 1;
        this.message = message;
        this.recipient = Integer.valueOf(recipientId);
        this.params = params;
    }

    public PrivateMessageRequest(String message, int recipientId) {
        this(message, recipientId, null);
    }
}
