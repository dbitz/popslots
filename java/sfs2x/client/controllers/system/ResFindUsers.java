package sfs2x.client.controllers.system;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.entities.SFSUser;
import sfs2x.client.entities.User;
import sfs2x.client.requests.FindUsersRequest;

public class ResFindUsers implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        ISFSObject sfso = message.getContent();
        Map<String, Object> evtParams = new HashMap();
        ISFSArray userListData = sfso.getSFSArray(FindUsersRequest.KEY_FILTERED_USERS);
        List<User> userList = new ArrayList();
        User mySelf = sfs.getMySelf();
        for (int i = 0; i < userListData.size(); i++) {
            User u = SFSUser.fromSFSArray(userListData.getSFSArray(i));
            if (u.getId() == mySelf.getId()) {
                u = mySelf;
            }
            userList.add(u);
        }
        evtParams.put("users", userList);
        sfs.dispatchEvent(new SFSEvent(SFSEvent.USER_FIND_RESULT, evtParams));
    }
}
