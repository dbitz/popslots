package sfs2x.client.entities.variables;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSArray;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SFSUserVariable implements UserVariable {
    protected String name;
    protected int type;
    protected Object val;

    public static UserVariable fromSFSArray(ISFSArray sfsa) {
        return new SFSUserVariable(sfsa.getUtfString(0), sfsa.getElementAt(2), sfsa.getByte(1).byteValue());
    }

    public SFSUserVariable(String name, Object val) {
        this(name, val, -1);
    }

    public SFSUserVariable(String name, Object value, int type) {
        this.name = name;
        if (type > -1) {
            this.val = value;
            this.type = type;
            return;
        }
        setValue(value);
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public Object getValue() {
        return this.val;
    }

    public Boolean getBoolValue() {
        return (Boolean) this.val;
    }

    public Integer getIntValue() {
        return (Integer) this.val;
    }

    public Double getDoubleValue() {
        return (Double) this.val;
    }

    public String getStringValue() {
        return (String) this.val;
    }

    public ISFSObject getSFSObjectValue() {
        return (ISFSObject) this.val;
    }

    public ISFSArray getSFSArrayValue() {
        return (ISFSArray) this.val;
    }

    public boolean isNull() {
        return this.type == 0;
    }

    public ISFSArray toSFSArray() {
        ISFSArray sfsa = SFSArray.newInstance();
        sfsa.addUtfString(this.name);
        sfsa.addByte((byte) this.type);
        populateArrayWithValue(sfsa);
        return sfsa;
    }

    public String toString() {
        return "[UVar: " + this.name + ", type: " + this.type + ", value: " + this.val + "]";
    }

    private void populateArrayWithValue(ISFSArray arr) {
        switch (this.type) {
            case Base64.NO_OPTIONS /*0*/:
                arr.addNull();
                return;
            case BuddyOnlineState.OFFLINE /*1*/:
                arr.addBool(getBoolValue().booleanValue());
                return;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                arr.addInt(getIntValue().intValue());
                return;
            case MessageRecipientMode.TO_ZONE /*3*/:
                arr.addDouble(getDoubleValue().doubleValue());
                return;
            case Base64.DONT_GUNZIP /*4*/:
                arr.addUtfString(getStringValue());
                return;
            case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                arr.addSFSObject(getSFSObjectValue());
                return;
            case BaseRequest.CreateRoom /*6*/:
                arr.addSFSArray(getSFSArrayValue());
                return;
            default:
                return;
        }
    }

    private void setValue(Object val) {
        this.val = val;
        if (val == null) {
            this.type = 0;
        } else if (val instanceof Boolean) {
            this.type = 1;
        } else if (val instanceof Integer) {
            this.type = 2;
        } else if (val instanceof Double) {
            this.type = 3;
        } else if (val instanceof String) {
            this.type = 4;
        } else {
            String className = val.getClass().getSimpleName();
            if (className.equals("SFSObject")) {
                this.type = 5;
            } else if (className.equals("SFSArray")) {
                this.type = 6;
            } else {
                throw new IllegalArgumentException("Unsupport SFS Variable type: " + className);
            }
        }
    }
}
