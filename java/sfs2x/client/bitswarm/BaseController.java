package sfs2x.client.bitswarm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BaseController implements IController {
    protected short id = (short) -1;
    protected final Logger log = LoggerFactory.getLogger(getClass());

    public short getId() {
        return this.id;
    }

    public void setId(short value) {
        if (this.id == (short) -1) {
            this.id = value;
            return;
        }
        throw new IllegalStateException("Controller ID is already set: " + this.id + ". Can't be changed at runtime!");
    }

    public void handleMessage(IMessage message) {
        this.log.info("System controller got request: " + message);
    }
}
