.class public Lorg/jboss/netty/channel/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    return-void
.end method

.method public static bind(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "localAddress"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 468
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 470
    return-object v0
.end method

.method public static bind(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 486
    if-nez p2, :cond_0

    .line 487
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 491
    return-void
.end method

.method public static close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 719
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 720
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 722
    return-object v0
.end method

.method public static close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 736
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 738
    return-void
.end method

.method public static connect(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "remoteAddress"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 541
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 543
    return-object v0
.end method

.method public static connect(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 559
    if-nez p2, :cond_0

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 564
    return-void
.end method

.method public static disconnect(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 688
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 689
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 691
    return-object v0
.end method

.method public static disconnect(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 705
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 707
    return-void
.end method

.method public static failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    new-instance v0, Lorg/jboss/netty/channel/FailedChannelFuture;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/FailedChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static filterDownstreamInterestOps(I)I
    .locals 1
    .param p0, "interestOps"    # I

    .prologue
    .line 754
    and-int/lit8 v0, p0, -0x5

    return v0
.end method

.method public static fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 205
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 208
    return-void
.end method

.method public static fireChannelBound(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 220
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 222
    return-void
.end method

.method public static fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 404
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 409
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/Channels;->fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    .line 412
    :cond_0
    return-void
.end method

.method public static fireChannelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 421
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 424
    return-void
.end method

.method public static fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 233
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 236
    return-void
.end method

.method public static fireChannelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 249
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 251
    return-void
.end method

.method public static fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 360
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 363
    return-void
.end method

.method public static fireChannelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 372
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 374
    return-void
.end method

.method public static fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 335
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 338
    return-void
.end method

.method public static fireChannelInterestChanged(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 349
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 352
    return-void
.end method

.method public static fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 172
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/Channels;->fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    .line 176
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 179
    return-void
.end method

.method public static fireChannelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 192
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 194
    return-void
.end method

.method public static fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V
    .locals 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 382
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 384
    return-void
.end method

.method public static fireChannelUnbound(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 394
    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 396
    return-void
.end method

.method private static fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V
    .locals 2
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "childChannel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 448
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 450
    return-void
.end method

.method public static fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 432
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultExceptionEvent;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/DefaultExceptionEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 434
    return-void
.end method

.method public static fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 443
    new-instance v0, Lorg/jboss/netty/channel/DefaultExceptionEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/DefaultExceptionEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 444
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V
    .locals 1
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 262
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 274
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 276
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 287
    new-instance v0, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 288
    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 302
    new-instance v0, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 304
    return-void
.end method

.method public static fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    .locals 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "amount"    # J

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method public static fireWriteComplete(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .locals 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "amount"    # J

    .prologue
    .line 327
    new-instance v0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 328
    return-void
.end method

.method public static future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "cancellable"    # Z

    .prologue
    .line 137
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    return-object v0
.end method

.method public static pipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    return-object v0
.end method

.method public static pipeline(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 5
    .param p0, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 97
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 98
    .local v2, "newPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelPipeline;->toMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/channel/ChannelHandler;

    invoke-interface {v2, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    :cond_0
    return-object v2
.end method

.method public static varargs pipeline([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 5
    .param p0, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "handlers"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_0
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 80
    .local v2, "newPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 81
    aget-object v0, p0, v1

    .line 82
    .local v0, "h":Lorg/jboss/netty/channel/ChannelHandler;
    if-nez v0, :cond_2

    .line 87
    .end local v0    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_1
    return-object v2

    .line 85
    .restart local v0    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_2
    invoke-static {v1}, Lorg/jboss/netty/util/internal/ConversionUtil;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .locals 1
    .param p0, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 113
    new-instance v0, Lorg/jboss/netty/channel/Channels$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/Channels$1;-><init>(Lorg/jboss/netty/channel/ChannelPipeline;)V

    return-object v0
.end method

.method public static setInterestOps(Lorg/jboss/netty/channel/Channel;I)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "interestOps"    # I

    .prologue
    .line 648
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->validateInterestOps(I)V

    .line 649
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->filterDownstreamInterestOps(I)I

    move-result p1

    .line 651
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 652
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 654
    return-object v0
.end method

.method public static setInterestOps(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "interestOps"    # I

    .prologue
    .line 669
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->validateInterestOps(I)V

    .line 670
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->filterDownstreamInterestOps(I)I

    move-result p2

    .line 672
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 676
    return-void
.end method

.method public static succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 145
    instance-of v0, p0, Lorg/jboss/netty/channel/AbstractChannel;

    if-eqz v0, :cond_0

    .line 146
    check-cast p0, Lorg/jboss/netty/channel/AbstractChannel;

    .end local p0    # "channel":Lorg/jboss/netty/channel/Channel;
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getSucceededFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 148
    .restart local p0    # "channel":Lorg/jboss/netty/channel/Channel;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_0
.end method

.method public static unbind(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 519
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 520
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 522
    return-object v0
.end method

.method public static unbind(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 504
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 506
    return-void
.end method

.method private static validateInterestOps(I)V
    .locals 3
    .param p0, "interestOps"    # I

    .prologue
    .line 741
    packed-switch p0, :pswitch_data_0

    .line 748
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid interestOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :pswitch_1
    return-void

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 610
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 611
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 613
    return-object v0
.end method

.method public static write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .locals 1
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 594
    return-void
.end method

.method public static write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 632
    new-instance v0, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 634
    return-void
.end method
