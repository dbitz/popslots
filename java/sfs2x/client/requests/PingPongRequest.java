package sfs2x.client.requests;

import com.smartfoxserver.v2.exceptions.SFSException;
import sfs2x.client.ISmartFox;
import sfs2x.client.exceptions.SFSValidationException;

public class PingPongRequest extends BaseRequest {
    public PingPongRequest() {
        super(29);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
    }

    public void execute(ISmartFox sfs) throws SFSException {
    }
}
