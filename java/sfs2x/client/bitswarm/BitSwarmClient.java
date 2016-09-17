package sfs2x.client.bitswarm;

import com.facebook.Response;
import com.facebook.widget.PlacePickerFragment;
import com.helpshift.support.model.ErrorReport;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.SmartFox;
import sfs2x.client.bitswarm.bbox.BBClient;
import sfs2x.client.bitswarm.bbox.BBEvent;
import sfs2x.client.controllers.ExtensionController;
import sfs2x.client.controllers.SystemController;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.EventDispatcher;
import sfs2x.client.core.IDispatchable;
import sfs2x.client.core.IEventListener;
import sfs2x.client.core.sockets.ISocketLayer;
import sfs2x.client.core.sockets.SocketEvent;
import sfs2x.client.core.sockets.TCPSocketLayer;
import sfs2x.client.util.ByteArray;
import sfs2x.client.util.ClientDisconnectionReason;
import sfs2x.client.util.CryptoKey;

public class BitSwarmClient implements IDispatchable {
    private boolean attemptingReconnection;
    private BBClient bbClient;
    private boolean bbConnected;
    private int compressionThreshold;
    private ConnectionMode connectionMode;
    private Map<Integer, IController> controllers;
    private boolean controllersInited;
    private CryptoKey cryptoKey;
    private String disconnectionReason;
    private EventDispatcher dispatcher;
    private ExtensionController extController;
    private long firstReconnAttempt;
    private IOHandler ioHandler;
    private String lastIpAddress;
    private int lastTcpPort;
    private Logger log;
    private int maxMessageSize;
    private int reconnCounter;
    private int reconnectionDelayMillis;
    private int reconnectionSeconds;
    private SmartFox sfs;
    private ISocketLayer socket;
    private SystemController sysController;
    private IUDPManager udpManager;
    private boolean useBlueBox;

    public BitSwarmClient() {
        this(null);
    }

    public BitSwarmClient(SmartFox sfs) {
        this.socket = null;
        this.controllers = new HashMap();
        this.compressionThreshold = 2000000;
        this.maxMessageSize = 10000;
        this.reconnectionDelayMillis = PlacePickerFragment.DEFAULT_RADIUS_IN_METERS;
        this.reconnectionSeconds = 0;
        this.controllersInited = false;
        this.useBlueBox = false;
        this.firstReconnAttempt = -1;
        this.reconnCounter = 1;
        this.sfs = sfs;
        this.log = LoggerFactory.getLogger(getClass());
        this.dispatcher = new EventDispatcher(this);
    }

    public void forceBlueBox(boolean useBlueBox) throws SFSException {
        if (this.bbConnected) {
            throw new SFSException("You can't change the BlueBox mode while the connection is running");
        }
        this.useBlueBox = useBlueBox;
    }

    public void enableBlueBoxDebug(boolean debug) {
        this.bbClient.setDebug(debug);
    }

    public void init() {
        if (!this.controllersInited) {
            initControllers();
            this.controllersInited = true;
        }
        if (this.socket == null) {
            this.socket = new TCPSocketLayer();
            this.socket.addEventListener(SocketEvent.OnConnect, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    BitSwarmClient.this.onSocketConnect();
                }
            });
            this.socket.addEventListener(SocketEvent.OnDisconnect, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    BitSwarmClient.this.onSocketClose();
                }
            });
            this.socket.addEventListener(SocketEvent.OnData, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    BitSwarmClient.this.onSocketData(new ByteArray((byte[]) evt.getArguments().get("data")));
                }
            });
            this.socket.addEventListener(SocketEvent.OnError, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    BitSwarmClient.this.onSocketError((String) evt.getArguments().get(ErrorReport.KEY_MESSAGE));
                }
            });
            this.bbClient = new BBClient(this);
            this.bbClient.addEventListener(BBEvent.CONNECT, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    BitSwarmClient.this.onBBConnect(evt);
                }
            });
            this.bbClient.addEventListener(BBEvent.DATA, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    BitSwarmClient.this.onBBData(evt);
                }
            });
            this.bbClient.addEventListener(BBEvent.DISCONNECT, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    BitSwarmClient.this.onBBDisconnect(evt);
                }
            });
            this.bbClient.addEventListener(BBEvent.IO_ERROR, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    BitSwarmClient.this.onBBError(evt);
                }
            });
            this.bbClient.addEventListener(BBEvent.SECURITY_ERROR, new IEventListener() {
                public void dispatch(BaseEvent evt) throws SFSException {
                    BitSwarmClient.this.onBBError(evt);
                }
            });
        }
    }

    public void destroy() {
        this.socket.getDispatcher().removeAll();
        if (this.socket.isConnected()) {
            this.socket.disconnect();
        }
        this.socket = null;
    }

    public IController getController(int id) {
        return (IController) this.controllers.get(Integer.valueOf(id));
    }

    public String getConnectionIp() {
        if (isConnected()) {
            return this.lastIpAddress;
        }
        return "Not Connected";
    }

    public int getConnectionPort() {
        if (isConnected()) {
            return this.lastTcpPort;
        }
        return -1;
    }

    private void addController(int id, IController controller) {
        if (controller == null) {
            throw new IllegalArgumentException("Controller is null, it can't be added.");
        } else if (this.controllers.containsKey(Integer.valueOf(id))) {
            throw new IllegalArgumentException("A controller with id: " + id + " already exists! Controller can't be added: " + controller);
        } else {
            this.controllers.put(Integer.valueOf(id), controller);
        }
    }

    public void connect() {
        connect("127.0.0.1", 9339);
    }

    public void connect(String ip, int port) {
        this.lastIpAddress = ip;
        this.lastTcpPort = port;
        if (this.useBlueBox) {
            this.bbClient.setPollSpeed(this.sfs.getConfig() != null ? this.sfs.getConfig().getBboxPollingRate() : 750);
            BBClient bBClient = this.bbClient;
            if (this.sfs.getConfig() != null) {
                port = this.sfs.getConfig().getHttpPort();
            }
            bBClient.connect(ip, port);
            this.connectionMode = ConnectionMode.HTTP;
            return;
        }
        this.socket.connect(ip, port);
        this.connectionMode = ConnectionMode.SOCKET;
    }

    public void send(IMessage message) throws SFSException {
        this.ioHandler.getCodec().onPacketWrite(message);
    }

    public void disconnect() {
        disconnect(null);
    }

    public void disconnect(String reason) {
        this.disconnectionReason = reason;
        if (this.useBlueBox) {
            this.bbClient.close(reason);
            return;
        }
        this.socket.disconnect(reason);
        if (this.udpManager != null) {
            this.udpManager.disconnect();
        }
    }

    public void stopReconnection() {
        this.attemptingReconnection = false;
        this.firstReconnAttempt = -1;
        if (this.socket.isConnected()) {
            this.socket.disconnect();
        }
    }

    private void executeDisconnection() {
        BitSwarmEvent event = new BitSwarmEvent(BitSwarmEvent.DISCONNECT);
        Map<String, Object> args = new HashMap();
        args.put("reason", this.disconnectionReason != null ? this.disconnectionReason : ClientDisconnectionReason.UNKNOWN);
        event.setArguments(args);
        dispatchEvent(event);
        this.disconnectionReason = null;
    }

    private void initControllers() {
        this.sysController = new SystemController(this);
        this.extController = new ExtensionController(this);
        addController(0, this.sysController);
        addController(1, this.extController);
    }

    private void onSocketConnect() {
        BitSwarmEvent evt = new BitSwarmEvent(BitSwarmEvent.CONNECT);
        Map<String, Object> args = new HashMap();
        args.put(Response.SUCCESS_KEY, Boolean.valueOf(true));
        args.put("isReconnection", Boolean.valueOf(this.attemptingReconnection));
        evt.setArguments(args);
        dispatchEvent(evt);
    }

    private synchronized void onSocketClose() {
        boolean isRegularDisconnection = true;
        synchronized (this) {
            if (this.sfs.getReconnectionSeconds() != 0) {
                isRegularDisconnection = false;
            }
            if (this.disconnectionReason != null || isRegularDisconnection) {
                this.firstReconnAttempt = -1;
                executeDisconnection();
            } else if (this.attemptingReconnection) {
                reconnect();
            } else {
                this.attemptingReconnection = true;
                this.firstReconnAttempt = System.currentTimeMillis();
                this.reconnCounter = 1;
                dispatchEvent(new BitSwarmEvent(BitSwarmEvent.RECONNECTION_TRY));
                reconnect();
            }
        }
    }

    private void reconnect() {
        if (this.attemptingReconnection) {
            long reconnectionSeconds = (long) (this.sfs.getReconnectionSeconds() * PlacePickerFragment.DEFAULT_RADIUS_IN_METERS);
            long timeLeft = (this.firstReconnAttempt + reconnectionSeconds) - System.currentTimeMillis();
            if (timeLeft > 0) {
                this.log.info("Reconnection attempt:" + this.reconnCounter + " - time left:" + (timeLeft / 1000), (Object) " sec.");
                try {
                    Thread.sleep((long) this.reconnectionDelayMillis);
                } catch (InterruptedException e) {
                }
                connect(this.lastIpAddress, this.lastTcpPort);
                this.reconnCounter++;
                return;
            }
            BitSwarmEvent evt = new BitSwarmEvent(BitSwarmEvent.DISCONNECT);
            Map<String, Object> args = new HashMap();
            args.put("reason", ClientDisconnectionReason.UNKNOWN);
            evt.setArguments(args);
            dispatchEvent(evt);
        }
    }

    void retryConnection(int timeout) {
        final Timer retryTimer = new Timer();
        retryTimer.schedule(new TimerTask() {
            public void run() {
                BitSwarmClient.this.socket.connect(BitSwarmClient.this.lastIpAddress, BitSwarmClient.this.lastTcpPort);
                retryTimer.cancel();
            }
        }, 100);
    }

    void dispatchEvent(BitSwarmEvent evt) {
        this.dispatcher.dispatchEvent(evt);
    }

    private void onSocketData(ByteArray data) throws SFSException {
        try {
            this.ioHandler.onDataRead(data);
        } catch (Exception e) {
            this.log.error("## SocketDataError: " + e.getMessage());
            BitSwarmEvent evt = new BitSwarmEvent(BitSwarmEvent.DATA_ERROR);
            Map<String, Object> parameters = new HashMap();
            parameters.put(ErrorReport.KEY_MESSAGE, e.toString());
            evt.setArguments(parameters);
            dispatchEvent(evt);
        }
    }

    private void onSocketError(String message) {
        if (this.attemptingReconnection) {
            reconnect();
            return;
        }
        Map<String, Object> data = new HashMap();
        data.put(ErrorReport.KEY_MESSAGE, message);
        BitSwarmEvent evt = new BitSwarmEvent(BitSwarmEvent.IO_ERROR);
        evt.setArguments(data);
        this.disconnectionReason = null;
        dispatchEvent(evt);
    }

    public void killConnection() {
        if (!this.useBlueBox) {
            this.socket.kill();
        }
    }

    public long getNextUdpPacketId() {
        return this.udpManager.getNextUdpPacketId();
    }

    public IUDPManager getUdpManager() {
        return this.udpManager;
    }

    public void setUdpManager(IUDPManager udpManager) {
        this.udpManager = udpManager;
    }

    public CryptoKey getCryptoKey() {
        return this.cryptoKey;
    }

    public void setCryptoKey(CryptoKey cryptoKey) {
        this.cryptoKey = cryptoKey;
    }

    private void onBBConnect(BaseEvent e) {
        this.bbConnected = true;
        Map<String, Object> args = new HashMap();
        args.put(Response.SUCCESS_KEY, Boolean.valueOf(true));
        args.put("isReconnection", Boolean.valueOf(false));
        BitSwarmEvent bevt = new BitSwarmEvent(BitSwarmEvent.CONNECT);
        bevt.setArguments(args);
        dispatchEvent(bevt);
    }

    private void onBBData(BaseEvent e) throws SFSException {
        this.ioHandler.onDataRead((ByteArray) ((BBEvent) e).getArguments().get("data"));
    }

    private void onBBDisconnect(BaseEvent e) {
        this.bbConnected = false;
        this.useBlueBox = false;
        if (this.disconnectionReason != null) {
            this.disconnectionReason = null;
        }
        dispatchEvent(new BitSwarmEvent(BitSwarmEvent.DISCONNECT, e.getArguments()));
    }

    private void onBBError(BaseEvent e) {
        BBEvent evt = (BBEvent) e;
        this.log.error("## BlueBox Error: " + ((String) evt.getArguments().get(ErrorReport.KEY_MESSAGE)));
        BitSwarmEvent bevt = new BitSwarmEvent(BitSwarmEvent.IO_ERROR);
        Map<String, Object> args = new HashMap();
        args.put(ErrorReport.KEY_MESSAGE, evt.getArguments().get(ErrorReport.KEY_MESSAGE));
        bevt.setArguments(args);
        dispatchEvent(bevt);
    }

    public ConnectionMode getConnectionMode() {
        return this.connectionMode;
    }

    public boolean getUseBlueBox() {
        return this.useBlueBox;
    }

    public boolean isDebug() {
        return this.sfs == null || this.sfs.isDebug();
    }

    public SmartFox getSfs() {
        return this.sfs;
    }

    public boolean isConnected() {
        if (this.useBlueBox) {
            return this.bbConnected;
        }
        if (this.socket == null) {
            return false;
        }
        return this.socket.isConnected();
    }

    public IOHandler getIoHandler() {
        return this.ioHandler;
    }

    public void setIoHandler(IOHandler ioHandler) {
        if (this.ioHandler != null) {
            throw new IllegalStateException("IOHandler is already set!");
        }
        this.ioHandler = ioHandler;
    }

    public int getCompressionThreshold() {
        return this.compressionThreshold;
    }

    public void setCompressionThreshold(int compressionThreshold) {
        if (compressionThreshold > 100) {
            this.compressionThreshold = compressionThreshold;
            return;
        }
        throw new IllegalArgumentException("Compression threshold cannot be < 100 bytes.");
    }

    public int getMaxMessageSize() {
        return this.maxMessageSize;
    }

    public void setMaxMessageSize(int maxMessageSize) {
        this.maxMessageSize = maxMessageSize;
    }

    public int getReconnectionDelayMillis() {
        return this.reconnectionDelayMillis;
    }

    public void setReconnectionDelayMillis(int reconnectionDelayMillis) {
        this.reconnectionDelayMillis = reconnectionDelayMillis;
    }

    public SystemController getSysController() {
        return this.sysController;
    }

    public ExtensionController getExtController() {
        return this.extController;
    }

    public ISocketLayer getSocket() {
        return this.socket;
    }

    public BBClient getHttpClient() {
        return this.bbClient;
    }

    public boolean isReconnecting() {
        return this.attemptingReconnection;
    }

    public void setReconnecting(boolean isReconnecting) {
        this.attemptingReconnection = isReconnecting;
    }

    public int getReconnectionSeconds() {
        if (this.reconnectionSeconds < 0) {
            return 0;
        }
        return this.reconnectionSeconds;
    }

    public void setReconnectionSeconds(int reconnectionSeconds) {
        this.reconnectionSeconds = reconnectionSeconds;
    }

    public boolean isAttemptingReconnection() {
        return this.attemptingReconnection;
    }

    public void setAttemptingReconnection(boolean attemptingReconnection) {
        this.attemptingReconnection = attemptingReconnection;
    }

    public EventDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public void addEventListener(String eventType, IEventListener listener) {
        this.dispatcher.addEventListener(eventType, listener);
    }
}
