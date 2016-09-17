package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.Collections;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.util.PasswordUtil;

public class LoginRequest extends BaseRequest {
    public static final String KEY_ID = "id";
    public static final String KEY_PARAMS = "p";
    public static final String KEY_PASSWORD = "pw";
    public static final String KEY_PRIVILEGE_ID = "pi";
    public static final String KEY_RECONNECTION_SECONDS = "rs";
    public static final String KEY_ROOMLIST = "rl";
    public static final String KEY_USER_NAME = "un";
    public static final String KEY_ZONE_NAME = "zn";
    private ISFSObject params;
    private String password;
    private String userName;
    private String zoneName;

    public LoginRequest(String userName, String password, String zoneName, ISFSObject params) {
        super(1);
        this.zoneName = zoneName;
        this.userName = userName;
        if (password == null) {
            password = "";
        }
        this.password = password;
        this.params = params;
    }

    public LoginRequest(String userName, String password, String zoneName) {
        this(userName, password, zoneName, null);
    }

    public LoginRequest(String userName, String password) {
        this(userName, password, null, null);
    }

    public LoginRequest(String userName) {
        this(userName, null, null, null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        if (sfs.getMySelf() != null) {
            throw new SFSValidationException("LoginRequest Error", Collections.singletonList("You are already logged in. Logout first"));
        }
        if ((this.zoneName == null || this.zoneName.length() == 0) && sfs.getConfig() != null) {
            this.zoneName = sfs.getConfig().getZone();
        }
        if (this.zoneName == null || this.zoneName.length() == 0) {
            throw new SFSValidationException("LoginRequest Error", Collections.singletonList("Missing Zone name"));
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_ZONE_NAME, this.zoneName);
        this.sfso.putUtfString(KEY_USER_NAME, this.userName);
        if (this.password.length() > 0) {
            this.password = PasswordUtil.MD5Password(sfs.getSessionToken() + this.password);
        }
        this.sfso.putUtfString(KEY_PASSWORD, this.password);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_PARAMS, this.params);
        }
    }
}
