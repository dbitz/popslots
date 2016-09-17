package sfs2x.client.requests;

import java.util.Collections;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;

public class LogoutRequest extends BaseRequest {
    public static final String KEY_ZONE_NAME = "zn";

    public LogoutRequest() {
        super(2);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        if (sfs.getMySelf() == null) {
            throw new SFSValidationException("LogoutRequest Error", Collections.singletonList("You are not logged in a the moment!"));
        }
    }

    public void execute(ISmartFox sfs) {
    }
}
