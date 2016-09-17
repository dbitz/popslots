package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;

public class KickUserRequest extends BaseRequest {
    public static final String KEY_DELAY = "d";
    public static final String KEY_MESSAGE = "m";
    public static final String KEY_USER_ID = "u";
    private int delay;
    private String message;
    private int userId;

    public KickUserRequest(int userId, String message, int delaySeconds) {
        super(24);
        this.userId = userId;
        this.message = message;
        this.delay = delaySeconds;
        if (this.delay < 0) {
            this.delay = 0;
        }
    }

    public KickUserRequest(int userId, String message) {
        this(userId, message, 5);
    }

    public KickUserRequest(int userId) {
        this(userId, null, 5);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!(sfs.getMySelf().isModerator() || sfs.getMySelf().isAdmin())) {
            errors.add("You don't have enough permissions to execute this request.");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("KickUser request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putInt(KEY_USER_ID, this.userId);
        this.sfso.putInt(KEY_DELAY, this.delay);
        if (this.message != null && this.message.length() > 0) {
            this.sfso.putUtfString(KEY_MESSAGE, this.message);
        }
    }
}
