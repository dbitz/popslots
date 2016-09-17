package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.SFSArray;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.variables.UserVariable;
import sfs2x.client.exceptions.SFSValidationException;

public class SetUserVariablesRequest extends BaseRequest {
    public static final String KEY_USER = "u";
    public static final String KEY_VAR_LIST = "vl";
    private List<UserVariable> userVariables;

    public SetUserVariablesRequest(List<UserVariable> userVariables) {
        super(12);
        this.userVariables = userVariables;
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        List<String> errors = new ArrayList();
        if (this.userVariables == null || this.userVariables.isEmpty()) {
            errors.add("No variables were specified");
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("SetUserVariables request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        ISFSArray varList = SFSArray.newInstance();
        for (UserVariable uVar : this.userVariables) {
            varList.addSFSArray(uVar.toSFSArray());
        }
        this.sfso.putSFSArray(KEY_VAR_LIST, varList);
    }
}
