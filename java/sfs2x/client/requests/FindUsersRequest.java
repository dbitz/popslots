package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.match.MatchExpression;
import sfs2x.client.exceptions.SFSValidationException;

public class FindUsersRequest extends BaseRequest {
    public static final String KEY_EXPRESSION = "e";
    public static final String KEY_FILTERED_USERS = "fu";
    public static final String KEY_GROUP = "g";
    public static final String KEY_LIMIT = "l";
    public static final String KEY_ROOM = "r";
    private short limit;
    private MatchExpression matchExpr;
    private Object target;

    public FindUsersRequest(MatchExpression matchExpr, Object target, short limit) {
        super(28);
        this.limit = limit;
        this.target = target;
        this.matchExpr = matchExpr;
    }

    public FindUsersRequest(MatchExpression matchExpr) {
        this(matchExpr, null, (short) 0);
    }

    public FindUsersRequest(MatchExpression matchExpr, Object target) {
        this(matchExpr, target, (short) 0);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.matchExpr == null) {
            errors.add("Missing Match Expression");
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("FindUsers request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putSFSArray(KEY_EXPRESSION, this.matchExpr.toSFSArray());
        if (this.target != null) {
            if (this.target instanceof Room) {
                this.sfso.putInt(KEY_ROOM, ((Room) this.target).getId());
            } else if (this.target instanceof String) {
                this.sfso.putUtfString(KEY_GROUP, (String) this.target);
            }
        }
        if (this.limit > (short) 0) {
            this.sfso.putShort(KEY_LIMIT, this.limit);
        }
    }
}
