package sfs2x.client.entities;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.entities.data.Vec3D;
import sfs2x.client.entities.managers.IUserManager;
import sfs2x.client.entities.variables.SFSUserVariable;
import sfs2x.client.entities.variables.UserVariable;

public class SFSUser implements User {
    protected Vec3D aoiEntryPoint;
    protected int id;
    protected boolean isItMe;
    protected boolean isModerator;
    protected String name;
    protected Map<Integer, Integer> playerIdByRoomId;
    protected int privilegeId;
    protected Map<String, Object> properties;
    protected IUserManager userManager;
    protected Map<String, UserVariable> variables;

    public static User fromSFSArray(ISFSArray sfsa, Room room) {
        User newUser = new SFSUser(sfsa.getInt(0).intValue(), sfsa.getUtfString(1));
        newUser.setPrivilegeId(sfsa.getShort(2).shortValue());
        if (room != null) {
            newUser.setPlayerId(sfsa.getShort(3).shortValue(), room);
        }
        ISFSArray uVars = sfsa.getSFSArray(4);
        for (int i = 0; i < uVars.size(); i++) {
            newUser.setVariable(SFSUserVariable.fromSFSArray(uVars.getSFSArray(i)));
        }
        return newUser;
    }

    public static User fromSFSArray(ISFSArray sfsa) {
        return fromSFSArray(sfsa, null);
    }

    public SFSUser(int id, String name) {
        this(id, name, false);
    }

    public SFSUser(int id, String name, boolean isItMe) {
        this.id = -1;
        this.privilegeId = 0;
        this.id = id;
        this.name = name;
        this.isItMe = isItMe;
        this.variables = new HashMap();
        this.properties = new HashMap();
        this.isModerator = false;
        this.playerIdByRoomId = new HashMap();
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int getPlayerId() {
        return getPlayerId(this.userManager.getSmartFox().getLastJoinedRoom());
    }

    public boolean isPlayer() {
        return getPlayerId() > 0;
    }

    public boolean isSpectator() {
        return !isPlayer();
    }

    public int getPlayerId(Room room) {
        if (this.playerIdByRoomId.containsKey(Integer.valueOf(room.getId()))) {
            return ((Integer) this.playerIdByRoomId.get(Integer.valueOf(room.getId()))).intValue();
        }
        return 0;
    }

    public void setPlayerId(int id, Room room) {
        this.playerIdByRoomId.put(Integer.valueOf(room.getId()), Integer.valueOf(id));
    }

    public void removePlayerId(Room room) {
        this.playerIdByRoomId.remove(Integer.valueOf(room.getId()));
    }

    public int getPrivilegeId() {
        return this.privilegeId;
    }

    public void setPrivilegeId(int privilegeId) {
        this.privilegeId = privilegeId;
    }

    public IUserManager getUserManager() {
        return this.userManager;
    }

    public void setUserManager(IUserManager userManager) {
        this.userManager = userManager;
    }

    public boolean isGuest() {
        return this.privilegeId == 0;
    }

    public boolean isStandardUser() {
        return this.privilegeId == 1;
    }

    public boolean isModerator() {
        return this.privilegeId == 2;
    }

    public boolean isAdmin() {
        return this.privilegeId == 3;
    }

    public boolean isPlayerInRoom(Room room) {
        return ((Integer) this.playerIdByRoomId.get(Integer.valueOf(room.getId()))).intValue() > 0;
    }

    public boolean isSpectatorInRoom(Room room) {
        return ((Integer) this.playerIdByRoomId.get(Integer.valueOf(room.getId()))).intValue() < 0;
    }

    public boolean isJoinedInRoom(Room room) {
        return room.containsUser(this);
    }

    public boolean isItMe() {
        return this.isItMe;
    }

    public List<UserVariable> getVariables() {
        return new ArrayList(this.variables.values());
    }

    public UserVariable getVariable(String varName) {
        if (this.variables.containsKey(varName)) {
            return (UserVariable) this.variables.get(varName);
        }
        return null;
    }

    public void setVariable(UserVariable userVariable) {
        if (userVariable == null) {
            return;
        }
        if (userVariable.isNull()) {
            this.variables.remove(userVariable.getName());
        } else {
            this.variables.put(userVariable.getName(), userVariable);
        }
    }

    public void setVariables(List<? extends UserVariable> userVariables) {
        for (UserVariable userVar : userVariables) {
            setVariable(userVar);
        }
    }

    public boolean containsVariable(String name) {
        return this.variables.containsKey(name);
    }

    public Map<String, Object> getProperties() {
        return this.properties;
    }

    public void setProperties(Map<String, Object> properties) {
        this.properties = properties;
    }

    public Vec3D getAOIEntryPoint() {
        return this.aoiEntryPoint;
    }

    public void setAOIEntryPoint(Vec3D aoiEntryPoint) {
        this.aoiEntryPoint = aoiEntryPoint;
    }

    public String toString() {
        return "[User: " + this.name + ", Id: " + this.id + ", isMe: " + this.isItMe + "]";
    }
}
