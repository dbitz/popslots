.class final Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "HttpTunnelingClientSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 39
    return-void
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
    .line 43
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    .line 44
    .local v0, "channel":Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 45
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v5, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 46
    check-cast v3, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 47
    .local v3, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    .line 48
    .local v2, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 76
    .end local v2    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v3    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v4    # "value":Ljava/lang/Object;
    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v2    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v3    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->closeReal(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 56
    :pswitch_1
    if-eqz v4, :cond_1

    .line 57
    check-cast v4, Ljava/net/SocketAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v4, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->bindReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 59
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->unbindReal(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 63
    :pswitch_2
    if-eqz v4, :cond_2

    .line 64
    check-cast v4, Ljava/net/SocketAddress;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v4, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->connectReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 66
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->closeReal(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 70
    :pswitch_3
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->setInterestOpsReal(ILorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 73
    .end local v2    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v3    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_3
    instance-of v5, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v5, :cond_0

    .line 74
    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v5, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->writeReal(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
