package sfs2x.client.requests.game;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.invitation.Invitation;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class InvitationReplyRequest extends BaseRequest {
    public static final String KEY_INVITATION_ID = "i";
    public static final String KEY_INVITATION_PARAMS = "p";
    public static final String KEY_INVITATION_REPLY = "r";
    private Invitation invitation;
    private ISFSObject params;
    private int reply;

    public InvitationReplyRequest(Invitation invitation, int invitationReply, ISFSObject params) {
        super(BaseRequest.InvitationReply);
        this.invitation = invitation;
        this.reply = invitationReply;
        this.params = params;
    }

    public InvitationReplyRequest(Invitation invitation, int invitationReply) {
        this(invitation, invitationReply, null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.invitation == null) {
            errors.add("Missing invitation object");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("InvitationReply request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putInt(KEY_INVITATION_ID, this.invitation.getId());
        this.sfso.putByte(KEY_INVITATION_REPLY, (byte) this.reply);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_INVITATION_PARAMS, this.params);
        }
    }
}
