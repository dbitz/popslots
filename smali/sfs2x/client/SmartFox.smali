.class public Lsfs2x/client/SmartFox;
.super Ljava/lang/Object;
.source "SmartFox.java"

# interfaces
.implements Lsfs2x/client/core/IDispatchable;
.implements Lsfs2x/client/ISmartFox;


# static fields
.field private static final DEFAULT_HTTP_PORT:I = 0x1f90

.field private static final MAX_BB_CONNECT_ATTEMPTS:I = 0x3


# instance fields
.field private final CLIENT_TYPE_SEPARATOR:C

.field private autoConnectOnConfig:Z

.field private bbConnectionAttempt:I

.field private bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private buddyManager:Lsfs2x/client/entities/managers/IBuddyManager;

.field private clientDetails:Ljava/lang/String;

.field private config:Lsfs2x/client/util/ConfigData;

.field private currentZone:Ljava/lang/String;

.field private debug:Z

.field private dispatcher:Lsfs2x/client/core/EventDispatcher;

.field private inited:Z

.field private isConnecting:Z

.field private isJoining:Z

.field private lagMonitor:Lsfs2x/client/util/LagMonitor;

.field private lastIpAddress:Ljava/lang/String;

.field private lastJoinedRoom:Lsfs2x/client/entities/Room;

.field private log:Lorg/slf4j/Logger;

.field private majVersion:I

.field private minVersion:I

.field private mySelf:Lsfs2x/client/entities/User;

.field private roomManager:Lsfs2x/client/entities/managers/IRoomManager;

.field private sessionToken:Ljava/lang/String;

.field private subVersion:I

.field private useBlueBox:Z

.field private userManager:Lsfs2x/client/entities/managers/IUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsfs2x/client/SmartFox;-><init>(Z)V

    .line 177
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "debug"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x3a

    iput-char v0, p0, Lsfs2x/client/SmartFox;->CLIENT_TYPE_SEPARATOR:C

    .line 83
    iput v2, p0, Lsfs2x/client/SmartFox;->majVersion:I

    .line 84
    const/4 v0, 0x6

    iput v0, p0, Lsfs2x/client/SmartFox;->minVersion:I

    .line 85
    iput v1, p0, Lsfs2x/client/SmartFox;->subVersion:I

    .line 94
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lsfs2x/client/SmartFox;->useBlueBox:Z

    .line 100
    iput-boolean v1, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    .line 115
    iput-boolean v1, p0, Lsfs2x/client/SmartFox;->inited:Z

    .line 118
    iput-boolean v1, p0, Lsfs2x/client/SmartFox;->debug:Z

    .line 121
    iput-boolean v1, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    .line 139
    iput-boolean v1, p0, Lsfs2x/client/SmartFox;->autoConnectOnConfig:Z

    .line 145
    iput v1, p0, Lsfs2x/client/SmartFox;->bbConnectionAttempt:I

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    .line 162
    iput-boolean p1, p0, Lsfs2x/client/SmartFox;->debug:Z

    .line 164
    invoke-direct {p0}, Lsfs2x/client/SmartFox;->initialize()V

    .line 165
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onSocketConnect(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 0

    .prologue
    .line 1244
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onSocketClose(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    return-void
.end method

.method static synthetic access$2(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onSocketReconnectionTry(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    return-void
.end method

.method static synthetic access$3(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 0

    .prologue
    .line 1263
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onSocketIOError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    return-void
.end method

.method static synthetic access$4(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 0

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onSocketSecurityError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    return-void
.end method

.method static synthetic access$5(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onSocketDataError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    return-void
.end method

.method static synthetic access$6(Lsfs2x/client/SmartFox;)Lsfs2x/client/bitswarm/BitSwarmClient;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    return-object v0
.end method

.method static synthetic access$7(Lsfs2x/client/SmartFox;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onConfigLoadSuccess(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method static synthetic access$8(Lsfs2x/client/SmartFox;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->onConfigLoadFailure(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method private assignLocalConfig(Lsfs2x/client/util/ConfigData;)V
    .locals 2
    .param p1, "cfgData"    # Lsfs2x/client/util/ConfigData;

    .prologue
    .line 1301
    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Host/IpAddress provided in the configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_1
    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->getPort()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->getPort()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_3

    .line 1305
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TCP port provided in the configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1307
    :cond_3
    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->getZone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->getZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1308
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Zone name provided in the configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_5
    iput-object p1, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    .line 1312
    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Lsfs2x/client/SmartFox;->debug:Z

    .line 1313
    invoke-virtual {p1}, Lsfs2x/client/util/ConfigData;->isUseBBox()Z

    move-result v0

    iput-boolean v0, p0, Lsfs2x/client/SmartFox;->useBlueBox:Z

    .line 1314
    return-void
.end method

.method private handleConnectionProblem(Lsfs2x/client/core/BaseEvent;)V
    .locals 8
    .param p1, "e"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    const/4 v7, 0x0

    .line 1429
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lsfs2x/client/SmartFox;->useBlueBox:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lsfs2x/client/SmartFox;->bbConnectionAttempt:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1431
    :try_start_0
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->forceBlueBox(Z)V
    :try_end_0
    .catch Lcom/smartfoxserver/v2/exceptions/SFSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    iget v4, p0, Lsfs2x/client/SmartFox;->bbConnectionAttempt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lsfs2x/client/SmartFox;->bbConnectionAttempt:I

    .line 1440
    iget-object v4, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v4}, Lsfs2x/client/util/ConfigData;->getHttpPort()I

    move-result v0

    .line 1441
    .local v0, "bbPort":I
    :goto_0
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    iget-object v5, p0, Lsfs2x/client/SmartFox;->lastIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->connect(Ljava/lang/String;I)V

    .line 1443
    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "connectionAttemptHttp"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v4, v5, v6}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v4}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1464
    .end local v0    # "bbPort":I
    :goto_1
    return-void

    .line 1433
    :catch_0
    move-exception v2

    .line 1434
    .local v2, "e1":Lcom/smartfoxserver/v2/exceptions/SFSException;
    iget-object v4, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error using bluebox: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/exceptions/SFSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/exceptions/SFSException;->printStackTrace()V

    goto :goto_1

    .line 1440
    .end local v2    # "e1":Lcom/smartfoxserver/v2/exceptions/SFSException;
    :cond_0
    const/16 v0, 0x1f90

    goto :goto_0

    .line 1448
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->forceBlueBox(Z)V
    :try_end_1
    .catch Lcom/smartfoxserver/v2/exceptions/SFSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1456
    iput v7, p0, Lsfs2x/client/SmartFox;->bbConnectionAttempt:I

    move-object v3, p1

    .line 1457
    check-cast v3, Lsfs2x/client/bitswarm/BitSwarmEvent;

    .line 1458
    .local v3, "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1459
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "success"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const-string/jumbo v4, "errorMessage"

    invoke-virtual {v3}, Lsfs2x/client/bitswarm/BitSwarmEvent;->getArguments()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "connection"

    invoke-direct {v4, v5, v1}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v4}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1462
    iput-boolean v7, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    goto :goto_1

    .line 1450
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    :catch_1
    move-exception v2

    .line 1451
    .restart local v2    # "e1":Lcom/smartfoxserver/v2/exceptions/SFSException;
    iget-object v4, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error using bluebox: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/exceptions/SFSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/exceptions/SFSException;->printStackTrace()V

    goto :goto_1
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->inited:Z

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lsfs2x/client/core/EventDispatcher;

    invoke-direct {v0, p0}, Lsfs2x/client/core/EventDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    .line 189
    :cond_1
    new-instance v0, Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-direct {v0, p0}, Lsfs2x/client/bitswarm/BitSwarmClient;-><init>(Lsfs2x/client/SmartFox;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 190
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    new-instance v1, Lsfs2x/client/core/SFSIOHandler;

    iget-object v2, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-direct {v1, v2}, Lsfs2x/client/core/SFSIOHandler;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-virtual {v0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->setIoHandler(Lsfs2x/client/bitswarm/IOHandler;)V

    .line 192
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->init()V

    .line 194
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v1, "connect"

    new-instance v2, Lsfs2x/client/SmartFox$1;

    invoke-direct {v2, p0}, Lsfs2x/client/SmartFox$1;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 199
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v1, "disconnect"

    new-instance v2, Lsfs2x/client/SmartFox$2;

    invoke-direct {v2, p0}, Lsfs2x/client/SmartFox$2;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 204
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v1, "reconnectionTry"

    new-instance v2, Lsfs2x/client/SmartFox$3;

    invoke-direct {v2, p0}, Lsfs2x/client/SmartFox$3;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 209
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v1, "ioError"

    new-instance v2, Lsfs2x/client/SmartFox$4;

    invoke-direct {v2, p0}, Lsfs2x/client/SmartFox$4;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 214
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v1, "securityError"

    new-instance v2, Lsfs2x/client/SmartFox$5;

    invoke-direct {v2, p0}, Lsfs2x/client/SmartFox$5;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 219
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v1, "dataError"

    new-instance v2, Lsfs2x/client/SmartFox$6;

    invoke-direct {v2, p0}, Lsfs2x/client/SmartFox$6;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/SmartFox;->inited:Z

    .line 226
    invoke-direct {p0}, Lsfs2x/client/SmartFox;->reset()V

    goto :goto_0
.end method

.method private onConfigLoadFailure(Lsfs2x/client/core/BaseEvent;)V
    .locals 6
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 1317
    iget-object v3, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to load config: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "message"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/util/ConfigLoader;

    .line 1322
    .local v0, "cfgLoader":Lsfs2x/client/util/ConfigLoader;
    invoke-virtual {v0}, Lsfs2x/client/util/ConfigLoader;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/core/EventDispatcher;->removeAll()V

    .line 1325
    new-instance v1, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v2, "configLoadFailure"

    invoke-direct {v1, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v1, "sfsEvt":Lsfs2x/client/core/BaseEvent;
    invoke-virtual {p0, v1}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1327
    return-void
.end method

.method private onConfigLoadSuccess(Lsfs2x/client/core/BaseEvent;)V
    .locals 6
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 1277
    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/util/ConfigLoader;

    .line 1278
    .local v1, "cfgLoader":Lsfs2x/client/util/ConfigLoader;
    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "cfg"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/util/ConfigData;

    .line 1281
    .local v0, "cfgData":Lsfs2x/client/util/ConfigData;
    invoke-virtual {v1}, Lsfs2x/client/util/ConfigLoader;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lsfs2x/client/core/EventDispatcher;->removeAll()V

    .line 1284
    invoke-direct {p0, v0}, Lsfs2x/client/SmartFox;->assignLocalConfig(Lsfs2x/client/util/ConfigData;)V

    .line 1287
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1288
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "config"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v3, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v4, "configLoadSuccess"

    invoke-direct {v3, v4, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1290
    .local v3, "sfsEvt":Lsfs2x/client/core/BaseEvent;
    invoke-virtual {p0, v3}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1293
    iget-boolean v4, p0, Lsfs2x/client/SmartFox;->autoConnectOnConfig:Z

    if-eqz v4, :cond_0

    .line 1294
    iget-object v4, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v4}, Lsfs2x/client/util/ConfigData;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v5}, Lsfs2x/client/util/ConfigData;->getPort()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lsfs2x/client/SmartFox;->connect(Ljava/lang/String;I)V

    .line 1296
    :cond_0
    return-void
.end method

.method private onSocketClose(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 4
    .param p1, "evt"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 1246
    invoke-direct {p0}, Lsfs2x/client/SmartFox;->reset()V

    .line 1248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1249
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "reason"

    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmEvent;->getArguments()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "reason"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    new-instance v1, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v2, "connectionLost"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1251
    return-void
.end method

.method private onSocketConnect(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 2
    .param p1, "evt"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 1233
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "success"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "isReconnection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lsfs2x/client/SmartFox;->sendHandshakeRequest(Z)V

    .line 1242
    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v1, "Connection attempt failed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->handleConnectionProblem(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method

.method private onSocketDataError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 4
    .param p1, "e"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 1258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1259
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmEvent;->getArguments()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    new-instance v1, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v2, "socketError"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1261
    return-void
.end method

.method private onSocketIOError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 1264
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    if-eqz v0, :cond_0

    .line 1265
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->handleConnectionProblem(Lsfs2x/client/core/BaseEvent;)V

    .line 1267
    :cond_0
    return-void
.end method

.method private onSocketReconnectionTry(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 2
    .param p1, "evt"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 1254
    new-instance v0, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v1, "connectionRetry"

    invoke-direct {v0, v1}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1255
    return-void
.end method

.method private onSocketSecurityError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 1270
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    if-eqz v0, :cond_0

    .line 1271
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->handleConnectionProblem(Lsfs2x/client/core/BaseEvent;)V

    .line 1273
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    iput v2, p0, Lsfs2x/client/SmartFox;->bbConnectionAttempt:I

    .line 232
    new-instance v0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;

    invoke-direct {v0, p0}, Lsfs2x/client/entities/managers/SFSGlobalUserManager;-><init>(Lsfs2x/client/ISmartFox;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    .line 233
    new-instance v0, Lsfs2x/client/entities/managers/SFSRoomManager;

    invoke-direct {v0, p0}, Lsfs2x/client/entities/managers/SFSRoomManager;-><init>(Lsfs2x/client/ISmartFox;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    .line 234
    new-instance v0, Lsfs2x/client/entities/managers/SFSBuddyManager;

    invoke-direct {v0, p0}, Lsfs2x/client/entities/managers/SFSBuddyManager;-><init>(Lsfs2x/client/ISmartFox;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->buddyManager:Lsfs2x/client/entities/managers/IBuddyManager;

    .line 237
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    invoke-virtual {v0}, Lsfs2x/client/util/LagMonitor;->stop()V

    .line 240
    :cond_0
    iput-boolean v2, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    .line 241
    iput-object v1, p0, Lsfs2x/client/SmartFox;->currentZone:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lsfs2x/client/SmartFox;->lastJoinedRoom:Lsfs2x/client/entities/Room;

    .line 243
    iput-object v1, p0, Lsfs2x/client/SmartFox;->sessionToken:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    .line 245
    return-void
.end method

.method private sendHandshakeRequest(Z)V
    .locals 4
    .param p1, "isReconnection"    # Z

    .prologue
    .line 1468
    new-instance v0, Lsfs2x/client/requests/HandshakeRequest;

    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lsfs2x/client/SmartFox;->sessionToken:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lsfs2x/client/requests/HandshakeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    .local v0, "req":Lsfs2x/client/requests/IRequest;
    invoke-virtual {p0, v0}, Lsfs2x/client/SmartFox;->send(Lsfs2x/client/requests/IRequest;)V

    .line 1470
    return-void

    .line 1468
    .end local v0    # "req":Lsfs2x/client/requests/IRequest;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 1483
    iget-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 1484
    return-void
.end method

.method public addJoinedRoom(Lsfs2x/client/entities/Room;)V
    .locals 3
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lsfs2x/client/entities/managers/IRoomManager;->containsRoom(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lsfs2x/client/entities/managers/IRoomManager;->addRoom(Lsfs2x/client/entities/Room;Z)V

    .line 1204
    iput-object p1, p0, Lsfs2x/client/SmartFox;->lastJoinedRoom:Lsfs2x/client/entities/Room;

    .line 1210
    return-void

    .line 1208
    :cond_0
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected: joined room already exists for this User: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    invoke-interface {v2}, Lsfs2x/client/entities/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Room: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 590
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lsfs2x/client/SmartFox;->connect(Ljava/lang/String;I)V

    .line 591
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 582
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/SmartFox;->connect(Ljava/lang/String;I)V

    .line 583
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "Already Connected"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-boolean v2, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    if-eqz v2, :cond_1

    .line 533
    iget-object v2, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "A connection attempt is already running"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v2, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    if-eqz v2, :cond_3

    .line 540
    if-nez p1, :cond_2

    .line 541
    iget-object v2, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v2}, Lsfs2x/client/util/ConfigData;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 543
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 544
    iget-object v2, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v2}, Lsfs2x/client/util/ConfigData;->getPort()I

    move-result p2

    .line 548
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 549
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid connection host/address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_5
    if-ltz p2, :cond_6

    const v2, 0xffff

    if-le p2, v2, :cond_7

    .line 552
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid connection port"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_7
    iput-object p1, p0, Lsfs2x/client/SmartFox;->lastIpAddress:Ljava/lang/String;

    .line 556
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    .line 558
    move-object v0, p1

    .line 559
    .local v0, "theHost":Ljava/lang/String;
    move v1, p2

    .line 566
    .local v1, "thePort":I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lsfs2x/client/SmartFox$7;

    invoke-direct {v3, p0, v0, v1}, Lsfs2x/client/SmartFox$7;-><init>(Lsfs2x/client/SmartFox;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 573
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public connect(Lsfs2x/client/util/ConfigData;)V
    .locals 0
    .param p1, "configuration"    # Lsfs2x/client/util/ConfigData;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lsfs2x/client/SmartFox;->assignLocalConfig(Lsfs2x/client/util/ConfigData;)V

    .line 603
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->connect()V

    .line 604
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 614
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getReconnectionSeconds()I

    move-result v1

    if-lez v1, :cond_0

    .line 618
    new-instance v1, Lsfs2x/client/requests/ManualDisconnectionRequest;

    invoke-direct {v1}, Lsfs2x/client/requests/ManualDisconnectionRequest;-><init>()V

    invoke-virtual {p0, v1}, Lsfs2x/client/SmartFox;->send(Lsfs2x/client/requests/IRequest;)V

    .line 621
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 624
    .local v0, "delayedAction":Ljava/util/Timer;
    new-instance v1, Lsfs2x/client/SmartFox$8;

    invoke-direct {v1, p0, v0}, Lsfs2x/client/SmartFox$8;-><init>(Lsfs2x/client/SmartFox;Ljava/util/Timer;)V

    .line 633
    const-wide/16 v2, 0x78

    .line 622
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 641
    .end local v0    # "delayedAction":Ljava/util/Timer;
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v1, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "You are not connected"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 1476
    iget-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1477
    return-void
.end method

.method public enableLagMonitor(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 306
    const/4 v0, 0x4

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lsfs2x/client/SmartFox;->enableLagMonitor(ZII)V

    .line 307
    return-void
.end method

.method public enableLagMonitor(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "interval"    # I

    .prologue
    .line 313
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lsfs2x/client/SmartFox;->enableLagMonitor(ZII)V

    .line 314
    return-void
.end method

.method public enableLagMonitor(ZII)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "interval"    # I
    .param p3, "queueSize"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v1, "Lag Monitoring requires that you are logged in a Zone!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-eqz p1, :cond_2

    .line 292
    new-instance v0, Lsfs2x/client/util/LagMonitor;

    invoke-direct {v0, p0, p2, p3}, Lsfs2x/client/util/LagMonitor;-><init>(Lsfs2x/client/SmartFox;II)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    .line 293
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    invoke-virtual {v0}, Lsfs2x/client/util/LagMonitor;->start()V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    invoke-virtual {v0}, Lsfs2x/client/util/LagMonitor;->stop()V

    goto :goto_0
.end method

.method public getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lsfs2x/client/SmartFox;->buddyManager:Lsfs2x/client/entities/managers/IBuddyManager;

    return-object v0
.end method

.method public getCompressionThreshold()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getCompressionThreshold()I

    move-result v0

    return v0
.end method

.method public getConfig()Lsfs2x/client/util/ConfigData;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    return-object v0
.end method

.method public getConnectionMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getConnectionMode()Lsfs2x/client/bitswarm/ConnectionMode;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/ConnectionMode;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getConnectionIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPort()I
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getConnectionPort()I

    move-result v0

    return v0
.end method

.method public getCurrentZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lsfs2x/client/SmartFox;->currentZone:Ljava/lang/String;

    return-object v0
.end method

.method public getDispatcher()Lsfs2x/client/core/EventDispatcher;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    return-object v0
.end method

.method public getHttpUploadURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    if-nez v0, :cond_1

    .line 433
    :cond_0
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v1}, Lsfs2x/client/util/ConfigData;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v1}, Lsfs2x/client/util/ConfigData;->getHttpPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/BlueBox/SFS2XFileUpload?sessHashId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/SmartFox;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getJoinedRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {v0}, Lsfs2x/client/entities/managers/IRoomManager;->getJoinedRooms()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLagMonitor()Lsfs2x/client/util/LagMonitor;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    return-object v0
.end method

.method public getLastJoinedRoom()Lsfs2x/client/entities/Room;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lastJoinedRoom:Lsfs2x/client/entities/Room;

    return-object v0
.end method

.method public getLogger()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getMaxMessageSize()I

    move-result v0

    return v0
.end method

.method public getMySelf()Lsfs2x/client/entities/User;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    return-object v0
.end method

.method public getReconnectionSeconds()I
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getReconnectionSeconds()I

    move-result v0

    return v0
.end method

.method public getRoomById(I)Lsfs2x/client/entities/Room;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v0

    return-object v0
.end method

.method public getRoomByName(Ljava/lang/String;)Lsfs2x/client/entities/Room;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomByName(Ljava/lang/String;)Lsfs2x/client/entities/Room;

    move-result-object v0

    return-object v0
.end method

.method public getRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {v0}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lsfs2x/client/SmartFox;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    return-object v0
.end method

.method public getUserManager()Lsfs2x/client/entities/managers/IUserManager;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lsfs2x/client/SmartFox;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lsfs2x/client/SmartFox;->majVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/SmartFox;->minVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/SmartFox;->subVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClientDisconnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1399
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->setReconnectionSeconds(I)V

    .line 1400
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnect(Ljava/lang/String;)V

    .line 1402
    invoke-direct {p0}, Lsfs2x/client/SmartFox;->reset()V

    .line 1403
    return-void
.end method

.method public handleHandShake(Lsfs2x/client/core/BaseEvent;)V
    .locals 10
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1338
    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "message"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    .line 1341
    .local v3, "obj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v4, "ec"

    invoke-interface {v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1343
    const-string/jumbo v4, "tk"

    invoke-interface {v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsfs2x/client/SmartFox;->sessionToken:Ljava/lang/String;

    .line 1344
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v5, "ct"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->setCompressionThreshold(I)V

    .line 1345
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    const-string/jumbo v5, "ms"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->setMaxMessageSize(I)V

    .line 1347
    iget-boolean v4, p0, Lsfs2x/client/SmartFox;->debug:Z

    if-eqz v4, :cond_0

    .line 1348
    iget-object v4, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v5, "Handshake response: tk => %s, ct => %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lsfs2x/client/SmartFox;->sessionToken:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v7}, Lsfs2x/client/bitswarm/BitSwarmClient;->getCompressionThreshold()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1350
    :cond_0
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/BitSwarmClient;->isReconnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1352
    iget-object v4, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v4, v8}, Lsfs2x/client/bitswarm/BitSwarmClient;->setReconnecting(Z)V

    .line 1360
    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "connectionResume"

    invoke-direct {v4, v5}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 1384
    :goto_0
    return-void

    .line 1367
    :cond_1
    iput-boolean v8, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    .line 1368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1369
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "success"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "connection"

    invoke-direct {v4, v5, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v4}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0

    .line 1376
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string/jumbo v4, "ec"

    invoke-interface {v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 1377
    .local v1, "errorCode":S
    const-string/jumbo v4, "ep"

    invoke-interface {v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1379
    .restart local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "success"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    const-string/jumbo v4, "errorMessage"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string/jumbo v4, "errorCode"

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "connection"

    invoke-direct {v4, v5, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v4}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method

.method public handleLogin(Lsfs2x/client/core/BaseEvent;)V
    .locals 2
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 1390
    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "zone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsfs2x/client/SmartFox;->currentZone:Ljava/lang/String;

    .line 1391
    return-void
.end method

.method public handleLogout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1410
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    invoke-virtual {v0}, Lsfs2x/client/util/LagMonitor;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lsfs2x/client/SmartFox;->lagMonitor:Lsfs2x/client/util/LagMonitor;

    invoke-virtual {v0}, Lsfs2x/client/util/LagMonitor;->stop()V

    .line 1413
    :cond_0
    new-instance v0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;

    invoke-direct {v0, p0}, Lsfs2x/client/entities/managers/SFSGlobalUserManager;-><init>(Lsfs2x/client/ISmartFox;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    .line 1414
    new-instance v0, Lsfs2x/client/entities/managers/SFSRoomManager;

    invoke-direct {v0, p0}, Lsfs2x/client/entities/managers/SFSRoomManager;-><init>(Lsfs2x/client/ISmartFox;)V

    iput-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    .line 1415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    .line 1416
    iput-object v1, p0, Lsfs2x/client/SmartFox;->lastJoinedRoom:Lsfs2x/client/entities/Room;

    .line 1417
    iput-object v1, p0, Lsfs2x/client/SmartFox;->currentZone:Ljava/lang/String;

    .line 1418
    iput-object v1, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    .line 1419
    return-void
.end method

.method public initCrypto()V
    .locals 1

    .prologue
    .line 897
    new-instance v0, Lsfs2x/client/util/CryptoInitializer;

    invoke-direct {v0, p0}, Lsfs2x/client/util/CryptoInitializer;-><init>(Lsfs2x/client/ISmartFox;)V

    .line 898
    return-void
.end method

.method public initUdp()V
    .locals 2

    .prologue
    .line 832
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lsfs2x/client/SmartFox;->initUdp(Ljava/lang/String;I)V

    .line 833
    return-void
.end method

.method public initUdp(Ljava/lang/String;)V
    .locals 1
    .param p1, "udpHost"    # Ljava/lang/String;

    .prologue
    .line 839
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/SmartFox;->initUdp(Ljava/lang/String;I)V

    .line 840
    return-void
.end method

.method public initUdp(Ljava/lang/String;I)V
    .locals 5
    .param p1, "udpHost"    # Ljava/lang/String;
    .param p2, "udpPort"    # I

    .prologue
    .line 947
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 948
    iget-object v2, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "Cannot initialize UDP protocol until the client is connected to SFS2X."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 988
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v2, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    if-eqz v2, :cond_2

    .line 954
    if-nez p1, :cond_1

    .line 955
    iget-object v2, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v2}, Lsfs2x/client/util/ConfigData;->getUdpHost()Ljava/lang/String;

    move-result-object p1

    .line 958
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 959
    iget-object v2, p0, Lsfs2x/client/SmartFox;->config:Lsfs2x/client/util/ConfigData;

    invoke-virtual {v2}, Lsfs2x/client/util/ConfigData;->getUdpPort()I

    move-result p2

    .line 964
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 965
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid UDP host/address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    :cond_4
    if-ltz p2, :cond_5

    const v2, 0xffff

    if-le p2, v2, :cond_6

    .line 969
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid UDP port range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 975
    :cond_6
    iget-object v2, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;

    move-result-object v2

    invoke-interface {v2}, Lsfs2x/client/bitswarm/IUDPManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_8

    .line 976
    :cond_7
    new-instance v1, Lsfs2x/client/bitswarm/UDPManager;

    invoke-direct {v1}, Lsfs2x/client/bitswarm/UDPManager;-><init>()V

    .line 977
    .local v1, "manager":Lsfs2x/client/bitswarm/IUDPManager;
    invoke-interface {v1, p0}, Lsfs2x/client/bitswarm/IUDPManager;->setSfs(Lsfs2x/client/SmartFox;)V

    .line 978
    iget-object v2, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v2, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->setUdpManager(Lsfs2x/client/bitswarm/IUDPManager;)V

    .line 983
    .end local v1    # "manager":Lsfs2x/client/bitswarm/IUDPManager;
    :cond_8
    :try_start_0
    iget-object v2, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lsfs2x/client/bitswarm/IUDPManager;->initialize(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/smartfoxserver/v2/exceptions/SFSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Lcom/smartfoxserver/v2/exceptions/SFSException;
    iget-object v2, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception initializing UDP: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/exceptions/SFSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "connected":Z
    iget-object v1, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->isConnected()Z

    move-result v0

    .line 345
    :cond_0
    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->isConnecting:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->debug:Z

    return v0
.end method

.method public isJoining()Z
    .locals 1

    .prologue
    .line 994
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    return v0
.end method

.method public isUdpInited()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;

    move-result-object v0

    invoke-interface {v0}, Lsfs2x/client/bitswarm/IUDPManager;->isInited()Z

    move-result v0

    .line 824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killConnection()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->killConnection()V

    .line 655
    return-void
.end method

.method public loadConfig()V
    .locals 2

    .prologue
    .line 1195
    const-string/jumbo v0, "sfs-config.xml"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lsfs2x/client/SmartFox;->loadConfig(Ljava/lang/String;Z)V

    .line 1196
    return-void
.end method

.method public loadConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1179
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/SmartFox;->loadConfig(Ljava/lang/String;Z)V

    .line 1180
    return-void
.end method

.method public loadConfig(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "connectOnSuccess"    # Z

    .prologue
    .line 1158
    new-instance v0, Lsfs2x/client/util/ConfigLoader;

    invoke-direct {v0}, Lsfs2x/client/util/ConfigLoader;-><init>()V

    .line 1159
    .local v0, "configLoader":Lsfs2x/client/util/ConfigLoader;
    invoke-virtual {v0}, Lsfs2x/client/util/ConfigLoader;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v1

    const-string/jumbo v2, "configLoadSuccess"

    new-instance v3, Lsfs2x/client/SmartFox$9;

    invoke-direct {v3, p0}, Lsfs2x/client/SmartFox$9;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v1, v2, v3}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 1164
    invoke-virtual {v0}, Lsfs2x/client/util/ConfigLoader;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v1

    const-string/jumbo v2, "configLoadFailure"

    new-instance v3, Lsfs2x/client/SmartFox$10;

    invoke-direct {v3, p0}, Lsfs2x/client/SmartFox$10;-><init>(Lsfs2x/client/SmartFox;)V

    invoke-virtual {v1, v2, v3}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 1170
    iput-boolean p2, p0, Lsfs2x/client/SmartFox;->autoConnectOnConfig:Z

    .line 1171
    invoke-virtual {v0, p1}, Lsfs2x/client/util/ConfigLoader;->loadConfig(Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public loadConfig(Z)V
    .locals 1
    .param p1, "connectOnSuccess"    # Z

    .prologue
    .line 1187
    const-string/jumbo v0, "sfs-config.xml"

    invoke-virtual {p0, v0, p1}, Lsfs2x/client/SmartFox;->loadConfig(Ljava/lang/String;Z)V

    .line 1188
    return-void
.end method

.method public removeAllEventListeners()V
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0}, Lsfs2x/client/core/EventDispatcher;->removeAll()V

    .line 1498
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 1490
    iget-object v0, p0, Lsfs2x/client/SmartFox;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/core/EventDispatcher;->removeEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 1491
    return-void
.end method

.method public removeJoinedRoom(Lsfs2x/client/entities/Room;)V
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 1216
    iget-object v0, p0, Lsfs2x/client/SmartFox;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IRoomManager;->removeRoom(Lsfs2x/client/entities/Room;)V

    .line 1222
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1223
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    iput-object v0, p0, Lsfs2x/client/SmartFox;->lastJoinedRoom:Lsfs2x/client/entities/Room;

    .line 1225
    :cond_0
    return-void
.end method

.method public send(Lsfs2x/client/requests/IRequest;)V
    .locals 6
    .param p1, "request"    # Lsfs2x/client/requests/IRequest;

    .prologue
    .line 1062
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1063
    iget-object v3, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "You are not connected. Request cannot be sent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    :try_start_0
    instance-of v3, p1, Lsfs2x/client/requests/JoinRoomRequest;

    if-eqz v3, :cond_2

    .line 1070
    iget-boolean v3, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    if-nez v3, :cond_0

    .line 1074
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    .line 1079
    :cond_2
    invoke-interface {p1, p0}, Lsfs2x/client/requests/IRequest;->validate(Lsfs2x/client/ISmartFox;)V

    .line 1082
    invoke-interface {p1, p0}, Lsfs2x/client/requests/IRequest;->execute(Lsfs2x/client/ISmartFox;)V

    .line 1085
    iget-object v3, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-interface {p1}, Lsfs2x/client/requests/IRequest;->getMessage()Lsfs2x/client/bitswarm/IMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsfs2x/client/bitswarm/BitSwarmClient;->send(Lsfs2x/client/bitswarm/IMessage;)V
    :try_end_0
    .catch Lsfs2x/client/exceptions/SFSValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/smartfoxserver/v2/exceptions/SFSException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v2

    .line 1089
    .local v2, "problem":Lsfs2x/client/exceptions/SFSValidationException;
    invoke-virtual {v2}, Lsfs2x/client/exceptions/SFSValidationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "errMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lsfs2x/client/exceptions/SFSValidationException;->getErrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1095
    iget-object v3, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1092
    .local v1, "errorItem":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1097
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v1    # "errorItem":Ljava/lang/String;
    .end local v2    # "problem":Lsfs2x/client/exceptions/SFSValidationException;
    :catch_1
    move-exception v2

    .line 1098
    .local v2, "problem":Lcom/smartfoxserver/v2/exceptions/SFSException;
    iget-object v3, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/exceptions/SFSException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClientDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0x3a

    .line 261
    invoke-virtual {p0}, Lsfs2x/client/SmartFox;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lsfs2x/client/SmartFox;->log:Lorg/slf4j/Logger;

    const-string/jumbo v1, "setClientDetails() must be called before the connection is started"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/SmartFox;->clientDetails:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 269
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Lsfs2x/client/SmartFox;->debug:Z

    .line 672
    return-void
.end method

.method public setJoining(Z)V
    .locals 0
    .param p1, "joining"    # Z

    .prologue
    .line 1001
    iput-boolean p1, p0, Lsfs2x/client/SmartFox;->isJoining:Z

    .line 1002
    return-void
.end method

.method public setLastJoinedRoom(Lsfs2x/client/entities/Room;)V
    .locals 0
    .param p1, "lastJoinedRoom"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 751
    iput-object p1, p0, Lsfs2x/client/SmartFox;->lastJoinedRoom:Lsfs2x/client/entities/Room;

    .line 752
    return-void
.end method

.method public setMySelf(Lsfs2x/client/entities/User;)V
    .locals 0
    .param p1, "mySelf"    # Lsfs2x/client/entities/User;

    .prologue
    .line 723
    iput-object p1, p0, Lsfs2x/client/SmartFox;->mySelf:Lsfs2x/client/entities/User;

    .line 724
    return-void
.end method

.method public setReconnectionSeconds(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 1034
    iget-object v0, p0, Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->setReconnectionSeconds(I)V

    .line 1035
    return-void
.end method

.method public setUseBlueBox(Z)V
    .locals 0
    .param p1, "useBlueBox"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lsfs2x/client/SmartFox;->useBlueBox:Z

    .line 389
    return-void
.end method

.method public useBlueBox()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lsfs2x/client/SmartFox;->useBlueBox:Z

    return v0
.end method
