.class Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "NioServerSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$1;,
        Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final id:I

.field private final workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->$assertionsDisabled:Z

    .line 55
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 5
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 59
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->id:I

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    new-array v1, p2, [Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->id:I

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;-><init>(IILjava/util/concurrent/Executor;)V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 9
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "bound":Z
    const/4 v1, 0x0

    .line 148
    .local v1, "bossStarted":Z
    :try_start_0
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 149
    const/4 v2, 0x1

    .line 151
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 152
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 154
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;

    iget-object v0, v4, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 156
    .local v0, "bossExecutor":Ljava/util/concurrent/Executor;
    new-instance v4, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v6, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;

    invoke-direct {v6, p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "New I/O server boss #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/jboss/netty/util/internal/IoWorkerRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    const/4 v1, 0x1

    .line 167
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 168
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 171
    .end local v0    # "bossExecutor":Ljava/util/concurrent/Executor;
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 165
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 168
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 167
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 168
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v4
.end method

.method private close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 174
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->isBound()Z

    move-result v0

    .line 176
    .local v0, "bound":Z
    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 178
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->selector:Ljava/nio/channels/Selector;

    .line 179
    .local v1, "selector":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 187
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :cond_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :try_start_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->setClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 194
    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    :try_start_2
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    :goto_1
    return-void

    .line 196
    :cond_2
    :try_start_3
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v3

    :try_start_4
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 203
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 109
    instance-of v6, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 110
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 111
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 112
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 113
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    .line 114
    .local v4, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 116
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v4}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 139
    .end local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .restart local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 124
    :pswitch_1
    if-nez v5, :cond_0

    .line 125
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v0, v2, v7}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 132
    .end local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    :cond_1
    instance-of v6, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 133
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 134
    .local v1, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 135
    .restart local v0    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 136
    .local v3, "offered":Z
    sget-boolean v6, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 137
    :cond_2
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v6, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 7
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 81
    instance-of v5, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v5, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 85
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 86
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    .line 88
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 89
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 90
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 92
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 99
    :pswitch_1
    if-eqz v4, :cond_2

    .line 100
    check-cast v4, Ljava/net/SocketAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v4}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 102
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 73
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workers:[Lorg/jboss/netty/channel/socket/nio/NioWorker;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
