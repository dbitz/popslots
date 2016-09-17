package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;
import sfs2x.client.util.SFSStringUtils;

public class GenericMessageRequest extends BaseRequest {
    public static final String KEY_MESSAGE = "m";
    public static final String KEY_MESSAGE_TYPE = "t";
    public static final String KEY_RECIPIENT = "rc";
    public static final String KEY_RECIPIENT_MODE = "rm";
    public static final String KEY_ROOM_ID = "r";
    public static final String KEY_SENDER_DATA = "sd";
    public static final String KEY_USER_ID = "u";
    public static final String KEY_XTRA_PARAMS = "p";
    protected Logger log = LoggerFactory.getLogger(getClass());
    protected String message;
    protected ISFSObject params;
    protected Object recipient;
    protected Room room;
    protected int sendMode = -1;
    protected int type = -1;
    protected User user;

    public GenericMessageRequest() {
        super(7);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        if (this.type < 0) {
            throw new SFSValidationException("PublicMessage request error", Collections.singletonList("Unsupported message type: " + this.type));
        }
        List<String> errors = new ArrayList();
        switch (this.type) {
            case Base64.NO_OPTIONS /*0*/:
                validatePublicMessage(sfs, errors);
                break;
            case BuddyOnlineState.OFFLINE /*1*/:
                validatePrivateMessage(sfs, errors);
                break;
            case Base64.DONT_GUNZIP /*4*/:
                validateObjectMessage(sfs, errors);
                break;
            case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                validateBuddyMessage(sfs, errors);
                break;
            default:
                validateSuperUserMessage(sfs, errors);
                break;
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("Request error - ", errors);
        }
    }

    public void execute(ISmartFox sfs) throws SFSException {
        this.sfso.putByte(KEY_MESSAGE_TYPE, (byte) this.type);
        switch (this.type) {
            case Base64.NO_OPTIONS /*0*/:
                executePublicMessage(sfs);
                return;
            case BuddyOnlineState.OFFLINE /*1*/:
                executePrivateMessage(sfs);
                return;
            case Base64.DONT_GUNZIP /*4*/:
                executeObjectMessage(sfs);
                return;
            case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                executeBuddyMessage(sfs);
                return;
            default:
                executeSuperUserMessage(sfs);
                return;
        }
    }

    private void validatePublicMessage(ISmartFox sfs, List<String> errors) {
        if (SFSStringUtils.isEmptyOrNull(this.message)) {
            errors.add("Public message is empty!");
        }
        if (this.room != null && !sfs.getJoinedRooms().contains(this.room)) {
            errors.add("You are not joined in the target Room: " + this.room);
        }
    }

    private void validatePrivateMessage(ISmartFox sfs, List<String> errors) {
        if (SFSStringUtils.isEmptyOrNull(this.message)) {
            errors.add("Private message is empty!");
        }
        if (((Integer) this.recipient).intValue() < 0) {
            errors.add("Invalid recipient id: " + this.recipient);
        }
    }

    private void validateObjectMessage(ISmartFox sfs, List<String> errors) {
        if (this.params == null) {
            errors.add("Object message is null!");
        }
    }

    private void validateBuddyMessage(ISmartFox sfs, List<String> errors) {
        if (!sfs.getBuddyManager().isInited()) {
            errors.add("BuddyList is not inited. Please send an InitBuddyRequest first.");
        }
        if (!sfs.getBuddyManager().getMyOnlineState()) {
            errors.add("Can't send messages while off-line");
        }
        if (SFSStringUtils.isEmptyOrNull(this.message)) {
            errors.add("Buddy message is empty!");
        }
        if (((Integer) this.recipient).intValue() < 0) {
            errors.add("Recipient is not online or not in your buddy list");
        }
    }

    private void validateSuperUserMessage(ISmartFox sfs, List<String> errors) {
        if (SFSStringUtils.isEmptyOrNull(this.message)) {
            errors.add("Moderator message is empty!");
        }
        switch (this.sendMode) {
            case Base64.NO_OPTIONS /*0*/:
                if (!(this.recipient instanceof User)) {
                    errors.add("TO_USER expects a User object as recipient");
                    return;
                }
                return;
            case BuddyOnlineState.OFFLINE /*1*/:
                if (!(this.recipient instanceof Room)) {
                    errors.add("TO_ROOM expects a Room object as recipient");
                    return;
                }
                return;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                if (!(this.recipient instanceof String)) {
                    errors.add("TO_GROUP expects a String object (the groupId) as recipient");
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void executePublicMessage(ISmartFox sfs) throws SFSException {
        if (this.room == null) {
            this.room = sfs.getLastJoinedRoom();
        }
        if (this.room == null) {
            throw new SFSException("User should be joined in a room in order to send a public message");
        }
        this.sfso.putInt(KEY_ROOM_ID, this.room.getId());
        this.sfso.putInt(KEY_USER_ID, sfs.getMySelf().getId());
        this.sfso.putUtfString(KEY_MESSAGE, this.message);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_XTRA_PARAMS, this.params);
        }
    }

    private void executePrivateMessage(ISmartFox sfs) {
        this.sfso.putInt(KEY_RECIPIENT, ((Integer) this.recipient).intValue());
        this.sfso.putUtfString(KEY_MESSAGE, this.message);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_XTRA_PARAMS, this.params);
        }
    }

    private void executeBuddyMessage(ISmartFox sfs) {
        this.sfso.putInt(KEY_RECIPIENT, ((Integer) this.recipient).intValue());
        this.sfso.putUtfString(KEY_MESSAGE, this.message);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_XTRA_PARAMS, this.params);
        }
    }

    private void executeSuperUserMessage(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_MESSAGE, this.message);
        if (this.params != null) {
            this.sfso.putSFSObject(KEY_XTRA_PARAMS, this.params);
        }
        this.sfso.putInt(KEY_RECIPIENT_MODE, this.sendMode);
        switch (this.sendMode) {
            case Base64.NO_OPTIONS /*0*/:
                this.sfso.putInt(KEY_RECIPIENT, ((User) this.recipient).getId());
                return;
            case BuddyOnlineState.OFFLINE /*1*/:
                this.sfso.putInt(KEY_RECIPIENT, ((Room) this.recipient).getId());
                return;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                this.sfso.putUtfString(KEY_RECIPIENT, (String) this.recipient);
                return;
            default:
                return;
        }
    }

    private void executeObjectMessage(ISmartFox sfs) {
        if (this.room == null) {
            this.room = sfs.getLastJoinedRoom();
        }
        Set<Integer> recipients = new HashSet();
        if (this.recipient instanceof Collection) {
            Collection<?> potentialRecipients = this.recipient;
            if (potentialRecipients.size() > this.room.getCapacity()) {
                throw new IllegalArgumentException("The number of recipients is bigger than the target Room capacity: " + potentialRecipients.size());
            }
            for (Object item : potentialRecipients) {
                if (item instanceof User) {
                    recipients.add(Integer.valueOf(((User) item).getId()));
                } else {
                    this.log.warn("Bad recipient in ObjectMessage recipient list: " + item.getClass().getName() + ", expected type: User");
                }
            }
        }
        this.sfso.putInt(KEY_ROOM_ID, this.room.getId());
        this.sfso.putSFSObject(KEY_XTRA_PARAMS, this.params);
        if (!recipients.isEmpty()) {
            this.sfso.putIntArray(KEY_RECIPIENT, recipients);
        }
    }
}
