package sfs2x.client.entities;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.entities.data.Vec3D;
import sfs2x.client.entities.managers.IRoomManager;
import sfs2x.client.entities.managers.IUserManager;
import sfs2x.client.entities.managers.SFSUserManager;
import sfs2x.client.entities.variables.RoomVariable;
import sfs2x.client.entities.variables.SFSRoomVariable;

public class SFSRoom implements Room {
    protected String groupId;
    protected int id;
    protected boolean isGame;
    protected boolean isHidden;
    protected boolean isJoined;
    protected boolean isManaged;
    protected boolean isPasswordProtected;
    protected int maxSpectators;
    protected int maxUsers;
    protected String name;
    protected Map properties;
    protected IRoomManager roomManager;
    protected int specCount;
    protected int userCount;
    protected IUserManager userManager;
    protected Map<String, RoomVariable> variables;

    public static Room fromSFSArray(ISFSArray sfsa) {
        boolean isMMORoom;
        Room newRoom;
        if (sfsa.size() == 14) {
            isMMORoom = true;
        } else {
            isMMORoom = false;
        }
        if (isMMORoom) {
            newRoom = new MMORoom(sfsa.getInt(0).intValue(), sfsa.getUtfString(1), sfsa.getUtfString(2));
        } else {
            newRoom = new SFSRoom(sfsa.getInt(0).intValue(), sfsa.getUtfString(1), sfsa.getUtfString(2));
        }
        newRoom.setGame(sfsa.getBool(3).booleanValue());
        newRoom.setHidden(sfsa.getBool(4).booleanValue());
        newRoom.setPasswordProtected(sfsa.getBool(5).booleanValue());
        newRoom.setUserCount(sfsa.getShort(6).shortValue());
        newRoom.setMaxUsers(sfsa.getShort(7).shortValue());
        ISFSArray varsList = sfsa.getSFSArray(8);
        if (varsList.size() > 0) {
            List<RoomVariable> vars = new ArrayList();
            for (int j = 0; j < varsList.size(); j++) {
                vars.add(SFSRoomVariable.fromSFSArray(varsList.getSFSArray(j)));
            }
            newRoom.setVariables(vars);
        }
        if (newRoom.isGame()) {
            newRoom.setSpectatorCount(sfsa.getShort(9).shortValue());
            newRoom.setMaxSpectators(sfsa.getShort(10).shortValue());
        }
        if (isMMORoom) {
            MMORoom mmoRoom = (MMORoom) newRoom;
            mmoRoom.setDefaultAOI(Vec3D.fromArray(sfsa.get(11)));
            if (!sfsa.isNull(13)) {
                mmoRoom.setLowerMapLimit(Vec3D.fromArray(sfsa.get(12)));
                mmoRoom.setHigherMapLimit(Vec3D.fromArray(sfsa.get(13)));
            }
        }
        return newRoom;
    }

    public SFSRoom(int id, String name) {
        this(id, name, SFSConstants.DEFAULT_GROUP_ID);
    }

    public SFSRoom(int id, String name, String groupId) {
        this.id = id;
        this.name = name;
        this.groupId = groupId;
        this.isHidden = false;
        this.isGame = false;
        this.isJoined = false;
        this.isManaged = true;
        this.specCount = 0;
        this.userCount = 0;
        this.variables = new HashMap();
        this.properties = new HashMap();
        this.userManager = new SFSUserManager(null);
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public boolean isJoined() {
        return this.isJoined;
    }

    public boolean isGame() {
        return this.isGame;
    }

    public boolean isHidden() {
        return this.isHidden;
    }

    public boolean isPasswordProtected() {
        return this.isPasswordProtected;
    }

    public void setPasswordProtected(boolean passwordProtected) {
        this.isPasswordProtected = passwordProtected;
    }

    public boolean isManaged() {
        return this.isManaged;
    }

    public int getUserCount() {
        if (!this.isJoined) {
            return this.userCount;
        }
        if (this.isGame) {
            return getPlayerList().size();
        }
        return this.userManager.getUserCount();
    }

    public int getMaxUsers() {
        return this.maxUsers;
    }

    public int getSpectatorCount() {
        if (!this.isGame) {
            return 0;
        }
        if (this.isJoined) {
            return getSpectatorList().size();
        }
        return this.specCount;
    }

    public int getMaxSpectators() {
        return this.maxSpectators;
    }

    public int getCapacity() {
        return this.maxUsers + this.maxSpectators;
    }

    public void setJoined(boolean joined) {
        this.isJoined = joined;
    }

    public void setGame(boolean game) {
        this.isGame = game;
    }

    public void setHidden(boolean hidden) {
        this.isHidden = hidden;
    }

    public void setManaged(boolean managed) {
        this.isManaged = managed;
    }

    public void setUserCount(int userCount) {
        this.userCount = userCount;
    }

    public void setMaxUsers(int maxUsers) {
        this.maxUsers = maxUsers;
    }

    public void setSpectatorCount(int spectatorCount) {
        this.specCount = spectatorCount;
    }

    public void setMaxSpectators(int maxSpectators) {
        this.maxSpectators = maxSpectators;
    }

    public void addUser(User user) {
        this.userManager.addUser(user);
    }

    public void removeUser(User user) {
        this.userManager.removeUser(user);
    }

    public boolean containsUser(User user) {
        return this.userManager.containsUser(user);
    }

    public User getUserByName(String name) {
        return this.userManager.getUserByName(name);
    }

    public User getUserById(int id) {
        return this.userManager.getUserById(id);
    }

    public List<User> getUserList() {
        return this.userManager.getUserList();
    }

    public List<User> getPlayerList() {
        List<User> playerList = new ArrayList();
        for (User user : this.userManager.getUserList()) {
            if (user.isPlayerInRoom(this)) {
                playerList.add(user);
            }
        }
        return playerList;
    }

    public List<User> getSpectatorList() {
        List<User> spectatorList = new ArrayList();
        for (User user : this.userManager.getUserList()) {
            if (user.isSpectatorInRoom(this)) {
                spectatorList.add(user);
            }
        }
        return spectatorList;
    }

    public RoomVariable getVariable(String name) {
        if (this.variables.containsKey(name)) {
            return (RoomVariable) this.variables.get(name);
        }
        return null;
    }

    public List<RoomVariable> getVariables() {
        return new ArrayList(this.variables.values());
    }

    public void setVariable(RoomVariable roomVariable) {
        if (roomVariable.isNull()) {
            this.variables.remove(roomVariable.getName());
        } else {
            this.variables.put(roomVariable.getName(), roomVariable);
        }
    }

    public void setVariables(List<? extends RoomVariable> roomVariables) {
        for (RoomVariable roomVar : roomVariables) {
            setVariable(roomVar);
        }
    }

    public boolean containsVariable(String name) {
        return this.variables.containsKey(name);
    }

    public Map<?, ?> getProperties() {
        return this.properties;
    }

    public void setProperties(Map<?, ?> properties) {
        this.properties = properties;
    }

    public IRoomManager getRoomManager() {
        return this.roomManager;
    }

    public void setRoomManager(IRoomManager manager) throws SFSException {
        if (this.roomManager != null) {
            throw new SFSException("Room manager already assigned. Room: " + this);
        }
        this.roomManager = manager;
    }

    public String toString() {
        return "[Room: " + this.name + ", Id: " + this.id + ", GroupId: " + this.groupId + "]";
    }

    public void merge(Room anotherRoom) {
        this.variables = new HashMap();
        for (RoomVariable rv : anotherRoom.getVariables()) {
            this.variables.put(rv.getName(), rv);
        }
        this.userManager.clearAll();
        for (User user : anotherRoom.getUserList()) {
            this.userManager.addUser(user);
        }
    }
}
