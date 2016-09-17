.class Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "OioDatagramPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink$1;
    }
.end annotation


# instance fields
.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 48
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 9
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "bound":Z
    const/4 v2, 0x0

    .line 95
    .local v2, "workerStarted":Z
    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3, p3}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 96
    const/4 v0, 0x1

    .line 99
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 100
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 103
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;

    invoke-direct {v6, p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Old I/O datagram worker ("

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

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    const/4 v2, 0x1

    .line 113
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 114
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 111
    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 114
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 113
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 114
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v3
.end method

.method private connect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 10
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 123
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isBound()Z

    move-result v0

    .line 124
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 125
    .local v1, "connected":Z
    const/4 v4, 0x0

    .line 127
    .local v4, "workerStarted":Z
    sget-object v6, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v6}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 131
    const/4 v6, 0x0

    iput-object v6, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 134
    :try_start_0
    iget-object v6, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v6, p3}, Ljava/net/MulticastSocket;->connect(Ljava/net/SocketAddress;)V

    .line 135
    const/4 v1, 0x1

    .line 138
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 139
    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-static {p1, v6}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 142
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-static {p1, v6}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Old I/O datagram worker ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "threadName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 147
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v8, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v9, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;

    invoke-direct {v9, p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V

    invoke-direct {v8, v9, v3}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/jboss/netty/util/internal/IoWorkerRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 168
    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    .line 169
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 172
    .end local v3    # "threadName":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 153
    .restart local v3    # "threadName":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .local v5, "workerThread":Ljava/lang/Thread;
    if-eqz v5, :cond_1

    .line 156
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v6

    goto :goto_0

    .line 164
    .end local v3    # "threadName":Ljava/lang/String;
    .end local v5    # "workerThread":Ljava/lang/Thread;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 166
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    .line 169
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_1

    .line 168
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    if-nez v4, :cond_4

    .line 169
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_4
    throw v6
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
    .line 52
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    .line 53
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 54
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v6, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v6, :cond_3

    move-object v4, p2

    .line 55
    check-cast v4, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 56
    .local v4, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 57
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 58
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 87
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 65
    :pswitch_1
    if-eqz v5, :cond_1

    .line 66
    check-cast v5, Ljava/net/SocketAddress;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 68
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 72
    :pswitch_2
    if-eqz v5, :cond_2

    .line 73
    check-cast v5, Ljava/net/SocketAddress;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->connect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 75
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->disconnect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 79
    :pswitch_3
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v2, v6}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 82
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_3
    instance-of v6, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v6, :cond_0

    move-object v1, p2

    .line 83
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 84
    .local v1, "evt":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {v0, v2, v6, v7}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
