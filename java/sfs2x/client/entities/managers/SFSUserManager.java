package sfs2x.client.entities.managers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.User;

public class SFSUserManager implements IUserManager {
    protected ISmartFox smartFox;
    private Map<Integer, User> usersById = new HashMap();
    private Map<String, User> usersByName = new HashMap();

    public SFSUserManager(ISmartFox smartFox) {
        this.smartFox = smartFox;
    }

    public boolean containsUserName(String userName) {
        return this.usersByName.containsKey(userName);
    }

    public boolean containsUserId(int userId) {
        return this.usersById.containsKey(Integer.valueOf(userId));
    }

    public boolean containsUser(User user) {
        return this.usersByName.containsValue(user);
    }

    public User getUserByName(String userName) {
        if (this.usersByName.containsKey(userName)) {
            return (User) this.usersByName.get(userName);
        }
        return null;
    }

    public User getUserById(int userId) {
        if (this.usersById.containsKey(Integer.valueOf(userId))) {
            return (User) this.usersById.get(Integer.valueOf(userId));
        }
        return null;
    }

    public void addUser(User user) {
        if (!(!this.usersById.containsKey(Integer.valueOf(user.getId())) || this.smartFox == null || this.smartFox.getLogger() == null)) {
            this.smartFox.getLogger().warn("Unexpected: duplicate user in UserManager: " + user);
        }
        addUserInternal(user);
    }

    protected void addUserInternal(User user) {
        this.usersByName.put(user.getName(), user);
        this.usersById.put(Integer.valueOf(user.getId()), user);
    }

    public void removeUser(User user) {
        this.usersByName.remove(user.getName());
        this.usersById.remove(Integer.valueOf(user.getId()));
    }

    public void removeUserById(int id) {
        if (this.usersById.containsKey(Integer.valueOf(id))) {
            removeUser((User) this.usersById.get(Integer.valueOf(id)));
        }
    }

    public int getUserCount() {
        return this.usersById.size();
    }

    public List<User> getUserList() {
        return new ArrayList(this.usersById.values());
    }

    public ISmartFox getSmartFox() {
        return this.smartFox;
    }

    public void clearAll() {
        this.usersByName = new HashMap();
        this.usersById = new HashMap();
    }
}
