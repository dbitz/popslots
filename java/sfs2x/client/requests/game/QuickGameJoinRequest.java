package sfs2x.client.requests.game;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.match.MatchExpression;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class QuickGameJoinRequest extends BaseRequest {
    public static final String KEY_GROUP_LIST = "gl";
    public static final String KEY_MATCH_EXPRESSION = "me";
    public static final String KEY_ROOM_LIST = "rl";
    public static final String KEY_ROOM_TO_LEAVE = "tl";
    private static final int MAX_ROOMS = 32;
    private MatchExpression matchExpression;
    private Room roomToLeave;
    private List<?> whereToSearch;

    public QuickGameJoinRequest(MatchExpression matchExpression, List<?> whereToSearch, Room roomToLeave) {
        super(BaseRequest.QuickJoinGame);
        this.matchExpression = matchExpression;
        this.roomToLeave = roomToLeave;
        this.whereToSearch = whereToSearch;
    }

    public QuickGameJoinRequest(MatchExpression matchExpression, List<?> whereToSearch) {
        this(matchExpression, whereToSearch, null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.whereToSearch == null || this.whereToSearch.size() < 1) {
            errors.add("Missing whereToSearch parameter");
        } else if (this.whereToSearch.size() > MAX_ROOMS) {
            errors.add("Too many Rooms specified in the whereToSearch parameter. Client limit is: 32");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("QuickJoinGame request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        if (this.whereToSearch.get(0) instanceof Room) {
            List<Integer> roomIds = new ArrayList();
            for (Room room : this.whereToSearch) {
                roomIds.add(Integer.valueOf(room.getId()));
            }
            this.sfso.putIntArray(KEY_ROOM_LIST, roomIds);
        } else {
            this.sfso.putUtfStringArray(KEY_GROUP_LIST, this.whereToSearch);
        }
        if (this.roomToLeave != null) {
            this.sfso.putInt(KEY_ROOM_TO_LEAVE, this.roomToLeave.getId());
        }
        if (this.matchExpression != null) {
            this.sfso.putSFSArray(KEY_MATCH_EXPRESSION, this.matchExpression.toSFSArray());
        }
    }
}
