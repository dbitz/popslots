package sfs2x.client.entities.invitation;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import sfs2x.client.entities.User;

public class SFSInvitation implements Invitation {
    protected int id;
    protected User invitee;
    protected User inviter;
    protected ISFSObject parameters;
    protected int secondsForAnswer;

    public SFSInvitation(User inviter, User invitee, int secondsForAnswer, ISFSObject parameters) {
        this.inviter = inviter;
        this.invitee = invitee;
        this.secondsForAnswer = secondsForAnswer;
        this.parameters = parameters;
    }

    public SFSInvitation(User inviter, User invitee, int secondsForAnswer) {
        this(inviter, invitee, secondsForAnswer, null);
    }

    public SFSInvitation(User inviter, User invitee) {
        this(inviter, invitee, 15, null);
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getInviter() {
        return this.inviter;
    }

    public User getInvitee() {
        return this.invitee;
    }

    public int getSecondsForAnswer() {
        return this.secondsForAnswer;
    }

    public ISFSObject getParams() {
        return this.parameters;
    }
}
