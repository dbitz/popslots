package sfs2x.client.requests.game;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import sfs2x.client.entities.match.MatchExpression;
import sfs2x.client.requests.RoomSettings;

public class SFSGameSettings extends RoomSettings {
    private int invitationExpiryTime = 15;
    private ISFSObject invitationParams;
    private List<?> invitedPlayers = new ArrayList();
    private boolean isPublic = true;
    private boolean leaveJoinedLastRoom = true;
    private int minPlayersToStartGame = 2;
    private boolean notifyGameStarted;
    private MatchExpression playerMatchExpression;
    private List<String> searchableRooms = new ArrayList();
    private MatchExpression spectatorMatchExpression;

    public SFSGameSettings(String name) {
        super(name);
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public int getMinPlayersToStartGame() {
        return this.minPlayersToStartGame;
    }

    public List<?> getInvitedPlayers() {
        return Collections.unmodifiableList(this.invitedPlayers);
    }

    public List<String> getSearchableRooms() {
        return Collections.unmodifiableList(this.searchableRooms);
    }

    public int getInvitationExpiryTime() {
        return this.invitationExpiryTime;
    }

    public boolean getLeaveLastJoinedRoom() {
        return this.leaveJoinedLastRoom;
    }

    public boolean getNotifyGameStarted() {
        return this.notifyGameStarted;
    }

    public MatchExpression getPlayerMatchExpression() {
        return this.playerMatchExpression;
    }

    public MatchExpression getSpectatorMatchExpression() {
        return this.spectatorMatchExpression;
    }

    public ISFSObject getInvitationParams() {
        return this.invitationParams;
    }

    public void setPublic(boolean isPublic) {
        this.isPublic = isPublic;
    }

    public void setMinPlayersToStartGame(int minPlayersToStartGame) {
        this.minPlayersToStartGame = minPlayersToStartGame;
    }

    public void setInvitedPlayers(List<?> invitedPlayers) {
        this.invitedPlayers = new ArrayList(invitedPlayers);
    }

    public void setSearchableRooms(List<String> searchableRooms) {
        this.searchableRooms = new ArrayList(searchableRooms);
    }

    public void setInvitationExpiryTime(int invitationExpiryTime) {
        this.invitationExpiryTime = invitationExpiryTime;
    }

    public void setLeaveLastJoinedRoom(boolean leaveLastJoinedRoom) {
        this.leaveJoinedLastRoom = leaveLastJoinedRoom;
    }

    public void setNotifyGameStarted(boolean notifyGameStarted) {
        this.notifyGameStarted = notifyGameStarted;
    }

    public void setPlayerMatchExpression(MatchExpression playerMatchExpression) {
        this.playerMatchExpression = playerMatchExpression;
    }

    public void setSpectatorMatchExpression(MatchExpression spectatorMatchExpression) {
        this.spectatorMatchExpression = spectatorMatchExpression;
    }

    public void setInvitationParams(ISFSObject invitationParams) {
        this.invitationParams = invitationParams;
    }
}
