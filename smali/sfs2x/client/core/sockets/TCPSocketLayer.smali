.class public Lsfs2x/client/core/sockets/TCPSocketLayer;
.super Ljava/lang/Object;
.source "TCPSocketLayer.java"

# interfaces
.implements Lsfs2x/client/core/sockets/ISocketLayer;
.implements Lsfs2x/client/core/IDispatchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;
    }
.end annotation


# static fields
.field private static final BOSS_THREADS_NUM_KEY:Ljava/lang/String; = "com.smartfoxserver.bossThreadsNum"

.field private static final StateConnected:I = 0x2

.field private static final StateConnecting:I = 0x1

.field private static final StateDisconnected:I = 0x0

.field private static final StateDisconnecting:I = 0x3

.field private static final TransConnectionFailure:I = 0x2

.field private static final TransConnectionSuccess:I = 0x1

.field private static final TransDisconnect:I = 0x3

.field private static final TransStartConnect:I = 0x0

.field private static final WORKER_THREADS_NUM_KEY:Ljava/lang/String; = "com.smartfoxserver.workerThreadsNum"


# instance fields
.field private bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

.field private channel:Lorg/jboss/netty/channel/Channel;

.field private channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private dispatcher:Lsfs2x/client/core/EventDispatcher;

.field private fsm:Lsfs2x/fsm/FiniteStateMachine;

.field private ipAddress:Ljava/lang/String;

.field private log:Lorg/slf4j/Logger;

.field private socketNumber:I

.field private socketPollSleep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->initStates()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->log:Lorg/slf4j/Logger;

    .line 73
    new-instance v0, Lsfs2x/client/core/EventDispatcher;

    invoke-direct {v0, p0}, Lsfs2x/client/core/EventDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/core/sockets/TCPSocketLayer;Lorg/jboss/netty/channel/Channel;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/core/sockets/TCPSocketLayer;)Lsfs2x/fsm/FiniteStateMachine;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    return-object v0
.end method

.method static synthetic access$2(Lsfs2x/client/core/sockets/TCPSocketLayer;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->callOnConnect()V

    return-void
.end method

.method static synthetic access$3(Lsfs2x/client/core/sockets/TCPSocketLayer;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->releaseResources()V

    return-void
.end method

.method static synthetic access$4(Lsfs2x/client/core/sockets/TCPSocketLayer;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$5(Lsfs2x/client/core/sockets/TCPSocketLayer;)Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$6(Lsfs2x/client/core/sockets/TCPSocketLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lsfs2x/client/core/sockets/TCPSocketLayer;[B)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleBinaryData([B)V

    return-void
.end method

.method static synthetic access$8(Lsfs2x/client/core/sockets/TCPSocketLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleErrorThread(Ljava/lang/String;)V

    return-void
.end method

.method private callOnConnect()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lsfs2x/client/core/sockets/SocketEvent;

    const-string/jumbo v1, "OnConnect"

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/SocketEvent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "event":Lsfs2x/client/core/sockets/SocketEvent;
    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v1, v0}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 207
    return-void
.end method

.method private callOnData([B)V
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 193
    new-instance v0, Lsfs2x/client/core/sockets/SocketEvent;

    const-string/jumbo v1, "OnData"

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/SocketEvent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "event":Lsfs2x/client/core/sockets/SocketEvent;
    invoke-virtual {v0}, Lsfs2x/client/core/sockets/SocketEvent;->getArguments()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v1, v0}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 196
    return-void
.end method

.method private callOnDisconnect()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lsfs2x/client/core/sockets/SocketEvent;

    const-string/jumbo v1, "OnDisconnect"

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/SocketEvent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "event":Lsfs2x/client/core/sockets/SocketEvent;
    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v1, v0}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 212
    return-void
.end method

.method private callOnError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Lsfs2x/client/core/sockets/SocketEvent;

    const-string/jumbo v1, "OnError"

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/SocketEvent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "event":Lsfs2x/client/core/sockets/SocketEvent;
    invoke-virtual {v0}, Lsfs2x/client/core/sockets/SocketEvent;->getArguments()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v1, v0}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 202
    return-void
.end method

.method private handleBinaryData([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->callOnData([B)V

    .line 189
    return-void
.end method

.method private handleDisconnection()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleDisconnection(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private handleDisconnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 170
    if-nez p1, :cond_0

    .line 171
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->callOnDisconnect()V

    goto :goto_0
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lsfs2x/client/core/sockets/TCPSocketLayer$1;

    invoke-direct {v0, p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer$1;-><init>(Lsfs2x/client/core/sockets/TCPSocketLayer;Ljava/lang/String;)V

    .line 137
    .local v0, "handleErrorRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    .local v1, "runner":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method private handleErrorThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 145
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->releaseResources()V

    .line 148
    invoke-virtual {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->logError(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->callOnError(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleDisconnection()V

    goto :goto_0
.end method

.method private initNetty()V
    .locals 6

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 79
    .local v1, "properties":Ljava/util/Properties;
    const/4 v0, 0x1

    .line 83
    .local v0, "bossThreadsNum":I
    :try_start_0
    const-string/jumbo v3, "com.smartfoxserver.bossThreadsNum"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 87
    :goto_0
    const/4 v2, 0x1

    .line 90
    .local v2, "workerThreadsNum":I
    :try_start_1
    const-string/jumbo v3, "com.smartfoxserver.workerThreadsNum"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 94
    :goto_1
    new-instance v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;

    .line 96
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 97
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 94
    iput-object v3, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 99
    return-void

    .line 92
    :catch_0
    move-exception v3

    goto :goto_1

    .line 85
    .end local v2    # "workerThreadsNum":I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private initStates()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lsfs2x/fsm/FiniteStateMachine;

    invoke-direct {v0}, Lsfs2x/fsm/FiniteStateMachine;-><init>()V

    iput-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    .line 104
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsfs2x/fsm/FiniteStateMachine;->addAllStates(I)V

    .line 106
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v2, v3, v2}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 107
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v3, v4, v3}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 108
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v3, v2, v4}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 109
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v2, v1}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 112
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v2}, Lsfs2x/fsm/FiniteStateMachine;->setCurrentState(I)V

    .line 113
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TCPSocketLayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TCPSocketLayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 282
    :cond_0
    iput-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    .line 283
    iput-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 286
    new-instance v0, Lsfs2x/client/core/sockets/NettyTerminator;

    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-direct {v0, v1}, Lsfs2x/client/core/sockets/NettyTerminator;-><init>(Lorg/jboss/netty/bootstrap/ClientBootstrap;)V

    .line 287
    return-void
.end method

.method private writeSocket([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 176
    invoke-virtual {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 178
    const-string/jumbo v0, "Trying to write to disconnected socket"

    invoke-direct {p0, v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->logError(Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 219
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/core/EventDispatcher;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 220
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "adr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 224
    invoke-virtual {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v0, "Calling connect when the socket is not disconnected"

    invoke-direct {p0, v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->logWarn(Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->initNetty()V

    .line 232
    iput p2, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->socketNumber:I

    .line 233
    iput-object p1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->ipAddress:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 237
    new-instance v0, Lorg/jboss/netty/bootstrap/ClientBootstrap;

    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-direct {v0, v1}, Lorg/jboss/netty/bootstrap/ClientBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    iput-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    .line 238
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    new-instance v1, Lsfs2x/client/core/sockets/TCPSocketLayer$2;

    invoke-direct {v1, p0}, Lsfs2x/client/core/sockets/TCPSocketLayer$2;-><init>(Lsfs2x/client/core/sockets/TCPSocketLayer;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 247
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->ipAddress:Ljava/lang/String;

    iget v3, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->socketNumber:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->disconnect(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 260
    const-string/jumbo v1, "Calling disconnect when the socket is not connected"

    invoke-direct {p0, v1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->logWarn(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 267
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->disconnect()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_1
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->handleDisconnection(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Disconnection error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->logWarn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDispatcher()Lsfs2x/client/core/EventDispatcher;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    return-object v0
.end method

.method public getSocketPollSleep()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->socketPollSleep:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0}, Lsfs2x/fsm/FiniteStateMachine;->getCurrentState()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->disconnect()Lorg/jboss/netty/channel/ChannelFuture;

    .line 295
    return-void
.end method

.method public requiresConnection()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public setSocketPollSleep(I)V
    .locals 0
    .param p1, "socketPollSleep"    # I

    .prologue
    .line 314
    iput p1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer;->socketPollSleep:I

    .line 315
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->writeSocket([B)V

    .line 305
    return-void
.end method
