package sfs2x.client.entities.variables;

import com.smartfoxserver.v2.entities.data.ISFSArray;

public class MMOItemVariable extends SFSUserVariable implements IMMOItemVariable {
    public static IMMOItemVariable fromSFSArray(ISFSArray sfsa) {
        return new MMOItemVariable(sfsa.getUtfString(0), sfsa.getElementAt(2), sfsa.getByte(1).byteValue());
    }

    public MMOItemVariable(String name, Object val) {
        super(name, val);
    }

    public MMOItemVariable(String name, Object value, int type) {
        super(name, value, type);
    }
}
