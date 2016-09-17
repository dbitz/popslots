.class Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "NioClientSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$2;,
        Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;,
        Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

.field final bossExecutor:Ljava/util/concurrent/Executor;

.field final id:I

.field private final workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->$assertionsDisabled:Z

    .line 59
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V
    .locals 5
    .param p1, "bossExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "workerCount"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 63
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->id:I

    .line 65
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;)V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    .line 67
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 72
    new-array v1, p3, [Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->id:I

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, p2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;-><init>(IILjava/util/concurrent/Executor;)V

    aput-object v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->boundManually:Z

    .line 127
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->setBound()V

    .line 128
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 129
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 132
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .param p2, "cf"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v1, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->register(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 161
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;

    invoke-direct {v2, p0, p2}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 151
    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 152
    iput-object p2, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 153
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    invoke-virtual {v1, p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->register(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 158
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 159
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    instance-of v6, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v6, :cond_3

    move-object v1, p2

    .line 81
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 82
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 84
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 85
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    .line 86
    .local v4, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 88
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v4}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 119
    .end local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .restart local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 95
    :pswitch_1
    if-eqz v5, :cond_1

    .line 96
    check-cast v5, Ljava/net/SocketAddress;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 98
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 102
    :pswitch_2
    if-eqz v5, :cond_2

    .line 103
    check-cast v5, Ljava/net/SocketAddress;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 105
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 109
    :pswitch_3
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v0, v2, v7}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 112
    .end local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    :cond_3
    instance-of v6, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v6, :cond_0

    move-object v1, p2

    .line 113
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 114
    .local v1, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 115
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 116
    .local v3, "offered":Z
    sget-boolean v6, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 117
    :cond_4
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
