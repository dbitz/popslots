.class public abstract Lorg/jboss/netty/channel/AbstractServerChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "AbstractServerChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/ServerChannel;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 1
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 57
    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public getInterestOps()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "interestOps"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected setInterestOpsNow(I)V
    .locals 0
    .param p1, "interestOps"    # I

    .prologue
    .line 82
    return-void
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
