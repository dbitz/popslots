package sfs2x.client.controllers.system;

import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.controllers.IResHandler;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.util.ClientDisconnectionReason;

public class ResClientDisconnect implements IResHandler {
    public void handleResponse(ISmartFox sfs, SystemController systemController, IMessage message) throws Exception {
        sfs.handleClientDisconnection(ClientDisconnectionReason.getReason(message.getContent().getByte("dr").byteValue()));
    }
}
