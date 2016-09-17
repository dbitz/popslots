.class Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "OioClientSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink$1;
    }
.end annotation


# instance fields
.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 95
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 96
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 99
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private connect(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 10
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->isBound()Z

    move-result v0

    .line 108
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "connected":Z
    const/4 v3, 0x0

    .line 111
    .local v3, "workerStarted":Z
    sget-object v4, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v4}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 114
    :try_start_0
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 116
    const/4 v1, 0x1

    .line 119
    new-instance v4, Ljava/io/PushbackInputStream;

    iget-object v5, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->in:Ljava/io/PushbackInputStream;

    .line 120
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->out:Ljava/io/OutputStream;

    .line 123
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 124
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 130
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v6, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v7, Lorg/jboss/netty/channel/socket/oio/OioWorker;

    invoke-direct {v7, p1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Old I/O client worker ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/jboss/netty/util/internal/IoWorkerRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v3, 0x1

    .line 140
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    .line 141
    :goto_0
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 144
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 138
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 141
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 140
    :cond_2
    throw v4
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 7
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;

    .line 54
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 55
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v5, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 56
    check-cast v3, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 57
    .local v3, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    .line 58
    .local v2, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 88
    .end local v2    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v3    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v4    # "value":Ljava/lang/Object;
    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v2    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v3    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 66
    :pswitch_1
    if-eqz v4, :cond_1

    .line 67
    check-cast v4, Ljava/net/SocketAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1, v4}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 69
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 73
    :pswitch_2
    if-eqz v4, :cond_2

    .line 74
    check-cast v4, Ljava/net/SocketAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1, v4}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 76
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 80
    :pswitch_3
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 83
    .end local v2    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v3    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_3
    instance-of v5, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v5, :cond_0

    .line 84
    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
