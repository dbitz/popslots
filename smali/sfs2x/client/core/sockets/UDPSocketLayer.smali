.class public Lsfs2x/client/core/sockets/UDPSocketLayer;
.super Ljava/lang/Object;
.source "UDPSocketLayer.java"

# interfaces
.implements Lsfs2x/client/core/sockets/ISocketLayer;
.implements Lsfs2x/client/core/IDispatchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;
    }
.end annotation


# instance fields
.field private channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

.field private dispatcher:Lsfs2x/client/core/EventDispatcher;

.field private factory:Lorg/jboss/netty/channel/socket/DatagramChannelFactory;

.field private ipAddress:Ljava/lang/String;

.field private isDisconnecting:Z

.field private log:Lorg/slf4j/Logger;

.field private socketNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->isDisconnecting:Z

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->log:Lorg/slf4j/Logger;

    .line 38
    new-instance v0, Lsfs2x/client/core/EventDispatcher;

    invoke-direct {v0, p0}, Lsfs2x/client/core/EventDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/core/sockets/UDPSocketLayer;[B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->handleBinaryData([B)V

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lsfs2x/client/core/sockets/UDPSocketLayer;)Lorg/jboss/netty/channel/socket/DatagramChannel;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    return-object v0
.end method

.method static synthetic access$3(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->handleErrorThread(Ljava/lang/String;)V

    return-void
.end method

.method private callOnData([B)V
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 67
    new-instance v0, Lsfs2x/client/core/sockets/SocketEvent;

    const-string/jumbo v1, "OnData"

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/SocketEvent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "event":Lsfs2x/client/core/sockets/SocketEvent;
    invoke-virtual {v0}, Lsfs2x/client/core/sockets/SocketEvent;->getArguments()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v1, v0}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 70
    return-void
.end method

.method private callOnError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lsfs2x/client/core/sockets/SocketEvent;

    const-string/jumbo v1, "OnError"

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/SocketEvent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "event":Lsfs2x/client/core/sockets/SocketEvent;
    invoke-virtual {v0}, Lsfs2x/client/core/sockets/SocketEvent;->getArguments()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v1, v0}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 76
    return-void
.end method

.method private handleBinaryData([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->callOnData([B)V

    .line 80
    return-void
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lsfs2x/client/core/sockets/UDPSocketLayer$1;

    invoke-direct {v0, p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer$1;-><init>(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V

    .line 49
    .local v0, "handleErrorRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .local v1, "runner":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method private handleErrorThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lsfs2x/client/core/sockets/UDPSocketLayer;->releaseResources()V

    .line 56
    iget-boolean v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->isDisconnecting:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->logError(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->callOnError(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UDPSocketLayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/DatagramChannel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 136
    :cond_0
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->factory:Lorg/jboss/netty/channel/socket/DatagramChannelFactory;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->factory:Lorg/jboss/netty/channel/socket/DatagramChannelFactory;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/DatagramChannelFactory;->releaseExternalResources()V

    .line 140
    :cond_1
    iput-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->factory:Lorg/jboss/netty/channel/socket/DatagramChannelFactory;

    .line 141
    iput-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    .line 142
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 87
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 88
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "adr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 91
    iput-object p1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->ipAddress:Ljava/lang/String;

    .line 92
    iput p2, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->socketNumber:I

    .line 94
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->factory:Lorg/jboss/netty/channel/socket/DatagramChannelFactory;

    .line 95
    new-instance v0, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;

    iget-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->factory:Lorg/jboss/netty/channel/socket/DatagramChannelFactory;

    invoke-direct {v0, v1}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 97
    .local v0, "b":Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
    new-instance v1, Lsfs2x/client/core/sockets/UDPSocketLayer$2;

    invoke-direct {v1, p0}, Lsfs2x/client/core/sockets/UDPSocketLayer$2;-><init>(Lsfs2x/client/core/sockets/UDPSocketLayer;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 104
    const-string/jumbo v1, "broadcast"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string/jumbo v1, "receiveBufferSizePredictorFactory"

    new-instance v2, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/DatagramChannel;

    iput-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    .line 107
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->isDisconnecting:Z

    .line 126
    invoke-direct {p0}, Lsfs2x/client/core/sockets/UDPSocketLayer;->releaseResources()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->isDisconnecting:Z

    .line 129
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public getDispatcher()Lsfs2x/client/core/EventDispatcher;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public kill()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public requiresConnection()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public write([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;

    invoke-static {p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->ipAddress:Ljava/lang/String;

    iget v5, p0, Lsfs2x/client/core/sockets/UDPSocketLayer;->socketNumber:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/channel/socket/DatagramChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error writing UDP data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->logError(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->handleError(Ljava/lang/String;)V

    goto :goto_0
.end method
