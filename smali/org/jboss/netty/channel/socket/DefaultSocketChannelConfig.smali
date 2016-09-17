.class public Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;
.super Lorg/jboss/netty/channel/DefaultChannelConfig;
.source "DefaultSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    .line 47
    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 2

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getReceiveBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I
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

.method public getSoLinger()I
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoLinger()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getTrafficClass()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .locals 2

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getKeepAlive()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getReuseAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .locals 2

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getTcpNoDelay()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)V
    .locals 2
    .param p1, "keepAlive"    # Z

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
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

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setReceiveBufferSize(I)V

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v1, "sendBufferSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setSendBufferSize(I)V

    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v1, "tcpNoDelay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setTcpNoDelay(Z)V

    goto :goto_0

    .line 61
    :cond_3
    const-string/jumbo v1, "keepAlive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setKeepAlive(Z)V

    goto :goto_0

    .line 63
    :cond_4
    const-string/jumbo v1, "reuseAddress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setReuseAddress(Z)V

    goto :goto_0

    .line 65
    :cond_5
    const-string/jumbo v1, "soLinger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setSoLinger(I)V

    goto :goto_0

    .line 67
    :cond_6
    const-string/jumbo v1, "trafficClass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setTrafficClass(I)V

    goto :goto_0

    .line 70
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 142
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .locals 2
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "sendBufferSize"    # I

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSoLinger(I)V
    .locals 4
    .param p1, "soLinger"    # I

    .prologue
    .line 170
    if-gez p1, :cond_0

    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpNoDelay(Z)V
    .locals 2
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)V
    .locals 2
    .param p1, "trafficClass"    # I

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
