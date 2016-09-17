.class public Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;
.super Lorg/jboss/netty/channel/DefaultServerChannelConfig;
.source "DefaultServerSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;


# instance fields
.field private volatile backlog:I

.field private final socket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/net/ServerSocket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/ServerSocket;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    .line 47
    return-void
.end method


# virtual methods
.method public getBacklog()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getReceiveBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getReuseAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBacklog(I)V
    .locals 3
    .param p1, "backlog"    # I

    .prologue
    .line 108
    if-gez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backlog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->backlog:I

    .line 112
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return v0

    .line 55
    :cond_0
    const-string/jumbo v1, "receiveBufferSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->setReceiveBufferSize(I)V

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v1, "reuseAddress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->setReuseAddress(Z)V

    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v1, "backlog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->setBacklog(I)V

    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V

    .line 101
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .locals 2
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1, p1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
