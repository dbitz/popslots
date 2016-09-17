package sfs2x.client.exceptions;

import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SFSValidationException extends SFSException {
    private final List<String> errors;

    public SFSValidationException(String message, List<String> errors) {
        super(message);
        this.errors = new ArrayList(errors);
    }

    public List<String> getErrors() {
        return Collections.unmodifiableList(this.errors);
    }
}
