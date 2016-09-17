.class public Lsfs2x/client/bitswarm/UDPManager;
.super Ljava/lang/Object;
.source "UDPManager.java"

# interfaces
.implements Lsfs2x/client/bitswarm/IUDPManager;


# instance fields
.field private final MAX_RETRY:I

.field private final RESPONSE_TIMEOUT:I

.field private currentAttempt:I

.field private initSuccess:Z

.field private initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile locked:Z

.field private log:Lorg/slf4j/Logger;

.field private packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

.field private packetId:J

.field private sfs:Lsfs2x/client/SmartFox;

.field private udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

.field private udpTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lsfs2x/client/bitswarm/UDPManager;->locked:Z

    .line 35
    iput-boolean v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lsfs2x/client/bitswarm/UDPManager;->MAX_RETRY:I

    .line 39
    const/16 v0, 0xbb8

    iput v0, p0, Lsfs2x/client/bitswarm/UDPManager;->RESPONSE_TIMEOUT:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsfs2x/client/bitswarm/UDPManager;->packetId:J

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    .line 53
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/bitswarm/UDPManager;Lsfs2x/client/util/ByteArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/UDPManager;->onUDPData(Lsfs2x/client/util/ByteArray;)V

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/bitswarm/UDPManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/UDPManager;->onUDPError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lsfs2x/client/bitswarm/UDPManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lsfs2x/client/bitswarm/UDPManager;->onTimeout()V

    return-void
.end method

.method static synthetic access$3(Lsfs2x/client/bitswarm/UDPManager;)Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private onTimeout()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 260
    iget v1, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 263
    iget v1, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    .line 264
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UDP Init Attempt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lsfs2x/client/bitswarm/UDPManager;->sendInitializationRequest()V

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0}, Lsfs2x/client/bitswarm/UDPManager;->stopTimer()V

    .line 272
    iput v3, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    .line 273
    iput-boolean v3, p0, Lsfs2x/client/bitswarm/UDPManager;->locked:Z

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    new-instance v2, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v3, "udpInit"

    invoke-direct {v2, v3, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method

.method private onUDPData(Lsfs2x/client/util/ByteArray;)V
    .locals 13
    .param p1, "bytes"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 156
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytesAvailable()I

    move-result v11

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1

    .line 158
    iget-object v9, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Too small UDP packet. Len: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->readByte()B

    move-result v5

    .line 166
    .local v5, "header":B
    and-int/lit8 v11, v5, 0x20

    if-lez v11, :cond_2

    move v0, v9

    .line 167
    .local v0, "compressed":Z
    :goto_1
    and-int/lit8 v11, v5, 0x40

    if-lez v11, :cond_3

    move v4, v9

    .line 170
    .local v4, "encrypted":Z
    :goto_2
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->readShort()S

    move-result v2

    .line 173
    .local v2, "dataSize":S
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytesAvailable()I

    move-result v11

    if-le v2, v11, :cond_4

    .line 175
    iget-object v9, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Insufficient UDP data. Expected: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", got: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytesAvailable()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "compressed":Z
    .end local v2    # "dataSize":S
    .end local v4    # "encrypted":Z
    :cond_2
    move v0, v10

    .line 166
    goto :goto_1

    .restart local v0    # "compressed":Z
    :cond_3
    move v4, v10

    .line 167
    goto :goto_2

    .line 180
    .restart local v2    # "dataSize":S
    .restart local v4    # "encrypted":Z
    :cond_4
    invoke-virtual {p1, v2}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v1

    .line 183
    .local v1, "data":[B
    if-eqz v4, :cond_5

    .line 187
    :try_start_0
    iget-object v11, p0, Lsfs2x/client/bitswarm/UDPManager;->packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

    invoke-interface {v11, v1}, Lsfs2x/client/core/IPacketEncrypter;->decrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :cond_5
    new-instance v6, Lsfs2x/client/util/ByteArray;

    invoke-direct {v6, v1}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    .line 198
    .local v6, "objBytes":Lsfs2x/client/util/ByteArray;
    if-eqz v0, :cond_6

    .line 199
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->uncompress()V

    .line 201
    :cond_6
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newFromBinaryData([B)Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v8

    .line 204
    .local v8, "reqObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v11, "h"

    invoke-interface {v8, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 206
    iget-boolean v11, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    if-nez v11, :cond_0

    .line 209
    invoke-direct {p0}, Lsfs2x/client/bitswarm/UDPManager;->stopTimer()V

    .line 210
    iput-boolean v10, p0, Lsfs2x/client/bitswarm/UDPManager;->locked:Z

    .line 211
    iput-boolean v9, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    .line 213
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v10, "success"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v9, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    new-instance v10, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v11, "udpInit"

    invoke-direct {v10, v11, v7}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v9, v10}, Lsfs2x/client/SmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto/16 :goto_0

    .line 189
    .end local v6    # "objBytes":Lsfs2x/client/util/ByteArray;
    .end local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "reqObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    :catch_0
    move-exception v3

    .line 191
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/smartfoxserver/v2/exceptions/SFSException;

    invoke-direct {v9, v3}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 221
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "objBytes":Lsfs2x/client/util/ByteArray;
    .restart local v8    # "reqObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    :cond_7
    iget-object v9, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v9}, Lsfs2x/client/SmartFox;->getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v9

    invoke-virtual {v9}, Lsfs2x/client/bitswarm/BitSwarmClient;->getIoHandler()Lsfs2x/client/bitswarm/IOHandler;

    move-result-object v9

    invoke-interface {v9}, Lsfs2x/client/bitswarm/IOHandler;->getCodec()Lsfs2x/client/bitswarm/IProtocolCodec;

    move-result-object v9

    invoke-interface {v9, v8}, Lsfs2x/client/bitswarm/IProtocolCodec;->onPacketRead(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto/16 :goto_0
.end method

.method private onUDPError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected UDP I/O Error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private declared-synchronized startTimer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 288
    :cond_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 290
    new-instance v1, Lsfs2x/client/bitswarm/UDPManager$3;

    invoke-direct {v1, p0}, Lsfs2x/client/bitswarm/UDPManager$3;-><init>(Lsfs2x/client/bitswarm/UDPManager;)V

    .line 305
    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 288
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpTimeout:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopTimer()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpTimeout:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 314
    :cond_0
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_1
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0}, Lsfs2x/client/core/sockets/ISocketLayer;->disconnect()V

    .line 324
    return-void
.end method

.method public getNextUdpPacketId()J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lsfs2x/client/bitswarm/UDPManager;->packetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lsfs2x/client/bitswarm/UDPManager;->packetId:J

    return-wide v0
.end method

.method public initialize(Ljava/lang/String;I)V
    .locals 3
    .param p1, "udpAddr"    # Ljava/lang/String;
    .param p2, "udpPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    const-string/jumbo v1, "UDP Channel already initialized!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/UDPManager;->locked:Z

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/bitswarm/UDPManager;->locked:Z

    .line 67
    new-instance v0, Lsfs2x/client/core/sockets/UDPSocketLayer;

    invoke-direct {v0}, Lsfs2x/client/core/sockets/UDPSocketLayer;-><init>()V

    iput-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    .line 68
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    const-string/jumbo v1, "OnData"

    new-instance v2, Lsfs2x/client/bitswarm/UDPManager$1;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/UDPManager$1;-><init>(Lsfs2x/client/bitswarm/UDPManager;)V

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 78
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    const-string/jumbo v1, "OnError"

    new-instance v2, Lsfs2x/client/bitswarm/UDPManager$2;

    invoke-direct {v2, p0}, Lsfs2x/client/bitswarm/UDPManager$2;-><init>(Lsfs2x/client/bitswarm/UDPManager;)V

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 87
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-interface {v0, p1, p2}, Lsfs2x/client/core/sockets/ISocketLayer;->connect(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {p0}, Lsfs2x/client/bitswarm/UDPManager;->sendInitializationRequest()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    const-string/jumbo v1, "UPD initialization is already in progress!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lsfs2x/client/bitswarm/UDPManager;->stopTimer()V

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lsfs2x/client/bitswarm/UDPManager;->currentAttempt:I

    .line 144
    iput-boolean v1, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    .line 145
    iput-boolean v1, p0, Lsfs2x/client/bitswarm/UDPManager;->locked:Z

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsfs2x/client/bitswarm/UDPManager;->packetId:J

    .line 147
    return-void
.end method

.method public send(Lsfs2x/client/util/ByteArray;)V
    .locals 4
    .param p1, "binaryData"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 104
    iget-boolean v1, p0, Lsfs2x/client/bitswarm/UDPManager;->initSuccess:Z

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->write([B)V

    .line 110
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->isDebug()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WriteUDP operation failed due to Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "UDP protocol is not initialized yet. Pleas use the initUDP() method."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendInitializationRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 232
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    .line 233
    .local v1, "message":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v3, "c"

    invoke-interface {v1, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putByte(Ljava/lang/String;B)V

    .line 234
    const-string/jumbo v3, "h"

    invoke-interface {v1, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putByte(Ljava/lang/String;B)V

    .line 235
    const-string/jumbo v3, "i"

    invoke-virtual {p0}, Lsfs2x/client/bitswarm/UDPManager;->getNextUdpPacketId()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putLong(Ljava/lang/String;J)V

    .line 236
    const-string/jumbo v3, "u"

    iget-object v4, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v4}, Lsfs2x/client/SmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v4

    invoke-interface {v4}, Lsfs2x/client/entities/User;->getId()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 238
    new-instance v0, Lsfs2x/client/util/ByteArray;

    invoke-interface {v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->toBinary()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    .line 241
    .local v0, "binData":Lsfs2x/client/util/ByteArray;
    new-instance v2, Lsfs2x/client/util/ByteArray;

    invoke-direct {v2}, Lsfs2x/client/util/ByteArray;-><init>()V

    .line 244
    .local v2, "writeBuffer":Lsfs2x/client/util/ByteArray;
    const/16 v3, -0x80

    invoke-virtual {v2, v3}, Lsfs2x/client/util/ByteArray;->writeByte(B)V

    .line 247
    invoke-virtual {v0}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lsfs2x/client/util/ByteArray;->writeShort(S)V

    .line 250
    invoke-virtual {v0}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V

    .line 252
    iget-object v3, p0, Lsfs2x/client/bitswarm/UDPManager;->udpSocket:Lsfs2x/client/core/sockets/ISocketLayer;

    invoke-virtual {v2}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lsfs2x/client/core/sockets/ISocketLayer;->write([B)V

    .line 255
    invoke-direct {p0}, Lsfs2x/client/bitswarm/UDPManager;->startTimer()V

    .line 256
    return-void
.end method

.method public setSfs(Lsfs2x/client/SmartFox;)V
    .locals 2
    .param p1, "value"    # Lsfs2x/client/SmartFox;

    .prologue
    .line 134
    iput-object p1, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    .line 137
    new-instance v0, Lsfs2x/client/core/DefaultPacketEncrypter;

    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager;->sfs:Lsfs2x/client/SmartFox;

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lsfs2x/client/core/DefaultPacketEncrypter;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/UDPManager;->packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

    .line 138
    return-void
.end method
