.class public Lsfs2x/client/bitswarm/BitSwarmClient;
.super Ljava/lang/Object;
.source "BitSwarmClient.java"

# interfaces
.implements Lsfs2x/client/core/IDispatchable;


# instance fields
.field private attemptingReconnection:Z

.field private bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

.field private bbConnected:Z

.field private compressionThreshold:I

.field private connectionMode:Lsfs2x/client/bitswarm/ConnectionMode;

.field private controllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsfs2x/client/bitswarm/IController;",
            ">;"
        }
    .end annotation
.end field

.field private controllersInited:Z

.field private cryptoKey:Lsfs2x/client/util/CryptoKey;

.field private disconnectionReason:Ljava/lang/String;

.field private dispatcher:Lsfs2x/client/core/EventDispatcher;

.field private extController:Lsfs2x/client/controllers/ExtensionController;

.field private firstReconnAttempt:J

.field private ioHandler:Lsfs2x/client/bitswarm/IOHandler;

.field private lastIpAddress:Ljava/lang/String;

.field private lastTcpPort:I

.field private log:Lorg/slf4j/Logger;

.field private maxMessageSize:I

.field private reconnCounter:I

.field private reconnectionDelayMillis:I

.field private reconnectionSeconds:I

.field private sfs:Lsfs2x/client/SmartFox;

.field private socket:Lsfs2x/client/core/sockets/ISocketLayer;

.field private sysController:Lsfs2x/client/controllers/SystemController;

.field private udpManager:Lsfs2x/client/bitswarm/IUDPManager;

.field private useBlueBox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsfs2x/client/bitswarm/BitSwarmClient;-><init>(Lsfs2x/client/SmartFox;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/SmartFox;)V
    .locals 2
    .param p1, "sfs"    # Lsfs2x/client/SmartFox;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllers:Ljava/util/Map;

    .line 33
    const v0, 0x1e8480

    iput v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->compressionThreshold:I

    .line 34
    const/16 v0, 0x2710

    iput v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->maxMessageSize:I

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionDelayMillis:I

    .line 39
    iput v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionSeconds:I

    .line 48
    iput-boolean v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllersInited:Z

    .line 52
    iput-boolean v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->firstReconnAttempt:J

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnCounter:I

    .line 73
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->log:Lorg/slf4j/Logger;

    .line 75
    new-instance v0, Lsfs2x/client/core/EventDispatcher;

    invoke-direct {v0, p0}, Lsfs2x/client/core/EventDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->onSocketConnect()V

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->onSocketClose()V

    return-void
.end method

.method static synthetic access$10(Lsfs2x/client/bitswarm/BitSwarmClient;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastTcpPort:I

    return v0
.end method

.method static synthetic access$2(Lsfs2x/client/bitswarm/BitSwarmClient;Lsfs2x/client/util/ByteArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->onSocketData(Lsfs2x/client/util/ByteArray;)V

    return-void
.end method

.method static synthetic access$3(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->onSocketError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lsfs2x/client/bitswarm/BitSwarmClient;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->onBBConnect(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method static synthetic access$5(Lsfs2x/client/bitswarm/BitSwarmClient;Lsfs2x/client/core/BaseEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->onBBData(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method static synthetic access$6(Lsfs2x/client/bitswarm/BitSwarmClient;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->onBBDisconnect(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method static synthetic access$7(Lsfs2x/client/bitswarm/BitSwarmClient;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->onBBError(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method static synthetic access$8(Lsfs2x/client/bitswarm/BitSwarmClient;)Lsfs2x/client/core/sockets/ISocketLayer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    return-object v0
.end method

.method static synthetic access$9(Lsfs2x/client/bitswarm/BitSwarmClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method private addController(ILsfs2x/client/bitswarm/IController;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "controller"    # Lsfs2x/client/bitswarm/IController;

    .prologue
    .line 203
    if-nez p2, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Controller is null, it can\'t be added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "A controller with id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already exists! Controller can\'t be added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method private executeDisconnection()V
    .locals 4

    .prologue
    .line 275
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v2, "disconnect"

    invoke-direct {v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "event":Lsfs2x/client/bitswarm/BitSwarmEvent;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "reason"

    iget-object v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 280
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 283
    const/4 v2, 0x0

    iput-object v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    .line 284
    return-void

    .line 277
    :cond_0
    const-string/jumbo v2, "unknown"

    goto :goto_0
.end method

.method private initControllers()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lsfs2x/client/controllers/SystemController;

    invoke-direct {v0, p0}, Lsfs2x/client/controllers/SystemController;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sysController:Lsfs2x/client/controllers/SystemController;

    .line 289
    new-instance v0, Lsfs2x/client/controllers/ExtensionController;

    invoke-direct {v0, p0}, Lsfs2x/client/controllers/ExtensionController;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->extController:Lsfs2x/client/controllers/ExtensionController;

    .line 291
    const/4 v0, 0x0

    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sysController:Lsfs2x/client/controllers/SystemController;

    invoke-direct {p0, v0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->addController(ILsfs2x/client/bitswarm/IController;)V

    .line 292
    const/4 v0, 0x1

    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->extController:Lsfs2x/client/controllers/ExtensionController;

    invoke-direct {p0, v0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->addController(ILsfs2x/client/bitswarm/IController;)V

    .line 293
    return-void
.end method

.method private onBBConnect(Lsfs2x/client/core/BaseEvent;)V
    .locals 4
    .param p1, "e"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    const/4 v3, 0x1

    .line 474
    iput-boolean v3, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbConnected:Z

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "success"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string/jumbo v2, "isReconnection"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v2, "connect"

    invoke-direct {v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "bevt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 482
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 483
    return-void
.end method

.method private onBBData(Lsfs2x/client/core/BaseEvent;)V
    .locals 4
    .param p1, "e"    # Lsfs2x/client/core/BaseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 487
    move-object v1, p1

    check-cast v1, Lsfs2x/client/bitswarm/bbox/BBEvent;

    .line 488
    .local v1, "evt":Lsfs2x/client/bitswarm/bbox/BBEvent;
    invoke-virtual {v1}, Lsfs2x/client/bitswarm/bbox/BBEvent;->getArguments()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/util/ByteArray;

    .line 489
    .local v0, "buffer":Lsfs2x/client/util/ByteArray;
    iget-object v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    invoke-interface {v2, v0}, Lsfs2x/client/bitswarm/IOHandler;->onDataRead(Lsfs2x/client/util/ByteArray;)V

    .line 490
    return-void
.end method

.method private onBBDisconnect(Lsfs2x/client/core/BaseEvent;)V
    .locals 3
    .param p1, "e"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbConnected:Z

    .line 496
    iput-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    .line 498
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    .line 501
    :cond_0
    new-instance v0, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v1, "disconnect"

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 502
    return-void
.end method

.method private onBBError(Lsfs2x/client/core/BaseEvent;)V
    .locals 7
    .param p1, "e"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 507
    move-object v2, p1

    check-cast v2, Lsfs2x/client/bitswarm/bbox/BBEvent;

    .line 508
    .local v2, "evt":Lsfs2x/client/bitswarm/bbox/BBEvent;
    iget-object v4, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "## BlueBox Error: "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/bbox/BBEvent;->getArguments()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v6, "message"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v3, "ioError"

    invoke-direct {v1, v3}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "bevt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "message"

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/bbox/BBEvent;->getArguments()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "message"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 515
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 516
    return-void
.end method

.method private declared-synchronized onSocketClose()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->getReconnectionSeconds()I

    move-result v1

    if-nez v1, :cond_1

    .line 315
    .local v0, "isRegularDisconnection":Z
    :goto_0
    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 317
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->firstReconnAttempt:J

    .line 318
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->executeDisconnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_1
    monitor-exit p0

    return-void

    .line 312
    .end local v0    # "isRegularDisconnection":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    .restart local v0    # "isRegularDisconnection":Z
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    if-eqz v1, :cond_3

    .line 324
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 312
    .end local v0    # "isRegularDisconnection":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 334
    .restart local v0    # "isRegularDisconnection":Z
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->firstReconnAttempt:J

    .line 336
    const/4 v1, 0x1

    iput v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnCounter:I

    .line 339
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v2, "reconnectionTry"

    invoke-direct {v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 341
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private onSocketConnect()V
    .locals 4

    .prologue
    .line 300
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v2, "connect"

    invoke-direct {v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "success"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v2, "isReconnection"

    iget-boolean v3, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 305
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 306
    return-void
.end method

.method private onSocketData(Lsfs2x/client/util/ByteArray;)V
    .locals 6
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v3, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    invoke-interface {v3, p1}, Lsfs2x/client/bitswarm/IOHandler;->onDataRead(Lsfs2x/client/util/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "## SocketDataError: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 410
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v3, "dataError"

    invoke-direct {v1, v3}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "message"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 414
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    goto :goto_0
.end method

.method private onSocketError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-boolean v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    if-eqz v2, :cond_0

    .line 422
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnect()V

    .line 435
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "message"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v2, "ioError"

    invoke-direct {v1, v2}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 432
    const/4 v2, 0x0

    iput-object v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    .line 433
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    goto :goto_0
.end method

.method private reconnect()V
    .locals 12

    .prologue
    .line 347
    iget-boolean v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    if-nez v8, :cond_0

    .line 374
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v8}, Lsfs2x/client/SmartFox;->getReconnectionSeconds()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v4, v8

    .line 351
    .local v4, "reconnectionSeconds":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 352
    .local v2, "now":J
    iget-wide v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->firstReconnAttempt:J

    add-long/2addr v8, v4

    sub-long v6, v8, v2

    .line 354
    .local v6, "timeLeft":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 356
    iget-object v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Reconnection attempt:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnCounter:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " - time left:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " sec."

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :try_start_0
    iget v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionDelayMillis:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_1
    iget-object v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastIpAddress:Ljava/lang/String;

    iget v9, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastTcpPort:I

    invoke-virtual {p0, v8, v9}, Lsfs2x/client/bitswarm/BitSwarmClient;->connect(Ljava/lang/String;I)V

    .line 362
    iget v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnCounter:I

    goto :goto_0

    .line 368
    :cond_1
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    const-string/jumbo v8, "disconnect"

    invoke-direct {v1, v8}, Lsfs2x/client/bitswarm/BitSwarmEvent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "reason"

    const-string/jumbo v9, "unknown"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmEvent;->setArguments(Ljava/util/Map;)V

    .line 372
    invoke-virtual {p0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    goto :goto_0

    .line 359
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "evt":Lsfs2x/client/bitswarm/BitSwarmEvent;
    :catch_0
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 646
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 647
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 215
    const-string/jumbo v0, "127.0.0.1"

    const/16 v1, 0x247b

    invoke-virtual {p0, v0, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->connect(Ljava/lang/String;I)V

    .line 216
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 220
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastIpAddress:Ljava/lang/String;

    .line 221
    iput p2, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastTcpPort:I

    .line 223
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/util/ConfigData;->getBboxPollingRate()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->setPollSpeed(I)V

    .line 226
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lsfs2x/client/util/ConfigData;->getHttpPort()I

    move-result p2

    .end local p2    # "port":I
    :cond_0
    invoke-virtual {v0, p1, p2}, Lsfs2x/client/bitswarm/bbox/BBClient;->connect(Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lsfs2x/client/bitswarm/ConnectionMode;->HTTP:Lsfs2x/client/bitswarm/ConnectionMode;

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->connectionMode:Lsfs2x/client/bitswarm/ConnectionMode;

    .line 234
    :goto_1
    return-void

    .line 225
    .restart local p2    # "port":I
    :cond_1
    const/16 v0, 0x2ee

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0, p1, p2}, Lsfs2x/client/core/sockets/ISocketLayer;->connect(Ljava/lang/String;I)V

    .line 232
    sget-object v0, Lsfs2x/client/bitswarm/ConnectionMode;->SOCKET:Lsfs2x/client/bitswarm/ConnectionMode;

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->connectionMode:Lsfs2x/client/bitswarm/ConnectionMode;

    goto :goto_1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/core/EventDispatcher;->removeAll()V

    .line 173
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->disconnect()V

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    .line 178
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnect(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->disconnectionReason:Ljava/lang/String;

    .line 249
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-virtual {v0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->close(Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0, p1}, Lsfs2x/client/core/sockets/ISocketLayer;->disconnect(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->udpManager:Lsfs2x/client/bitswarm/IUDPManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->udpManager:Lsfs2x/client/bitswarm/IUDPManager;

    invoke-interface {v0}, Lsfs2x/client/bitswarm/IUDPManager;->disconnect()V

    goto :goto_0
.end method

.method dispatchEvent(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/bitswarm/BitSwarmEvent;

    .prologue
    .line 396
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 397
    return-void
.end method

.method public enableBlueBoxDebug(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-virtual {v0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->setDebug(Z)V

    .line 89
    return-void
.end method

.method public forceBlueBox(Z)V
    .locals 2
    .param p1, "useBlueBox"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 79
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbConnected:Z

    if-nez v0, :cond_0

    .line 80
    iput-boolean p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    .line 85
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v1, "You can\'t change the BlueBox mode while the connection is running"

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionThreshold()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->compressionThreshold:I

    return v0
.end method

.method public getConnectionIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string/jumbo v0, "Not Connected"

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastIpAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConnectionMode()Lsfs2x/client/bitswarm/ConnectionMode;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->connectionMode:Lsfs2x/client/bitswarm/ConnectionMode;

    return-object v0
.end method

.method public getConnectionPort()I
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, -0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->lastTcpPort:I

    goto :goto_0
.end method

.method public getController(I)Lsfs2x/client/bitswarm/IController;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/bitswarm/IController;

    return-object v0
.end method

.method public getCryptoKey()Lsfs2x/client/util/CryptoKey;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->cryptoKey:Lsfs2x/client/util/CryptoKey;

    return-object v0
.end method

.method public getDispatcher()Lsfs2x/client/core/EventDispatcher;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    return-object v0
.end method

.method public getExtController()Lsfs2x/client/controllers/ExtensionController;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->extController:Lsfs2x/client/controllers/ExtensionController;

    return-object v0
.end method

.method public getHttpClient()Lsfs2x/client/bitswarm/bbox/BBClient;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    return-object v0
.end method

.method public getIoHandler()Lsfs2x/client/bitswarm/IOHandler;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->maxMessageSize:I

    return v0
.end method

.method public getNextUdpPacketId()J
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->udpManager:Lsfs2x/client/bitswarm/IUDPManager;

    invoke-interface {v0}, Lsfs2x/client/bitswarm/IUDPManager;->getNextUdpPacketId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReconnectionDelayMillis()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionDelayMillis:I

    return v0
.end method

.method public getReconnectionSeconds()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionSeconds:I

    if-gez v0, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 626
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionSeconds:I

    goto :goto_0
.end method

.method public getSfs()Lsfs2x/client/SmartFox;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    return-object v0
.end method

.method public getSocket()Lsfs2x/client/core/sockets/ISocketLayer;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    return-object v0
.end method

.method public getSysController()Lsfs2x/client/controllers/SystemController;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sysController:Lsfs2x/client/controllers/SystemController;

    return-object v0
.end method

.method public getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->udpManager:Lsfs2x/client/bitswarm/IUDPManager;

    return-object v0
.end method

.method public getUseBlueBox()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllersInited:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BitSwarmClient;->initControllers()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->controllersInited:Z

    .line 97
    :cond_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    if-eqz v0, :cond_1

    .line 167
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Lsfs2x/client/core/sockets/TCPSocketLayer;

    invoke-direct {v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;-><init>()V

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    .line 102
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    const-string/jumbo v1, "OnConnect"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$1;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$1;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 108
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    const-string/jumbo v1, "OnDisconnect"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$2;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$2;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 114
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    const-string/jumbo v1, "OnData"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$3;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$3;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 120
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    const-string/jumbo v1, "OnError"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$4;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$4;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 127
    new-instance v0, Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-direct {v0, p0}, Lsfs2x/client/bitswarm/bbox/BBClient;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    .line 128
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    const-string/jumbo v1, "bb-connect"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$5;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$5;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 136
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    const-string/jumbo v1, "bb-data"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$6;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$6;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 145
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    const-string/jumbo v1, "bb-disconnect"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$7;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$7;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 152
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    const-string/jumbo v1, "bb-ioError"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$8;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$8;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 160
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbClient:Lsfs2x/client/bitswarm/bbox/BBClient;

    const-string/jumbo v1, "bb-securityError"

    new-instance v2, Lsfs2x/client/bitswarm/BitSwarmClient$9;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/BitSwarmClient$9;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    goto/16 :goto_0
.end method

.method public isAttemptingReconnection()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    if-eqz v0, :cond_0

    .line 542
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->bbConnected:Z

    .line 548
    :goto_0
    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    if-nez v0, :cond_1

    .line 545
    const/4 v0, 0x0

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReconnecting()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    return v0
.end method

.method public killConnection()V
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->useBlueBox:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->kill()V

    .line 441
    :cond_0
    return-void
.end method

.method retryConnection(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 378
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 380
    .local v0, "retryTimer":Ljava/util/Timer;
    new-instance v1, Lsfs2x/client/bitswarm/BitSwarmClient$10;

    invoke-direct {v1, p0, v0}, Lsfs2x/client/bitswarm/BitSwarmClient$10;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/util/Timer;)V

    .line 392
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 393
    return-void
.end method

.method public send(Lsfs2x/client/bitswarm/IMessage;)V
    .locals 1
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    invoke-interface {v0}, Lsfs2x/client/bitswarm/IOHandler;->getCodec()Lsfs2x/client/bitswarm/IProtocolCodec;

    move-result-object v0

    invoke-interface {v0, p1}, Lsfs2x/client/bitswarm/IProtocolCodec;->onPacketWrite(Lsfs2x/client/bitswarm/IMessage;)V

    .line 238
    return-void
.end method

.method public setAttemptingReconnection(Z)V
    .locals 0
    .param p1, "attemptingReconnection"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    .line 639
    return-void
.end method

.method public setCompressionThreshold(I)V
    .locals 2
    .param p1, "compressionThreshold"    # I

    .prologue
    .line 573
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 574
    iput p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->compressionThreshold:I

    .line 579
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Compression threshold cannot be < 100 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCryptoKey(Lsfs2x/client/util/CryptoKey;)V
    .locals 0
    .param p1, "cryptoKey"    # Lsfs2x/client/util/CryptoKey;

    .prologue
    .line 466
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->cryptoKey:Lsfs2x/client/util/CryptoKey;

    .line 467
    return-void
.end method

.method public setIoHandler(Lsfs2x/client/bitswarm/IOHandler;)V
    .locals 2
    .param p1, "ioHandler"    # Lsfs2x/client/bitswarm/IOHandler;

    .prologue
    .line 556
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IOHandler is already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    .line 561
    return-void
.end method

.method public setMaxMessageSize(I)V
    .locals 0
    .param p1, "maxMessageSize"    # I

    .prologue
    .line 586
    iput p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->maxMessageSize:I

    .line 587
    return-void
.end method

.method public setReconnecting(Z)V
    .locals 0
    .param p1, "isReconnecting"    # Z

    .prologue
    .line 618
    iput-boolean p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    .line 619
    return-void
.end method

.method public setReconnectionDelayMillis(I)V
    .locals 0
    .param p1, "reconnectionDelayMillis"    # I

    .prologue
    .line 594
    iput p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionDelayMillis:I

    .line 595
    return-void
.end method

.method public setReconnectionSeconds(I)V
    .locals 0
    .param p1, "reconnectionSeconds"    # I

    .prologue
    .line 630
    iput p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->reconnectionSeconds:I

    .line 631
    return-void
.end method

.method public setUdpManager(Lsfs2x/client/bitswarm/IUDPManager;)V
    .locals 0
    .param p1, "udpManager"    # Lsfs2x/client/bitswarm/IUDPManager;

    .prologue
    .line 456
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->udpManager:Lsfs2x/client/bitswarm/IUDPManager;

    .line 457
    return-void
.end method

.method public stopReconnection()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->attemptingReconnection:Z

    .line 264
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->firstReconnAttempt:J

    .line 266
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->disconnect()V

    .line 271
    :cond_0
    return-void
.end method
