package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import sfs2x.client.entities.Room;

public class PublicMessageRequest extends GenericMessageRequest {
    public PublicMessageRequest(String message, ISFSObject params, Room targetRoom) {
        this.type = 0;
        this.message = message;
        this.room = targetRoom;
        this.params = params;
    }

    public PublicMessageRequest(String message, ISFSObject params) {
        this(message, params, null);
    }

    public PublicMessageRequest(String message) {
        this(message, null, null);
    }
}
