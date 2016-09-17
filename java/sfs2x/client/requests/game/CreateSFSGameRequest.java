package sfs2x.client.requests.game;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Buddy;
import sfs2x.client.entities.User;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.CreateRoomRequest;

public class CreateSFSGameRequest extends BaseRequest {
    public static final String KEY_INVITATION_EXPIRY = "gie";
    public static final String KEY_INVITATION_PARAMS = "ip";
    public static final String KEY_INVITED_PLAYERS = "ginp";
    public static final String KEY_IS_PUBLIC = "gip";
    public static final String KEY_LEAVE_ROOM = "glr";
    public static final String KEY_MIN_PLAYERS = "gmp";
    public static final String KEY_NOTIFY_GAME_STARTED = "gns";
    public static final String KEY_PLAYER_MATCH_EXP = "gpme";
    public static final String KEY_SEARCHABLE_ROOMS = "gsr";
    public static final String KEY_SPECTATOR_MATCH_EXP = "gsme";
    private CreateRoomRequest createRoomRequest;
    private SFSGameSettings settings;

    public CreateSFSGameRequest(SFSGameSettings settings) {
        super(BaseRequest.CreateSFSGame);
        this.settings = settings;
        this.createRoomRequest = new CreateRoomRequest(settings, false, null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        try {
            this.createRoomRequest.validate(sfs);
        } catch (SFSValidationException err) {
            errors.addAll(err.getErrors());
        }
        if (this.settings.getMinPlayersToStartGame() > this.settings.getMaxUsers()) {
            errors.add("minPlayersToStartGame cannot be greater than maxUsers");
        }
        if (this.settings.getInvitationExpiryTime() < 5 || this.settings.getInvitationExpiryTime() > InviteUsersRequest.MAX_EXPIRY_TIME) {
            errors.add("Expiry time value is out of range (5-300)");
        }
        if (this.settings.getInvitedPlayers() != null && this.settings.getInvitedPlayers().size() > 8) {
            errors.add("Cannot invite more than 8 players from client side");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("CreateSFSGameRoom request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.createRoomRequest.execute(sfs);
        this.sfso = this.createRoomRequest.getMessage().getContent();
        this.sfso.putBool(KEY_IS_PUBLIC, this.settings.isPublic());
        this.sfso.putShort(KEY_MIN_PLAYERS, (short) this.settings.getMinPlayersToStartGame());
        this.sfso.putShort(KEY_INVITATION_EXPIRY, (short) this.settings.getInvitationExpiryTime());
        this.sfso.putBool(KEY_LEAVE_ROOM, this.settings.getLeaveLastJoinedRoom());
        this.sfso.putBool(KEY_NOTIFY_GAME_STARTED, this.settings.getNotifyGameStarted());
        if (this.settings.getPlayerMatchExpression() != null) {
            this.sfso.putSFSArray(KEY_PLAYER_MATCH_EXP, this.settings.getPlayerMatchExpression().toSFSArray());
        }
        if (this.settings.getSpectatorMatchExpression() != null) {
            this.sfso.putSFSArray(KEY_SPECTATOR_MATCH_EXP, this.settings.getSpectatorMatchExpression().toSFSArray());
        }
        List<?> invitedPlayers = this.settings.getInvitedPlayers();
        if (invitedPlayers != null) {
            List<Integer> playerIds = new ArrayList(invitedPlayers.size());
            for (Object player : invitedPlayers) {
                if (player instanceof User) {
                    playerIds.add(Integer.valueOf(((User) player).getId()));
                } else if (player instanceof Buddy) {
                    playerIds.add(Integer.valueOf(((Buddy) player).getId()));
                }
            }
            this.sfso.putIntArray(KEY_INVITED_PLAYERS, playerIds);
        }
        List<String> searchableRooms = this.settings.getSearchableRooms();
        if (searchableRooms != null) {
            this.sfso.putUtfStringArray(KEY_SEARCHABLE_ROOMS, searchableRooms);
        }
        if (this.settings.getInvitationParams() != null) {
            this.sfso.putSFSObject(KEY_INVITATION_PARAMS, this.settings.getInvitationParams());
        }
    }
}
