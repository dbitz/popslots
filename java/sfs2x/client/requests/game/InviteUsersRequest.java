package sfs2x.client.requests.game;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Buddy;
import sfs2x.client.entities.User;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class InviteUsersRequest extends BaseRequest {
    public static final String KEY_INVITATION_ID = "ii";
    public static final String KEY_INVITED_USERS = "iu";
    public static final String KEY_INVITEE_ID = "ee";
    public static final String KEY_PARAMS = "p";
    public static final String KEY_REPLY_ID = "ri";
    public static final String KEY_TIME = "t";
    public static final String KEY_USER = "u";
    public static final String KEY_USER_ID = "ui";
    public static final int MAX_EXPIRY_TIME = 300;
    public static final int MAX_INVITATIONS_FROM_CLIENT_SIDE = 8;
    public static final int MIN_EXPIRY_TIME = 5;
    private List<Object> invitedUsers;
    private ISFSObject params;
    private int secondsForAnswer;

    public InviteUsersRequest(List<Object> invitedUsers, int secondsForAnswer, ISFSObject params) {
        super(MAX_EXPIRY_TIME);
        this.invitedUsers = invitedUsers;
        this.secondsForAnswer = secondsForAnswer;
        this.params = params;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.invitedUsers == null || this.invitedUsers.isEmpty()) {
            errors.add("No invitation(s) to send");
        }
        if (this.invitedUsers.size() > MAX_INVITATIONS_FROM_CLIENT_SIDE) {
            errors.add("Too many invitations. Max allowed from client side is: 8");
        }
        if (this.secondsForAnswer < MIN_EXPIRY_TIME || this.secondsForAnswer > MAX_EXPIRY_TIME) {
            errors.add("SecondsForAnswer value is out of range (5-300)");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("InvitationReply request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        List<Integer> invitedUserIds = new ArrayList();
        for (Object item : this.invitedUsers) {
            if ((item instanceof User) || (item instanceof Buddy)) {
                int id;
                if (item instanceof User) {
                    id = ((User) item).getId();
                } else {
                    id = ((Buddy) item).getId();
                }
                if (id != sfs.getMySelf().getId()) {
                    invitedUserIds.add(Integer.valueOf(id));
                }
            }
        }
        this.sfso.putIntArray(KEY_INVITED_USERS, invitedUserIds);
        this.sfso.putShort(KEY_TIME, (short) this.secondsForAnswer);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_PARAMS, this.params);
        }
    }
}
