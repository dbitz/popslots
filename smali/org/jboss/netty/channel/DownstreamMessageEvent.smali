.class public Lorg/jboss/netty/channel/DownstreamMessageEvent;
.super Ljava/lang/Object;
.source "DownstreamMessageEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/MessageEvent;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final message:Ljava/lang/Object;

.field private final remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "future"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    if-nez p3, :cond_2

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->channel:Lorg/jboss/netty/channel/Channel;

    .line 55
    iput-object p2, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 56
    iput-object p3, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->message:Ljava/lang/Object;

    .line 57
    if-eqz p4, :cond_3

    .line 58
    iput-object p4, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    goto :goto_0
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
