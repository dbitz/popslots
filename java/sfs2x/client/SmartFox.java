package sfs2x.client;

import com.facebook.Response;
import com.helpshift.support.model.ErrorReport;
import com.smartfoxserver.v2.entities.data.SFSObject;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.bitswarm.BitSwarmEvent;
import sfs2x.client.bitswarm.IUDPManager;
import sfs2x.client.bitswarm.UDPManager;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.EventDispatcher;
import sfs2x.client.core.IDispatchable;
import sfs2x.client.core.IEventListener;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.core.SFSIOHandler;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;
import sfs2x.client.entities.managers.IBuddyManager;
import sfs2x.client.entities.managers.IRoomManager;
import sfs2x.client.entities.managers.IUserManager;
import sfs2x.client.entities.managers.SFSBuddyManager;
import sfs2x.client.entities.managers.SFSGlobalUserManager;
import sfs2x.client.entities.managers.SFSRoomManager;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.HandshakeRequest;
import sfs2x.client.requests.IRequest;
import sfs2x.client.requests.JoinRoomRequest;
import sfs2x.client.requests.ManualDisconnectionRequest;
import sfs2x.client.util.ClientDisconnectionReason;
import sfs2x.client.util.ConfigData;
import sfs2x.client.util.ConfigLoader;
import sfs2x.client.util.CryptoInitializer;
import sfs2x.client.util.LagMonitor;
import sfs2x.client.util.SFSErrorCodes;

public class SmartFox implements ISmartFox, IDispatchable {
    private static final int DEFAULT_HTTP_PORT = 8080;
    private static final int MAX_BB_CONNECT_ATTEMPTS = 3;
    private final char CLIENT_TYPE_SEPARATOR;
    private boolean autoConnectOnConfig;
    private int bbConnectionAttempt;
    private BitSwarmClient bitSwarm;
    private IBuddyManager buddyManager;
    private String clientDetails;
    private ConfigData config;
    private String currentZone;
    private boolean debug;
    private EventDispatcher dispatcher;
    private boolean inited;
    private boolean isConnecting;
    private boolean isJoining;
    private LagMonitor lagMonitor;
    private String lastIpAddress;
    private Room lastJoinedRoom;
    private Logger log;
    private int majVersion;
    private int minVersion;
    private User mySelf;
    private IRoomManager roomManager;
    private String sessionToken;
    private int subVersion;
    private boolean useBlueBox;
    private IUserManager userManager;

    public SmartFox(boolean debug) {
        this.CLIENT_TYPE_SEPARATOR = ':';
        this.majVersion = 1;
        this.minVersion = 6;
        this.subVersion = 0;
        this.clientDetails = "Android";
        this.useBlueBox = true;
        this.isJoining = false;
        this.inited = false;
        this.debug = false;
        this.isConnecting = false;
        this.autoConnectOnConfig = false;
        this.bbConnectionAttempt = 0;
        this.log = LoggerFactory.getLogger(getClass());
        this.debug = debug;
        initialize();
    }

    public boolean isConnecting() {
        return this.isConnecting;
    }

    public SmartFox() {
        this(false);
    }

    private void initialize() {
        if (!this.inited) {
            if (this.dispatcher == null) {
                this.dispatcher = new EventDispatcher(this);
            }
            this.bitSwarm = new BitSwarmClient(this);
            this.bitSwarm.setIoHandler(new SFSIOHandler(this.bitSwarm));
            this.bitSwarm.init();
            this.bitSwarm.addEventListener(BitSwarmEvent.CONNECT, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    SmartFox.this.onSocketConnect((BitSwarmEvent) evt);
                }
            });
            this.bitSwarm.addEventListener(BitSwarmEvent.DISCONNECT, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    SmartFox.this.onSocketClose((BitSwarmEvent) evt);
                }
            });
            this.bitSwarm.addEventListener(BitSwarmEvent.RECONNECTION_TRY, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    SmartFox.this.onSocketReconnectionTry((BitSwarmEvent) evt);
                }
            });
            this.bitSwarm.addEventListener(BitSwarmEvent.IO_ERROR, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    SmartFox.this.onSocketIOError((BitSwarmEvent) evt);
                }
            });
            this.bitSwarm.addEventListener(BitSwarmEvent.SECURITY_ERROR, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    SmartFox.this.onSocketSecurityError((BitSwarmEvent) evt);
                }
            });
            this.bitSwarm.addEventListener(BitSwarmEvent.DATA_ERROR, new IEventListener() {
                public void dispatch(BaseEvent evt) {
                    SmartFox.this.onSocketDataError((BitSwarmEvent) evt);
                }
            });
            this.inited = true;
            reset();
        }
    }

    private void reset() {
        this.bbConnectionAttempt = 0;
        this.userManager = new SFSGlobalUserManager(this);
        this.roomManager = new SFSRoomManager(this);
        this.buddyManager = new SFSBuddyManager(this);
        if (this.lagMonitor != null) {
            this.lagMonitor.stop();
        }
        this.isJoining = false;
        this.currentZone = null;
        this.lastJoinedRoom = null;
        this.sessionToken = null;
        this.mySelf = null;
    }

    public void setClientDetails(String platformId, String version) {
        if (isConnected()) {
            this.log.warn("setClientDetails() must be called before the connection is started");
            return;
        }
        this.clientDetails = platformId != null ? platformId.replace(':', ' ') : "";
        this.clientDetails += ':';
        this.clientDetails += (version != null ? version.replace(':', ' ') : "");
    }

    public void enableLagMonitor(boolean enabled, int interval, int queueSize) {
        if (this.mySelf == null) {
            this.log.warn("Lag Monitoring requires that you are logged in a Zone!");
        } else if (enabled) {
            this.lagMonitor = new LagMonitor(this, interval, queueSize);
            this.lagMonitor.start();
        } else if (this.lagMonitor != null) {
            this.lagMonitor.stop();
        }
    }

    public void enableLagMonitor(boolean enabled) {
        enableLagMonitor(enabled, 4, 10);
    }

    public void enableLagMonitor(boolean enabled, int interval) {
        enableLagMonitor(enabled, interval, 10);
    }

    public BitSwarmClient getSocketEngine() {
        return this.bitSwarm;
    }

    public LagMonitor getLagMonitor() {
        return this.lagMonitor;
    }

    public boolean isConnected() {
        if (this.bitSwarm != null) {
            return this.bitSwarm.isConnected();
        }
        return false;
    }

    public String getVersion() {
        return this.majVersion + "." + this.minVersion + "." + this.subVersion;
    }

    public ConfigData getConfig() {
        return this.config;
    }

    public boolean useBlueBox() {
        return this.useBlueBox;
    }

    public void setUseBlueBox(boolean useBlueBox) {
        this.useBlueBox = useBlueBox;
    }

    public String getConnectionMode() {
        return this.bitSwarm.getConnectionMode().name();
    }

    public int getCompressionThreshold() {
        return this.bitSwarm.getCompressionThreshold();
    }

    public int getMaxMessageSize() {
        return this.bitSwarm.getMaxMessageSize();
    }

    public String getHttpUploadURI() {
        if (this.config == null || this.mySelf == null) {
            return null;
        }
        return "http://" + this.config.getHost() + ":" + this.config.getHttpPort() + "/BlueBox/SFS2XFileUpload?sessHashId=" + this.sessionToken;
    }

    public Room getRoomById(int id) {
        return this.roomManager.getRoomById(id);
    }

    public Room getRoomByName(String name) {
        return this.roomManager.getRoomByName(name);
    }

    public List<Room> getRoomListFromGroup(String groupId) {
        return this.roomManager.getRoomListFromGroup(groupId);
    }

    public void connect(String host, int port) {
        if (isConnected()) {
            this.log.warn("Already Connected");
        } else if (this.isConnecting) {
            this.log.warn("A connection attempt is already running");
        } else {
            if (this.config != null) {
                if (host == null) {
                    host = this.config.getHost();
                }
                if (port == -1) {
                    port = this.config.getPort();
                }
            }
            if (host == null || host.length() == 0) {
                throw new IllegalArgumentException("Invalid connection host/address");
            } else if (port < 0 || port > 65535) {
                throw new IllegalArgumentException("Invalid connection port");
            } else {
                this.lastIpAddress = host;
                this.isConnecting = true;
                final String theHost = host;
                final int thePort = port;
                new Thread(new Runnable() {
                    public void run() {
                        SmartFox.this.bitSwarm.connect(theHost, thePort);
                    }
                }).start();
            }
        }
    }

    public void connect(String host) {
        connect(host, -1);
    }

    public void connect() {
        connect(null, -1);
    }

    public void connect(ConfigData configuration) {
        assignLocalConfig(configuration);
        connect();
    }

    public void disconnect() {
        if (isConnected()) {
            if (this.bitSwarm.getReconnectionSeconds() > 0) {
                send(new ManualDisconnectionRequest());
            }
            final Timer delayedAction = new Timer(true);
            delayedAction.schedule(new TimerTask() {
                public void run() {
                    SmartFox.this.handleClientDisconnection(ClientDisconnectionReason.MANUAL);
                    delayedAction.cancel();
                }
            }, 120);
            return;
        }
        this.log.info("You are not connected");
    }

    public void killConnection() {
        this.bitSwarm.killConnection();
    }

    public boolean isDebug() {
        return this.debug;
    }

    public void setDebug(boolean debug) {
        this.debug = debug;
    }

    public String getCurrentIp() {
        return this.bitSwarm.getConnectionIp();
    }

    public int getCurrentPort() {
        return this.bitSwarm.getConnectionPort();
    }

    public String getCurrentZone() {
        return this.currentZone;
    }

    public User getMySelf() {
        return this.mySelf;
    }

    public void setMySelf(User mySelf) {
        this.mySelf = mySelf;
    }

    public Logger getLogger() {
        return this.log;
    }

    public Room getLastJoinedRoom() {
        return this.lastJoinedRoom;
    }

    public void setLastJoinedRoom(Room lastJoinedRoom) {
        this.lastJoinedRoom = lastJoinedRoom;
    }

    public List<Room> getJoinedRooms() {
        return this.roomManager.getJoinedRooms();
    }

    public List<Room> getRoomList() {
        return this.roomManager.getRoomList();
    }

    public IRoomManager getRoomManager() {
        return this.roomManager;
    }

    public IUserManager getUserManager() {
        return this.userManager;
    }

    public IBuddyManager getBuddyManager() {
        return this.buddyManager;
    }

    public boolean isUdpInited() {
        if (this.bitSwarm.getUdpManager() != null) {
            return this.bitSwarm.getUdpManager().isInited();
        }
        return false;
    }

    public void initUdp() {
        initUdp(null, -1);
    }

    public void initUdp(String udpHost) {
        initUdp(udpHost, -1);
    }

    public void initCrypto() {
        CryptoInitializer cryptoInitializer = new CryptoInitializer(this);
    }

    public void initUdp(String udpHost, int udpPort) {
        if (isConnected()) {
            if (this.config != null) {
                if (udpHost == null) {
                    udpHost = this.config.getUdpHost();
                }
                if (udpPort == -1) {
                    udpPort = this.config.getUdpPort();
                }
            }
            if (udpHost == null || udpHost.length() == 0) {
                throw new IllegalArgumentException("Invalid UDP host/address");
            } else if (udpPort < 0 || udpPort > 65535) {
                throw new IllegalArgumentException("Invalid UDP port range");
            } else {
                if (this.bitSwarm.getUdpManager() == null || !this.bitSwarm.getUdpManager().isInited()) {
                    IUDPManager manager = new UDPManager();
                    manager.setSfs(this);
                    this.bitSwarm.setUdpManager(manager);
                }
                try {
                    this.bitSwarm.getUdpManager().initialize(udpHost, udpPort);
                    return;
                } catch (SFSException e) {
                    this.log.error("Exception initializing UDP: " + e.getLocalizedMessage());
                    return;
                }
            }
        }
        this.log.warn("Cannot initialize UDP protocol until the client is connected to SFS2X.");
    }

    public boolean isJoining() {
        return this.isJoining;
    }

    public void setJoining(boolean joining) {
        this.isJoining = joining;
    }

    public String getSessionToken() {
        return this.sessionToken;
    }

    public EventDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public int getReconnectionSeconds() {
        return this.bitSwarm.getReconnectionSeconds();
    }

    public void setReconnectionSeconds(int seconds) {
        this.bitSwarm.setReconnectionSeconds(seconds);
    }

    public void send(IRequest request) {
        if (isConnected()) {
            try {
                if (request instanceof JoinRoomRequest) {
                    if (!this.isJoining) {
                        this.isJoining = true;
                    } else {
                        return;
                    }
                }
                request.validate(this);
                request.execute(this);
                this.bitSwarm.send(request.getMessage());
                return;
            } catch (SFSValidationException problem) {
                String errMsg = problem.getMessage();
                for (String errorItem : problem.getErrors()) {
                    errMsg = new StringBuilder(String.valueOf(errMsg)).append("\t").append(errorItem).append("\n").toString();
                }
                this.log.warn(errMsg);
                return;
            } catch (SFSException problem2) {
                this.log.warn(problem2.getMessage());
                return;
            }
        }
        this.log.warn("You are not connected. Request cannot be sent: " + request);
    }

    public void loadConfig(String filePath, boolean connectOnSuccess) {
        ConfigLoader configLoader = new ConfigLoader();
        configLoader.getDispatcher().addEventListener(SFSEvent.CONFIG_LOAD_SUCCESS, new IEventListener() {
            public void dispatch(BaseEvent evt) {
                SmartFox.this.onConfigLoadSuccess(evt);
            }
        });
        configLoader.getDispatcher().addEventListener(SFSEvent.CONFIG_LOAD_FAILURE, new IEventListener() {
            public void dispatch(BaseEvent evt) {
                SmartFox.this.onConfigLoadFailure(evt);
            }
        });
        this.autoConnectOnConfig = connectOnSuccess;
        configLoader.loadConfig(filePath);
    }

    public void loadConfig(String filePath) {
        loadConfig(filePath, true);
    }

    public void loadConfig(boolean connectOnSuccess) {
        loadConfig("sfs-config.xml", connectOnSuccess);
    }

    public void loadConfig() {
        loadConfig("sfs-config.xml", true);
    }

    public void addJoinedRoom(Room room) throws SFSException {
        if (this.roomManager.containsRoom(room.getId())) {
            throw new SFSException("Unexpected: joined room already exists for this User: " + this.mySelf.getName() + ", Room: " + room);
        }
        this.roomManager.addRoom(room, true);
        this.lastJoinedRoom = room;
    }

    public void removeJoinedRoom(Room room) {
        this.roomManager.removeRoom(room);
        if (getJoinedRooms().size() > 0) {
            this.lastJoinedRoom = (Room) getJoinedRooms().get(getJoinedRooms().size() - 1);
        }
    }

    private void onSocketConnect(BitSwarmEvent evt) {
        if (((Boolean) evt.getArguments().get(Response.SUCCESS_KEY)).booleanValue()) {
            sendHandshakeRequest(((Boolean) evt.getArguments().get("isReconnection")).booleanValue());
            return;
        }
        this.log.warn("Connection attempt failed");
        handleConnectionProblem(evt);
    }

    private void onSocketClose(BitSwarmEvent evt) {
        reset();
        Map<String, Object> data = new HashMap();
        data.put("reason", evt.getArguments().get("reason"));
        dispatchEvent(new SFSEvent(SFSEvent.CONNECTION_LOST, data));
    }

    private void onSocketReconnectionTry(BitSwarmEvent evt) {
        dispatchEvent(new SFSEvent(SFSEvent.CONNECTION_RETRY));
    }

    private void onSocketDataError(BitSwarmEvent e) {
        Map<String, Object> data = new HashMap();
        data.put("errorMessage", e.getArguments().get(ErrorReport.KEY_MESSAGE));
        dispatchEvent(new SFSEvent(SFSEvent.SOCKET_ERROR, data));
    }

    private void onSocketIOError(BitSwarmEvent evt) {
        if (this.isConnecting) {
            handleConnectionProblem(evt);
        }
    }

    private void onSocketSecurityError(BitSwarmEvent evt) {
        if (this.isConnecting) {
            handleConnectionProblem(evt);
        }
    }

    private void onConfigLoadSuccess(BaseEvent evt) {
        ConfigData cfgData = (ConfigData) evt.getArguments().get("cfg");
        ((ConfigLoader) evt.getTarget()).getDispatcher().removeAll();
        assignLocalConfig(cfgData);
        Map<String, Object> data = new HashMap();
        data.put("config", cfgData);
        dispatchEvent(new SFSEvent(SFSEvent.CONFIG_LOAD_SUCCESS, data));
        if (this.autoConnectOnConfig) {
            connect(this.config.getHost(), this.config.getPort());
        }
    }

    private void assignLocalConfig(ConfigData cfgData) {
        if (cfgData.getHost() == null || cfgData.getHost().length() == 0) {
            throw new IllegalArgumentException("Invalid Host/IpAddress provided in the configuration");
        } else if (cfgData.getPort() < 0 || cfgData.getPort() > 65535) {
            throw new IllegalArgumentException("Invalid TCP port provided in the configuration");
        } else if (cfgData.getZone() == null || cfgData.getZone().length() == 0) {
            throw new IllegalArgumentException("Invalid Zone name provided in the configuration");
        } else {
            this.config = cfgData;
            this.debug = cfgData.isDebug();
            this.useBlueBox = cfgData.isUseBBox();
        }
    }

    private void onConfigLoadFailure(BaseEvent evt) {
        this.log.error("Failed to load config: " + ((String) evt.getArguments().get(ErrorReport.KEY_MESSAGE)));
        ((ConfigLoader) evt.getTarget()).getDispatcher().removeAll();
        dispatchEvent(new SFSEvent(SFSEvent.CONFIG_LOAD_FAILURE));
    }

    public void handleHandShake(BaseEvent evt) {
        SFSObject obj = (SFSObject) evt.getArguments().get(ErrorReport.KEY_MESSAGE);
        if (obj.containsKey(BaseRequest.KEY_ERROR_CODE)) {
            short errorCode = obj.getShort(BaseRequest.KEY_ERROR_CODE).shortValue();
            String errorMsg = SFSErrorCodes.getErrorMessage(errorCode, obj.getUtfStringArray(BaseRequest.KEY_ERROR_PARAMS).toArray());
            Map<String, Object> data = new HashMap();
            data.put(Response.SUCCESS_KEY, Boolean.valueOf(false));
            data.put("errorMessage", errorMsg);
            data.put("errorCode", Short.valueOf(errorCode));
            dispatchEvent(new SFSEvent(SFSEvent.CONNECTION, data));
            return;
        }
        this.sessionToken = obj.getUtfString(HandshakeRequest.KEY_SESSION_TOKEN);
        this.bitSwarm.setCompressionThreshold(obj.getInt(HandshakeRequest.KEY_COMPRESSION_THRESHOLD).intValue());
        this.bitSwarm.setMaxMessageSize(obj.getInt(HandshakeRequest.KEY_MAX_MESSAGE_SIZE).intValue());
        if (this.debug) {
            this.log.info(String.format("Handshake response: tk => %s, ct => %d", new Object[]{this.sessionToken, Integer.valueOf(this.bitSwarm.getCompressionThreshold())}));
        }
        if (this.bitSwarm.isReconnecting()) {
            this.bitSwarm.setReconnecting(false);
            dispatchEvent(new SFSEvent(SFSEvent.CONNECTION_RESUME));
            return;
        }
        this.isConnecting = false;
        data = new HashMap();
        data.put(Response.SUCCESS_KEY, Boolean.valueOf(true));
        dispatchEvent(new SFSEvent(SFSEvent.CONNECTION, data));
    }

    public void handleLogin(BaseEvent evt) {
        this.currentZone = (String) evt.getArguments().get("zone");
    }

    public void handleClientDisconnection(String reason) {
        this.bitSwarm.setReconnectionSeconds(0);
        this.bitSwarm.disconnect(reason);
        reset();
    }

    public void handleLogout() {
        if (this.lagMonitor != null && this.lagMonitor.isRunning().booleanValue()) {
            this.lagMonitor.stop();
        }
        this.userManager = new SFSGlobalUserManager(this);
        this.roomManager = new SFSRoomManager(this);
        this.isJoining = false;
        this.lastJoinedRoom = null;
        this.currentZone = null;
        this.mySelf = null;
    }

    private void handleConnectionProblem(BaseEvent e) {
        if (isConnecting() && this.useBlueBox && this.bbConnectionAttempt < MAX_BB_CONNECT_ATTEMPTS) {
            try {
                this.bitSwarm.forceBlueBox(true);
                this.bbConnectionAttempt++;
                this.bitSwarm.connect(this.lastIpAddress, this.config != null ? this.config.getHttpPort() : DEFAULT_HTTP_PORT);
                dispatchEvent(new SFSEvent(SFSEvent.CONNECTION_ATTEMPT_HTTP, new HashMap()));
                return;
            } catch (SFSException e1) {
                this.log.error("Error using bluebox: " + e1.getLocalizedMessage());
                e1.printStackTrace();
                return;
            }
        }
        try {
            this.bitSwarm.forceBlueBox(false);
            this.bbConnectionAttempt = 0;
            BitSwarmEvent evt = (BitSwarmEvent) e;
            Map<String, Object> data = new HashMap();
            data.put(Response.SUCCESS_KEY, Boolean.valueOf(false));
            data.put("errorMessage", evt.getArguments().get(ErrorReport.KEY_MESSAGE));
            dispatchEvent(new SFSEvent(SFSEvent.CONNECTION, data));
            this.isConnecting = false;
        } catch (SFSException e12) {
            this.log.error("Error using bluebox: " + e12.getLocalizedMessage());
            e12.printStackTrace();
        }
    }

    private void sendHandshakeRequest(boolean isReconnection) {
        send(new HandshakeRequest(getVersion(), isReconnection ? this.sessionToken : null, this.clientDetails));
    }

    public void dispatchEvent(BaseEvent evt) {
        this.dispatcher.dispatchEvent(evt);
    }

    public void addEventListener(String eventType, IEventListener listener) {
        this.dispatcher.addEventListener(eventType, listener);
    }

    public void removeEventListener(String eventType, IEventListener listener) {
        this.dispatcher.removeEventListener(eventType, listener);
    }

    public void removeAllEventListeners() {
        this.dispatcher.removeAll();
    }
}
