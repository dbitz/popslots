package sfs2x.client.core;

import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSObject;
import com.smartfoxserver.v2.exceptions.SFSCodecException;
import com.smartfoxserver.v2.exceptions.SFSException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.bitswarm.IController;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.bitswarm.IOHandler;
import sfs2x.client.bitswarm.IProtocolCodec;
import sfs2x.client.bitswarm.Message;
import sfs2x.client.util.ByteArray;

public class SFSProtocolCodec implements IProtocolCodec {
    private static final String ACTION_ID = "a";
    private static final String CONTROLLER_ID = "c";
    private static final String PARAM_ID = "p";
    private static final String UDP_PACKET_ID = "i";
    private static final String USER_ID = "u";
    private BitSwarmClient bitSwarm;
    private IOHandler ioHandler = null;
    private Logger log;

    public IOHandler getIOHandler() {
        return this.ioHandler;
    }

    public void setIOHandler(IOHandler ioHandler) throws SFSException {
        if (this.ioHandler != null) {
            throw new SFSException("IOHandler is already defined for thir ProtocolHandler instance: " + this);
        }
        this.ioHandler = ioHandler;
    }

    public SFSProtocolCodec(IOHandler ioHandler, BitSwarmClient bitSwarm) {
        this.ioHandler = ioHandler;
        this.log = LoggerFactory.getLogger(getClass());
        this.bitSwarm = bitSwarm;
    }

    public void onPacketRead(ByteArray packet) throws SFSException {
        dispatchRequest(SFSObject.newFromBinaryData(packet.getBytes()));
    }

    public void onPacketRead(ISFSObject packet) throws SFSException {
        dispatchRequest(packet);
    }

    public void onPacketWrite(IMessage message) throws SFSException {
        ISFSObject sfsObj;
        if (message.isUDP()) {
            sfsObj = prepareUDPPacket(message);
        } else {
            sfsObj = prepareTCPPacket(message);
        }
        message.setContent(sfsObj);
        this.ioHandler.onDataWrite(message);
    }

    private ISFSObject prepareTCPPacket(IMessage message) {
        ISFSObject sfsObj = new SFSObject();
        sfsObj.putByte(CONTROLLER_ID, (byte) message.getTargetController());
        sfsObj.putShort(ACTION_ID, (short) message.getId());
        sfsObj.putSFSObject(PARAM_ID, message.getContent());
        return sfsObj;
    }

    private ISFSObject prepareUDPPacket(IMessage message) {
        ISFSObject sfsObj = new SFSObject();
        sfsObj.putByte(CONTROLLER_ID, (byte) message.getTargetController());
        sfsObj.putInt(USER_ID, this.bitSwarm.getSfs().getMySelf() != null ? this.bitSwarm.getSfs().getMySelf().getId() : -1);
        sfsObj.putLong(UDP_PACKET_ID, this.bitSwarm.getNextUdpPacketId());
        sfsObj.putSFSObject(PARAM_ID, message.getContent());
        return sfsObj;
    }

    private void dispatchRequest(ISFSObject requestObject) throws SFSException {
        IMessage message = new Message();
        if (requestObject.isNull(CONTROLLER_ID)) {
            throw new SFSCodecException("Request rejected: No Controller ID in request!");
        } else if (requestObject.isNull(ACTION_ID)) {
            throw new SFSCodecException("Request rejected: No Action ID in request!");
        } else {
            message.setId(requestObject.getShort(ACTION_ID).shortValue());
            message.setContent(requestObject.getSFSObject(PARAM_ID));
            message.setUDP(requestObject.containsKey(UDP_PACKET_ID));
            if (message.isUDP()) {
                message.setPacketId(requestObject.getLong(UDP_PACKET_ID).longValue());
            }
            int controllerId = requestObject.getByte(CONTROLLER_ID).byteValue();
            IController controller = this.bitSwarm.getController(controllerId);
            if (controller == null) {
                throw new SFSException("Cannot handle server response. Unknown controller, id: " + controllerId);
            }
            controller.handleMessage(message);
        }
    }
}
