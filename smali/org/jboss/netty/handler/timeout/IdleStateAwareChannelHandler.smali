.class public Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "IdleStateAwareChannelHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleStateEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/handler/timeout/IdleStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 57
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v0, p2, Lorg/jboss/netty/handler/timeout/IdleStateEvent;

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Lorg/jboss/netty/handler/timeout/IdleStateEvent;

    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;->channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleStateEvent;)V

    .line 50
    :goto_0
    return-void

    .line 48
    .restart local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
