package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.List;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;

public class ObjectMessageRequest extends GenericMessageRequest {
    public ObjectMessageRequest(ISFSObject obj, Room targetRoom, List<User> recipients) {
        this.type = 4;
        this.params = obj;
        this.room = targetRoom;
        this.recipient = recipients;
    }

    public ObjectMessageRequest(ISFSObject obj, Room targetRoom) {
        this(obj, targetRoom, null);
    }

    public ObjectMessageRequest(ISFSObject obj) {
        this(obj, null, null);
    }
}
