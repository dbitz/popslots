package sfs2x.client.entities.variables;

import com.smartfoxserver.v2.entities.data.ISFSArray;

public class SFSRoomVariable extends SFSUserVariable implements RoomVariable {
    private boolean isPersistent;
    private boolean isPrivate;

    public static RoomVariable fromSFSArray(ISFSArray sfsa) {
        RoomVariable roomVariable = new SFSRoomVariable(sfsa.getUtfString(0), sfsa.getElementAt(2), sfsa.getByte(1).byteValue());
        roomVariable.setPrivate(sfsa.getBool(3).booleanValue());
        roomVariable.setPersistent(sfsa.getBool(4).booleanValue());
        return roomVariable;
    }

    public SFSRoomVariable(String name, Object val) {
        super(name, val, -1);
    }

    public SFSRoomVariable(String name, Object value, int type) {
        super(name, value, type);
    }

    public boolean isPersistent() {
        return this.isPersistent;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public void setPrivate(boolean setPrivate) {
        this.isPrivate = setPrivate;
    }

    public void setPersistent(boolean persistent) {
        this.isPersistent = persistent;
    }

    public ISFSArray toSFSArray() {
        ISFSArray arr = super.toSFSArray();
        arr.addBool(this.isPrivate);
        arr.addBool(this.isPersistent);
        return arr;
    }

    public String toString() {
        return "[RVar: " + this.name + ", type: " + this.type + ", value: " + this.val + ", isPriv: " + this.isPrivate + "]";
    }
}
