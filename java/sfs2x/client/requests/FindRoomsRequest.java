package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.match.MatchExpression;
import sfs2x.client.exceptions.SFSValidationException;

public class FindRoomsRequest extends BaseRequest {
    public static final String KEY_EXPRESSION = "e";
    public static final String KEY_FILTERED_ROOMS = "fr";
    public static final String KEY_GROUP = "g";
    public static final String KEY_LIMIT = "l";
    private String groupId;
    private short limit;
    private MatchExpression matchExpr;

    public FindRoomsRequest(MatchExpression expr, String groupId, short limit) {
        super(27);
        this.matchExpr = expr;
        this.groupId = groupId;
        this.limit = limit;
    }

    public FindRoomsRequest(MatchExpression expr, String groupId) {
        this(expr, groupId, (short) 0);
    }

    public FindRoomsRequest(MatchExpression expr) {
        this(expr, null, (short) 0);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.matchExpr == null) {
            errors.add("Missing Match Expression");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("FindRooms request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putSFSArray(KEY_EXPRESSION, this.matchExpr.toSFSArray());
        if (this.groupId != null) {
            this.sfso.putUtfString(KEY_GROUP, this.groupId);
        }
        if (this.limit > (short) 0) {
            this.sfso.putShort(KEY_LIMIT, this.limit);
        }
    }
}
