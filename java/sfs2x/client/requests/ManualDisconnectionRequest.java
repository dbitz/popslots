package sfs2x.client.requests;

import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;

public class ManualDisconnectionRequest extends BaseRequest {
    public ManualDisconnectionRequest() {
        super(26);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
    }

    public void execute(ISmartFox sfs) {
    }
}
