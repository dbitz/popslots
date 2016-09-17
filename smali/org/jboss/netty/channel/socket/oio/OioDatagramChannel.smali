.class final Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "OioDatagramChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannel;


# instance fields
.field private final config:Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

.field final interestOpsLock:Ljava/lang/Object;

.field private volatile localAddress:Ljava/net/InetSocketAddress;

.field volatile remoteAddress:Ljava/net/InetSocketAddress;

.field final socket:Ljava/net/MulticastSocket;

.field volatile workerThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 3
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    .line 64
    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 71
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setBroadcast(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    new-instance v1, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-direct {v1, v2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Ljava/net/DatagramSocket;)V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    .line 78
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 79
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v2, "Failed to open a datagram socket."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v2, "Failed to configure the datagram socket timeout."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureBound()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/jboss/netty/channel/socket/DatagramChannel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be bound to join a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->localAddress:Ljava/net/InetSocketAddress;

    .line 87
    .local v1, "localAddress":Ljava/net/InetSocketAddress;
    if-nez v1, :cond_0

    .line 89
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v1

    .line 96
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v2

    .line 93
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 101
    .local v1, "remoteAddress":Ljava/net/InetSocketAddress;
    if-nez v1, :cond_0

    .line 103
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v1

    .line 110
    :goto_0
    return-object v3

    .line 105
    :catch_0
    move-exception v2

    .line 107
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->ensureBound()V

    .line 143
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->ensureBound()V

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1, p2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1, p2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setClosed()Z
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method protected setInterestOpsNow(I)V
    .locals 0
    .param p1, "interestOps"    # I

    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOpsNow(I)V

    .line 129
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 133
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method
