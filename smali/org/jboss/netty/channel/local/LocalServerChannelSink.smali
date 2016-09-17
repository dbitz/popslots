.class final Lorg/jboss/netty/channel/local/LocalServerChannelSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "LocalServerChannelSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/local/LocalServerChannelSink$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/jboss/netty/channel/local/LocalServerChannelSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 40
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .prologue
    .line 115
    :try_start_0
    invoke-static {p3, p1}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->register(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
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

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p3}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 127
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 128
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_1
    iget-object v1, p1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v2, "already bound"

    invoke-direct {v1, v2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    iput-object p3, p1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 123
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 124
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private close(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->setClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 136
    iget-object v0, p1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 137
    .local v0, "localAddress":Lorg/jboss/netty/channel/local/LocalAddress;
    iget-object v2, p1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 139
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 140
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 142
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 150
    .end local v0    # "localAddress":Lorg/jboss/netty/channel/local/LocalAddress;
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 148
    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleAcceptedChannel(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 80
    instance-of v6, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 81
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 82
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 83
    .local v0, "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 84
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    .line 85
    .local v4, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 87
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Lorg/jboss/netty/channel/local/LocalServerChannelSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v4}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 111
    .end local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 89
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

    .line 90
    invoke-virtual {v0, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 95
    :pswitch_1
    if-nez v5, :cond_0

    .line 96
    invoke-virtual {v0, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    goto :goto_0

    .line 104
    .end local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v1    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v4    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 105
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 106
    .local v1, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 107
    .restart local v0    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iget-object v6, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 108
    .local v3, "offered":Z
    sget-boolean v6, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 109
    :cond_2
    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleServerChannel(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 7
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 53
    instance-of v5, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v5, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 57
    check-cast v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 58
    .local v1, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    .line 60
    .local v0, "channel":Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 61
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 62
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 63
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/local/LocalServerChannelSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->close(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 70
    :pswitch_1
    if-eqz v4, :cond_2

    .line 71
    check-cast v4, Lorg/jboss/netty/channel/local/LocalAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v4}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->bind(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_0

    .line 73
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->close(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 63
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
    .line 43
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 44
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    if-eqz v1, :cond_1

    .line 45
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->handleServerChannel(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    instance-of v1, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->handleAcceptedChannel(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
