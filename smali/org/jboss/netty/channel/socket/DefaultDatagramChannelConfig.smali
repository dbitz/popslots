.class public Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;
.super Lorg/jboss/netty/channel/DefaultChannelConfig;
.source "DefaultDatagramChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannelConfig;


# static fields
.field private static final DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;


# instance fields
.field private volatile predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

.field private volatile predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

.field private final socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;

    const/16 v1, 0x300

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/FixedReceiveBufferSizePredictorFactory;-><init>(I)V

    sput-object v0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    .line 49
    sget-object v0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->DEFAULT_PREDICTOR_FACTORY:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    .line 59
    return-void
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .locals 5

    .prologue
    .line 272
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 273
    .local v1, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    if-nez v1, :cond_0

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;->getPredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create a new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-object v0
.end method

.method public getSendBufferSize()I
    .locals 2

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getSendBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimeToLive()I
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getTimeToLive()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getTrafficClass()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBroadcast()Z
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getBroadcast()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isLoopbackModeDisabled()Z
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getLoopbackMode()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getReuseAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBroadcast(Z)V
    .locals 2
    .param p1, "broadcast"    # Z

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 124
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setLoopbackModeDisabled(Z)V
    .locals 2
    .param p1, "loopbackModeDisabled"    # Z

    .prologue
    .line 148
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 172
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 179
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 67
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "broadcast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setBroadcast(Z)V

    goto :goto_0

    .line 69
    :cond_1
    const-string/jumbo v1, "receiveBufferSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSize(I)V

    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v1, "sendBufferSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setSendBufferSize(I)V

    goto :goto_0

    .line 73
    :cond_3
    const-string/jumbo v1, "receiveBufferSizePredictorFactory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    check-cast p2, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V

    goto :goto_0

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v1, "receiveBufferSizePredictor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    check-cast p2, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V

    goto :goto_0

    .line 77
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v1, "reuseAddress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setReuseAddress(Z)V

    goto :goto_0

    .line 79
    :cond_6
    const-string/jumbo v1, "loopbackModeDisabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 80
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setLoopbackModeDisabled(Z)V

    goto :goto_0

    .line 81
    :cond_7
    const-string/jumbo v1, "interface"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 82
    check-cast p2, Ljava/net/InetAddress;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setInterface(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    check-cast p2, Ljava/net/NetworkInterface;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    goto/16 :goto_0

    .line 85
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v1, "timeToLive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 86
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setTimeToLive(I)V

    goto/16 :goto_0

    .line 87
    :cond_a
    const-string/jumbo v1, "trafficClass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 88
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setTrafficClass(I)V

    goto/16 :goto_0

    .line 90
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
    .locals 2
    .param p1, "predictor"    # Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "predictor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictor:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    .line 292
    return-void
.end method

.method public setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
    .locals 2
    .param p1, "predictorFactory"    # Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "predictorFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->predictorFactory:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    .line 303
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 2
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "sendBufferSize"    # I

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTimeToLive(I)V
    .locals 2
    .param p1, "ttl"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    check-cast v1, Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setTrafficClass(I)V
    .locals 2
    .param p1, "trafficClass"    # I

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
