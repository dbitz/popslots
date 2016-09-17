.class final Lorg/jboss/netty/channel/local/LocalClientChannelSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "LocalClientChannelSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/local/LocalClientChannelSink$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->$assertionsDisabled:Z

    .line 42
    const-class v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 46
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .prologue
    .line 94
    :try_start_0
    invoke-static {p3, p1}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->register(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "address already in use: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p3}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 107
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 108
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v1, p1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v2, "already bound"

    invoke-direct {v1, v2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    iput-object p3, p1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 103
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 104
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private connect(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .locals 8
    .param p1, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .prologue
    .line 113
    invoke-static {p3}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->getChannel(Lorg/jboss/netty/channel/local/LocalAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    .line 114
    .local v7, "remoteChannel":Lorg/jboss/netty/channel/Channel;
    instance-of v2, v7, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Ljava/net/ConnectException;

    const-string/jumbo v4, "connection refused"

    invoke-direct {v2, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 149
    :goto_0
    return-void

    :cond_0
    move-object v1, v7

    .line 119
    check-cast v1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    .line 122
    .local v1, "serverChannel":Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    :try_start_0
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .local v3, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 132
    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;-><init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V

    .line 134
    .local v0, "acceptedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iput-object v0, p1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 136
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    new-instance v4, Lorg/jboss/netty/channel/local/LocalAddress;

    const-string/jumbo v5, "ephemeral"

    invoke-direct {v4, v5}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v4}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->bind(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    .line 137
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, p1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 138
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 140
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 141
    iget-object v2, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 143
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 144
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 147
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    .line 148
    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    goto :goto_0

    .line 123
    .end local v0    # "acceptedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v3    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    :catch_0
    move-exception v6

    .line 124
    .local v6, "e":Ljava/lang/Exception;
    invoke-interface {p2, v6}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 125
    invoke-static {p1, v6}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 126
    sget-object v2, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v4, "Failed to initialize an accepted socket."

    invoke-interface {v2, v4, v6}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 49
    instance-of v6, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v6, :cond_3

    move-object v1, p2

    .line 50
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 52
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 54
    .local v0, "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 55
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    .line 56
    .local v4, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 57
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Lorg/jboss/netty/channel/local/LocalClientChannelSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v4}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 90
    .end local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .restart local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-virtual {v0, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 64
    :pswitch_1
    if-eqz v5, :cond_1

    .line 65
    check-cast v5, Lorg/jboss/netty/channel/local/LocalAddress;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->bind(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_0

    .line 67
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 71
    :pswitch_2
    if-eqz v5, :cond_2

    .line 72
    check-cast v5, Lorg/jboss/netty/channel/local/LocalAddress;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->connect(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_0

    .line 74
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    goto :goto_0

    .line 83
    .end local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v6, :cond_0

    move-object v1, p2

    .line 84
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 85
    .local v1, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 86
    .restart local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iget-object v6, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 87
    .local v3, "offered":Z
    sget-boolean v6, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 88
    :cond_4
    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
