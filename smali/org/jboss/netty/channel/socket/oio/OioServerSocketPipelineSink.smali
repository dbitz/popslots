.class Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "OioServerSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;,
        Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 56
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 9
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "bound":Z
    const/4 v1, 0x0

    .line 137
    .local v1, "bossStarted":Z
    :try_start_0
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 138
    const/4 v2, 0x1

    .line 140
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 141
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object p3

    .line 142
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 144
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;

    iget-object v0, v4, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 146
    .local v0, "bossExecutor":Ljava/util/concurrent/Executor;
    new-instance v4, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v6, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;

    invoke-direct {v6, p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Old I/O server boss ("

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

    .line 151
    const/4 v1, 0x1

    .line 156
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 160
    .end local v0    # "bossExecutor":Ljava/util/concurrent/Executor;
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 154
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 156
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v4
.end method

.method private close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->isBound()Z

    move-result v0

    .line 165
    .local v0, "bound":Z
    :try_start_0
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 170
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->setClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 177
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :goto_0
    :try_start_2
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :goto_1
    return-void

    .line 179
    :cond_1
    :try_start_3
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 186
    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 97
    instance-of v6, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 98
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 99
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    .line 101
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 102
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    .line 103
    .local v4, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 105
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v4}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 128
    .end local v0    # "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v0    # "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .restart local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 113
    :pswitch_1
    if-nez v5, :cond_0

    .line 114
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 118
    :pswitch_2
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v2, v6}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 121
    .end local v0    # "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    :cond_1
    instance-of v6, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 122
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 123
    .local v1, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    .line 124
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 125
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 126
    .local v3, "message":Ljava/lang/Object;
    invoke-static {v0, v2, v3}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_0

    .line 105
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
    .line 69
    instance-of v5, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v5, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 73
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 74
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    .line 76
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 77
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 78
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 87
    :pswitch_1
    if-eqz v4, :cond_2

    .line 88
    check-cast v4, Ljava/net/SocketAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v4}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 90
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 80
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
    .line 60
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 61
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    if-eqz v1, :cond_1

    .line 62
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
