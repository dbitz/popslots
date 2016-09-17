package sfs2x.client.entities.managers;

import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.User;

public class SFSGlobalUserManager extends SFSUserManager implements IUserManager {
    private Map<User, Integer> roomRefCount = new HashMap();

    public SFSGlobalUserManager(ISmartFox smartFox) {
        super(smartFox);
    }

    public void addUser(User user) {
        if (this.roomRefCount.containsKey(user)) {
            this.roomRefCount.put(user, Integer.valueOf(((Integer) this.roomRefCount.get(user)).intValue() + 1));
            return;
        }
        super.addUser(user);
        this.roomRefCount.put(user, Integer.valueOf(1));
    }

    public void removeUser(User user) {
        if (!this.roomRefCount.containsKey(user)) {
            this.smartFox.getLogger().warn("Can't remove User from GlobalUserManager. RefCount missing. User: " + user);
        } else if (((Integer) this.roomRefCount.get(user)).intValue() < 1) {
            this.smartFox.getLogger().warn("GlobalUserManager RefCount is already at zero. User: " + user);
        } else {
            this.roomRefCount.put(user, Integer.valueOf(((Integer) this.roomRefCount.get(user)).intValue() - 1));
            if (((Integer) this.roomRefCount.get(user)).intValue() == 0) {
                super.removeUser(user);
                this.roomRefCount.remove(user);
            }
        }
    }
}
