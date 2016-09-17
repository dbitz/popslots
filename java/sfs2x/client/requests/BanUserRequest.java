package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;

public class BanUserRequest extends BaseRequest {
    public static final String KEY_BAN_DURATION_HOURS = "dh";
    public static final String KEY_BAN_MODE = "b";
    public static final String KEY_DELAY = "d";
    public static final String KEY_MESSAGE = "m";
    public static final String KEY_USER_ID = "u";
    private int banMode;
    private int delay;
    private int durationHours;
    private String message;
    private int userId;

    public BanUserRequest(int userId, String message, int banMode, int delaySeconds, int durationHours) {
        super(25);
        this.userId = userId;
        this.message = message;
        this.banMode = banMode;
        this.delay = delaySeconds;
        this.durationHours = durationHours;
    }

    public BanUserRequest(int userId, String message, int banMode, int delaySeconds) {
        this(userId, message, banMode, delaySeconds, 0);
    }

    public BanUserRequest(int userId, String message, int banMode) {
        this(userId, message, banMode, 5);
    }

    public BanUserRequest(int userId, String message) {
        this(userId, message, 1, 5);
    }

    public BanUserRequest(int userId) {
        this(userId, null, 1, 5);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!(sfs.getMySelf().isModerator() || sfs.getMySelf().isAdmin())) {
            errors.add("You don't have enough permissions to execute this request.");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("BanUser request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putInt(KEY_USER_ID, this.userId);
        this.sfso.putInt(KEY_DELAY, this.delay);
        this.sfso.putInt(KEY_BAN_MODE, this.banMode);
        this.sfso.putInt(KEY_BAN_DURATION_HOURS, this.durationHours);
        if (this.message != null && this.message.length() > 0) {
            this.sfso.putUtfString(KEY_MESSAGE, this.message);
        }
    }
}
