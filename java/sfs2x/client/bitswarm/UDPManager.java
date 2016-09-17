package sfs2x.client.bitswarm;

import com.facebook.Response;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.model.ErrorReport;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSObject;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.SmartFox;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.DefaultPacketEncrypter;
import sfs2x.client.core.IEventListener;
import sfs2x.client.core.IPacketEncrypter;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.core.sockets.ISocketLayer;
import sfs2x.client.core.sockets.SocketEvent;
import sfs2x.client.core.sockets.UDPSocketLayer;
import sfs2x.client.requests.ExtensionRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetMMOItemVariables;
import sfs2x.client.util.ByteArray;

public class UDPManager implements IUDPManager {
    private final int MAX_RETRY = 3;
    private final int RESPONSE_TIMEOUT = 3000;
    private int currentAttempt = 1;
    private boolean initSuccess = false;
    private ScheduledThreadPoolExecutor initTimer;
    private volatile boolean locked = false;
    private Logger log = LoggerFactory.getLogger(getClass());
    private IPacketEncrypter packetEncrypter;
    private long packetId = 0;
    private SmartFox sfs;
    private ISocketLayer udpSocket;
    private ScheduledFuture<?> udpTimeout;

    public void initialize(String udpAddr, int udpPort) throws SFSException {
        if (this.initSuccess) {
            this.log.warn("UDP Channel already initialized!");
        } else if (this.locked) {
            this.log.warn("UPD initialization is already in progress!");
        } else {
            this.locked = true;
            this.udpSocket = new UDPSocketLayer();
            this.udpSocket.addEventListener(SocketEvent.OnData, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    UDPManager.this.onUDPData(new ByteArray((byte[]) evt.getArguments().get("data")));
                }
            });
            this.udpSocket.addEventListener(SocketEvent.OnError, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    UDPManager.this.onUDPError((String) evt.getArguments().get(ErrorReport.KEY_MESSAGE));
                }
            });
            this.udpSocket.connect(udpAddr, udpPort);
            sendInitializationRequest();
        }
    }

    public long getNextUdpPacketId() {
        long j = this.packetId;
        this.packetId = 1 + j;
        return j;
    }

    public void send(ByteArray binaryData) {
        if (this.initSuccess) {
            try {
                this.udpSocket.write(binaryData.getBytes());
                this.sfs.isDebug();
                return;
            } catch (Exception ex) {
                this.log.warn("WriteUDP operation failed due to Error: " + ex.getMessage());
                return;
            }
        }
        this.log.warn("UDP protocol is not initialized yet. Pleas use the initUDP() method.");
    }

    public boolean isInited() {
        return this.initSuccess;
    }

    public void setSfs(SmartFox value) {
        this.sfs = value;
        this.packetEncrypter = new DefaultPacketEncrypter(this.sfs.getSocketEngine());
    }

    public void reset() {
        stopTimer();
        this.currentAttempt = 1;
        this.initSuccess = false;
        this.locked = false;
        this.packetId = 0;
    }

    private void onUDPData(ByteArray bytes) throws SFSException {
        if (bytes.getBytesAvailable() < 4) {
            this.log.warn("Too small UDP packet. Len: " + bytes.getLength());
            return;
        }
        boolean compressed;
        boolean encrypted;
        byte header = bytes.readByte();
        if ((header & 32) > 0) {
            compressed = true;
        } else {
            compressed = false;
        }
        if ((header & 64) > 0) {
            encrypted = true;
        } else {
            encrypted = false;
        }
        short dataSize = bytes.readShort();
        if (dataSize > bytes.getBytesAvailable()) {
            this.log.warn("Insufficient UDP data. Expected: " + dataSize + ", got: " + bytes.getBytesAvailable());
            return;
        }
        byte[] data = bytes.readBytes(dataSize);
        if (encrypted) {
            try {
                data = this.packetEncrypter.decrypt(data);
            } catch (Throwable e) {
                throw new SFSException(e);
            }
        }
        ByteArray objBytes = new ByteArray(data);
        if (compressed) {
            objBytes.uncompress();
        }
        ISFSObject reqObj = SFSObject.newFromBinaryData(objBytes.getBytes());
        if (!reqObj.containsKey(HSFunnel.MARKED_HELPFUL)) {
            this.sfs.getSocketEngine().getIoHandler().getCodec().onPacketRead(reqObj);
        } else if (!this.initSuccess) {
            stopTimer();
            this.locked = false;
            this.initSuccess = true;
            Map<String, Object> params = new HashMap();
            params.put(Response.SUCCESS_KEY, Boolean.valueOf(true));
            this.sfs.dispatchEvent(new SFSEvent(SFSEvent.UDP_INIT, params));
        }
    }

    private void onUDPError(String error) {
        this.log.warn("Unexpected UDP I/O Error. " + error);
    }

    void sendInitializationRequest() throws SFSException {
        ISFSObject message = new SFSObject();
        message.putByte(ExtensionRequest.KEY_CMD, (byte) 1);
        message.putByte(HSFunnel.MARKED_HELPFUL, (byte) 1);
        message.putLong(SetMMOItemVariables.KEY_ITEM_ID, getNextUdpPacketId());
        message.putInt(InviteUsersRequest.KEY_USER, this.sfs.getMySelf().getId());
        ByteArray binData = new ByteArray(message.toBinary());
        ByteArray writeBuffer = new ByteArray();
        writeBuffer.writeByte(Byte.MIN_VALUE);
        writeBuffer.writeShort((short) binData.getLength());
        writeBuffer.writeBytes(binData.getBytes());
        this.udpSocket.write(writeBuffer.getBytes());
        startTimer();
    }

    private void onTimeout() throws SFSException {
        if (this.currentAttempt < 3) {
            this.currentAttempt++;
            this.log.debug("UDP Init Attempt: " + this.currentAttempt);
            sendInitializationRequest();
            return;
        }
        stopTimer();
        this.currentAttempt = 0;
        this.locked = false;
        Map<String, Object> params = new HashMap();
        params.put(Response.SUCCESS_KEY, Boolean.valueOf(false));
        this.sfs.dispatchEvent(new SFSEvent(SFSEvent.UDP_INIT, params));
    }

    private synchronized void startTimer() throws SFSException {
        if (this.initTimer == null) {
            this.initTimer = new ScheduledThreadPoolExecutor(1);
        }
        this.udpTimeout = this.initTimer.schedule(new Runnable() {
            public void run() {
                try {
                    UDPManager.this.onTimeout();
                } catch (SFSException err) {
                    UDPManager.this.log.error(err.toString());
                }
            }
        }, 3000, TimeUnit.MILLISECONDS);
    }

    private synchronized void stopTimer() {
        if (this.udpTimeout != null) {
            this.udpTimeout.cancel(true);
        }
        if (this.initTimer != null) {
            this.initTimer.shutdown();
            this.initTimer = null;
        }
    }

    public void disconnect() {
        this.udpSocket.disconnect();
    }
}
