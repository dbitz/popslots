.class Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "NioDatagramPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final id:I

.field private final workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final workers:[Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->$assertionsDisabled:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 5
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 48
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->id:I

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-array v1, p2, [Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->id:I

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;-><init>(IILjava/util/concurrent/Executor;)V

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V
    .locals 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 144
    .local v1, "started":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 148
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 150
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->register(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v1, 0x1

    .line 156
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 160
    :cond_0
    return-void

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 154
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 156
    :cond_1
    throw v3
.end method

.method private close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 119
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 121
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 124
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 130
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private connect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 166
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    .line 167
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 168
    .local v1, "connected":Z
    const/4 v3, 0x0

    .line 170
    .local v3, "workerStarted":Z
    sget-object v4, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v4}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 174
    const/4 v4, 0x0

    iput-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 177
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 178
    const/4 v1, 0x1

    .line 181
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 182
    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 187
    if-nez v0, :cond_1

    .line 188
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v4, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->register(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    const/4 v3, 0x1

    .line 196
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 197
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    :goto_0
    invoke-virtual {v4, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 200
    :cond_2
    return-void

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 194
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 197
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    goto :goto_0

    .line 196
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    .line 197
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v5, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 196
    :cond_3
    throw v4
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 9
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 79
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 80
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v7, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v7, :cond_3

    move-object v5, p2

    .line 81
    check-cast v5, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 82
    .local v5, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    .line 83
    .local v4, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 84
    .local v6, "value":Ljava/lang/Object;
    sget-object v7, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v4}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 114
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v5    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v6    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v7, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 91
    :pswitch_1
    if-eqz v6, :cond_1

    .line 92
    check-cast v6, Ljava/net/InetSocketAddress;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v6}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    .line 94
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v7, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 98
    :pswitch_2
    if-eqz v6, :cond_2

    .line 99
    check-cast v6, Ljava/net/InetSocketAddress;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v6}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 101
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v0, v2, v8}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 108
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_3
    instance-of v7, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v7, :cond_0

    move-object v1, p2

    .line 109
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 110
    .local v1, "event":Lorg/jboss/netty/channel/MessageEvent;
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v7, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 111
    .local v3, "offered":Z
    sget-boolean v7, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-nez v3, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 112
    :cond_4
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v7, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
