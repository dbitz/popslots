.class public Lsfs2x/client/bitswarm/bbox/BBClient;
.super Ljava/lang/Object;
.source "BBClient.java"

# interfaces
.implements Lsfs2x/client/core/IDispatchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;,
        Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;,
        Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;,
        Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;,
        Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;
    }
.end annotation


# instance fields
.field private final BB_DEFAULT_HOST:Ljava/lang/String;

.field private final BB_DEFAULT_PORT:I

.field private final BB_NULL:Ljava/lang/String;

.field private final BB_SERVLET:Ljava/lang/String;

.field private final CMD_CONNECT:Ljava/lang/String;

.field private final CMD_DATA:Ljava/lang/String;

.field private final CMD_POLL:Ljava/lang/String;

.field private final DEFAULT_POLL_SPEED:I

.field private final ERR_INVALID_SESSION:Ljava/lang/String;

.field private final MAX_POLL_SPEED:I

.field private final MIN_POLL_SPEED:I

.field private final POLLING_TIMEOUT:I

.field private final SEP:Ljava/lang/String;

.field private final SFS_HTTP:Ljava/lang/String;

.field private bbUrl:Ljava/lang/String;

.field private bitswarm:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

.field private channel:Lorg/jboss/netty/channel/Channel;

.field private debug:Z

.field private dispatcher:Lsfs2x/client/core/EventDispatcher;

.field private host:Ljava/lang/String;

.field private isConnected:Z

.field private lastPollingTime:J

.field private final pollRunner:Ljava/lang/Runnable;

.field private final pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private pollSpeed:I

.field private port:I

.field private sessId:Ljava/lang/String;

.field uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1f90

    const/16 v1, 0x12c

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->BB_DEFAULT_HOST:Ljava/lang/String;

    .line 58
    iput v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->BB_DEFAULT_PORT:I

    .line 59
    const-string/jumbo v0, "BlueBox/BlueBox.do"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->BB_SERVLET:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->BB_NULL:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "connect"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->CMD_CONNECT:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "poll"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->CMD_POLL:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "data"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->CMD_DATA:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "err01"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->ERR_INVALID_SESSION:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "sfsHttp"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->SFS_HTTP:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "|"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->SEP:Ljava/lang/String;

    .line 71
    const/16 v0, 0x32

    iput v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->MIN_POLL_SPEED:I

    .line 72
    const/16 v0, 0x1388

    iput v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->MAX_POLL_SPEED:I

    .line 73
    iput v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->DEFAULT_POLL_SPEED:I

    .line 94
    const v0, 0xafc8

    iput v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->POLLING_TIMEOUT:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    .line 100
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;

    .line 101
    iput v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->port:I

    .line 104
    iput-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    .line 105
    iput v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollSpeed:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->lastPollingTime:J

    .line 153
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 154
    new-instance v0, Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;

    invoke-direct {v0, p0, v3}, Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollRunner:Ljava/lang/Runnable;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bs"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 189
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;-><init>()V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->init(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;IZ)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "debug"    # Z
    .param p4, "bs"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 195
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;-><init>()V

    .line 196
    invoke-direct {p0, p4, p1, p2, p3}, Lsfs2x/client/bitswarm/bbox/BBClient;->init(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;IZ)V

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "bs"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 183
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;-><init>()V

    .line 184
    const/16 v0, 0x1f90

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->init(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;IZ)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 3
    .param p1, "bs"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 177
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;-><init>()V

    .line 178
    const-string/jumbo v0, "localhost"

    const/16 v1, 0x1f90

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->init(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;IZ)V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/bitswarm/bbox/BBClient;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;->poll()V

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/bitswarm/bbox/BBClient;J)V
    .locals 1

    .prologue
    .line 106
    iput-wide p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->lastPollingTime:J

    return-void
.end method

.method static synthetic access$10(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/String;Ljava/lang/Object;)Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Lsfs2x/client/bitswarm/bbox/BBClient;->createRequest(Ljava/lang/String;Ljava/lang/Object;)Lorg/jboss/netty/handler/codec/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lsfs2x/client/bitswarm/bbox/BBClient;)Lorg/jboss/netty/bootstrap/ClientBootstrap;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    return-object v0
.end method

.method static synthetic access$12(Lsfs2x/client/bitswarm/bbox/BBClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lsfs2x/client/bitswarm/bbox/BBClient;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->port:I

    return v0
.end method

.method static synthetic access$2(Lsfs2x/client/bitswarm/bbox/BBClient;)J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->lastPollingTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lsfs2x/client/bitswarm/bbox/BBClient;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    return-void
.end method

.method static synthetic access$4(Lsfs2x/client/bitswarm/bbox/BBClient;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$5(Lsfs2x/client/bitswarm/bbox/BBClient;Lorg/jboss/netty/channel/Channel;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->channel:Lorg/jboss/netty/channel/Channel;

    return-void
.end method

.method static synthetic access$6(Lsfs2x/client/bitswarm/bbox/BBClient;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method static synthetic access$7(Lsfs2x/client/bitswarm/bbox/BBClient;)Lsfs2x/client/bitswarm/BitSwarmClient;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bitswarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    return-object v0
.end method

.method static synthetic access$8(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/Throwable;Z)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static synthetic access$9(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpResponse(Ljava/lang/String;)V

    return-void
.end method

.method private createRequest(Ljava/lang/String;Ljava/lang/Object;)Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lsfs2x/client/bitswarm/bbox/BBClient;->encodeRequest(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "encodedData":Ljava/lang/String;
    new-instance v4, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v6, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v7, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    iget-object v8, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->uri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 444
    .local v4, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    const-string/jumbo v6, "Host"

    iget-object v7, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string/jumbo v6, "Connection"

    const-string/jumbo v7, "close"

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/x-www-form-urlencoded"

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string/jumbo v6, "Accept-Encoding"

    const-string/jumbo v7, "gzip"

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sfsHttp="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "requestData":Ljava/lang/String;
    const/4 v6, 0x0

    new-array v1, v6, [B

    .line 453
    .local v1, "contentBytes":[B
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 459
    :goto_0
    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 460
    .local v0, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 463
    const-string/jumbo v6, "Content-Length"

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    return-object v4

    .line 455
    .end local v0    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unsupported encoding: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private decodeResponse(Ljava/lang/String;)Lsfs2x/client/util/ByteArray;
    .locals 2
    .param p1, "rawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lsfs2x/client/util/ByteArray;

    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->fromBase64String(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    return-object v0
.end method

.method private dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 551
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 552
    return-void
.end method

.method private encodeRequest(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 509
    const-string/jumbo v0, ""

    .line 511
    .local v0, "encoded":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 512
    const-string/jumbo p1, "null"

    .line 516
    :cond_0
    if-nez p2, :cond_2

    .line 517
    const-string/jumbo p2, "null"

    .line 522
    .end local p2    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, "null"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 534
    return-object v0

    .line 519
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Lsfs2x/client/util/ByteArray;

    if-eqz v2, :cond_1

    .line 520
    check-cast p2, Lsfs2x/client/util/ByteArray;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->toBase64String([B)Ljava/lang/String;

    move-result-object p2

    .local p2, "data":Ljava/lang/String;
    goto :goto_0

    .line 522
    .end local p2    # "data":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    goto :goto_1

    .line 529
    :catch_0
    move-exception v1

    .line 531
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to encode BlueBox Message. Missing UTF-8 support!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fromBase64String(Ljava/lang/String;)[B
    .locals 1
    .param p1, "rawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {p1}, Lsfs2x/client/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private handleConnectionLost(Z)V
    .locals 1
    .param p1, "fireEvent"    # Z

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->handleConnectionLost(ZLjava/lang/String;)V

    .line 470
    return-void
.end method

.method private handleConnectionLost(ZLjava/lang/String;)V
    .locals 4
    .param p1, "fireEvent"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 476
    :try_start_0
    iget-boolean v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    if-eqz v1, :cond_0

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    .line 479
    const/4 v1, 0x0

    iput-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    .line 482
    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 484
    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 485
    const/4 v1, 0x0

    iput-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->channel:Lorg/jboss/netty/channel/Channel;

    .line 488
    if-eqz p1, :cond_0

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v1, Lsfs2x/client/bitswarm/bbox/BBEvent;

    const-string/jumbo v2, "bb-disconnect"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/bitswarm/bbox/BBEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v1, Lsfs2x/client/core/sockets/NettyTerminator;

    iget-object v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-direct {v1, v2}, Lsfs2x/client/core/sockets/NettyTerminator;-><init>(Lorg/jboss/netty/bootstrap/ClientBootstrap;)V

    .line 502
    return-void

    .line 499
    :catchall_0
    move-exception v1

    .line 500
    new-instance v2, Lsfs2x/client/core/sockets/NettyTerminator;

    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-direct {v2, v3}, Lsfs2x/client/core/sockets/NettyTerminator;-><init>(Lorg/jboss/netty/bootstrap/ClientBootstrap;)V

    .line 501
    throw v1
.end method

.method private init(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "bs"    # Lsfs2x/client/bitswarm/BitSwarmClient;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "debug"    # Z

    .prologue
    .line 159
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bitswarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 160
    iput-object p2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;

    .line 161
    iput p3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->port:I

    .line 162
    invoke-virtual {p0, p4}, Lsfs2x/client/bitswarm/bbox/BBClient;->setDebug(Z)V

    .line 164
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lsfs2x/client/core/EventDispatcher;

    invoke-direct {v0, p0}, Lsfs2x/client/core/EventDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    .line 167
    :cond_0
    return-void
.end method

.method private onHttpError(Ljava/lang/Throwable;Z)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "fireDisconnectEvent"    # Z

    .prologue
    .line 303
    invoke-direct {p0, p2}, Lsfs2x/client/bitswarm/bbox/BBClient;->handleConnectionLost(Z)V

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Lsfs2x/client/bitswarm/bbox/BBEvent;

    const-string/jumbo v2, "bb-ioError"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/bitswarm/bbox/BBEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 309
    return-void
.end method

.method private onHttpResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ BB-Receive ]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    :cond_0
    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 321
    .local v12, "reqBits":[Ljava/lang/String;
    array-length v0, v12

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 373
    .end local v12    # "reqBits":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 327
    .restart local v12    # "reqBits":[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    aget-object v8, v12, v0

    .line 328
    .local v8, "cmd":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v9, v12, v0

    .line 330
    .local v9, "data":Ljava/lang/String;
    const-string/jumbo v0, "connect"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iput-object v9, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    .line 335
    new-instance v0, Lsfs2x/client/bitswarm/bbox/BBEvent;

    const-string/jumbo v1, "bb-connect"

    invoke-direct {v0, v1}, Lsfs2x/client/bitswarm/bbox/BBEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 338
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;

    invoke-direct {v1, p0}, Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xafc8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 341
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;->pollNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v8    # "cmd":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v12    # "reqBits":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 371
    .local v10, "e":Ljava/lang/Exception;
    invoke-direct {p0, v10, v13}, Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 344
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "cmd":Ljava/lang/String;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v12    # "reqBits":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v0, "poll"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    const/4 v7, 0x0

    .line 349
    .local v7, "binData":Lsfs2x/client/util/ByteArray;
    const-string/jumbo v0, "null"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 350
    invoke-direct {p0, v9}, Lsfs2x/client/bitswarm/bbox/BBClient;->decodeResponse(Ljava/lang/String;)Lsfs2x/client/util/ByteArray;

    move-result-object v7

    .line 353
    :cond_4
    invoke-direct {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;->pollNext()V

    .line 356
    if-eqz v7, :cond_1

    .line 358
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v11, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "data"

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v0, Lsfs2x/client/bitswarm/bbox/BBEvent;

    const-string/jumbo v1, "bb-data"

    invoke-direct {v0, v1, v11}, Lsfs2x/client/bitswarm/bbox/BBEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0

    .line 363
    .end local v7    # "binData":Lsfs2x/client/util/ByteArray;
    .end local v11    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const-string/jumbo v0, "err01"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Invalid BB session !"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpError(Ljava/lang/Throwable;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private poll()V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->lastPollingTime:J

    .line 389
    const-string/jumbo v0, "poll"

    invoke-direct {p0, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->sendRequest(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method private pollNext()V
    .locals 5

    .prologue
    .line 377
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lsfs2x/client/bitswarm/bbox/BBClient;->getPollSpeed()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 379
    :cond_0
    return-void
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->sendRequest(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method private sendRequest(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 405
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 407
    new-instance v1, Lsfs2x/client/bitswarm/bbox/BBClient$1;

    invoke-direct {v1, p0, p1, p2}, Lsfs2x/client/bitswarm/bbox/BBClient$1;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 419
    return-void
.end method

.method private toBase64String([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 538
    invoke-static {p1}, Lsfs2x/client/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 578
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 580
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->handleConnectionLost(ZLjava/lang/String;)V

    .line 295
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "127.0.0.1"

    const/16 v1, 0x1f90

    invoke-virtual {p0, v0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->connect(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 231
    const/16 v0, 0x1f90

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->connect(Ljava/lang/String;I)V

    .line 232
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 236
    iget-boolean v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    if-eqz v3, :cond_0

    .line 238
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "BB is already connected!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;

    .line 243
    iput p2, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->port:I

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "BlueBox/BlueBox.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bbUrl:Ljava/lang/String;

    .line 249
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bbUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    new-instance v3, Lorg/jboss/netty/bootstrap/ClientBootstrap;

    .line 260
    new-instance v4, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;

    .line 262
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 263
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 260
    invoke-direct {v4, v5, v6}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    invoke-direct {v3, v4}, Lorg/jboss/netty/bootstrap/ClientBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 258
    iput-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    .line 268
    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v1, "http"

    .line 269
    .local v1, "scheme":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 272
    .local v2, "ssl":Z
    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    new-instance v4, Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;

    invoke-direct {v4, p0, v2}, Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;Z)V

    invoke-virtual {v3, v4}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 274
    const-string/jumbo v3, "connect"

    invoke-direct {p0, v3}, Lsfs2x/client/bitswarm/bbox/BBClient;->sendRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "ssl":Z
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Wrong uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->bbUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_1
    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getDispatcher()Lsfs2x/client/core/EventDispatcher;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPollSpeed()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollSpeed:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->port:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->sessId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->debug:Z

    return v0
.end method

.method public send(Lsfs2x/client/util/ByteArray;)V
    .locals 4
    .param p1, "binData"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 279
    iget-boolean v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 280
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "BB sending error: can\'t send data, BlueBox connection is not active"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    :cond_0
    :try_start_0
    const-string/jumbo v1, "data"

    invoke-direct {p0, v1, p1}, Lsfs2x/client/bitswarm/bbox/BBClient;->sendRequest(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BB sending error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 559
    iput-boolean p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->debug:Z

    .line 560
    return-void
.end method

.method public setPollSpeed(I)V
    .locals 1
    .param p1, "pollSpeed"    # I

    .prologue
    .line 564
    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_0

    .end local p1    # "pollSpeed":I
    :goto_0
    iput p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient;->pollSpeed:I

    .line 565
    return-void

    .line 564
    .restart local p1    # "pollSpeed":I
    :cond_0
    const/16 p1, 0x12c

    goto :goto_0
.end method
