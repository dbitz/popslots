package sfs2x.client.requests.buddylist;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.SFSArray;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.variables.BuddyVariable;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;

public class SetBuddyVariablesRequest extends BaseRequest {
    public static final String KEY_BUDDY_NAME = "bn";
    public static final String KEY_BUDDY_VARS = "bv";
    private List<BuddyVariable> buddyVariables;

    public SetBuddyVariablesRequest(List<BuddyVariable> buddyVariables) {
        super(BaseRequest.SetBuddyVariables);
        this.buddyVariables = buddyVariables;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (!sfs.getBuddyManager().isInited()) {
            errors.add("BuddyList is not inited. Please send an InitBuddyRequest first.");
        }
        if (!sfs.getBuddyManager().getMyOnlineState()) {
            errors.add("Can't set buddy variables while off-line");
        }
        if (this.buddyVariables == null || this.buddyVariables.size() == 0) {
            errors.add("No variables were specified");
        }
        if (errors.size() > 0) {
            throw new SFSValidationException("SetBuddyVariables request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        ISFSArray varList = SFSArray.newInstance();
        for (BuddyVariable bVar : this.buddyVariables) {
            varList.addSFSArray(bVar.toSFSArray());
        }
        this.sfso.putSFSArray(KEY_BUDDY_VARS, varList);
    }
}
