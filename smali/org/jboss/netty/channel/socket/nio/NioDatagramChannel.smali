.class Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "NioDatagramChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;,
        Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteRequestQueue;
    }
.end annotation


# instance fields
.field private final config:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

.field currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

.field currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

.field private final datagramChannel:Ljava/nio/channels/DatagramChannel;

.field final highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field inWriteNowLoop:Z

.field final interestOpsLock:Ljava/lang/Object;

.field private volatile localAddress:Ljava/net/InetSocketAddress;

.field volatile remoteAddress:Ljava/net/InetSocketAddress;

.field final worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

.field final writeBufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field final writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field final writeLock:Ljava/lang/Object;

.field writeSuspended:Z

.field final writeTask:Ljava/lang/Runnable;

.field final writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;)V
    .locals 2
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p4, "worker"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeTask:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteRequestQueue;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteRequestQueue;-><init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    iput-object p4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    .line 127
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->openNonBlockingChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    .line 128
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;-><init>(Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    .line 130
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 131
    return-void
.end method

.method private openNonBlockingChannel()Ljava/nio/channels/DatagramChannel;
    .locals 4

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 136
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-object v0

    .line 138
    .end local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v3, "Failed to open a DatagramChannel."

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    return-object v0
.end method

.method getDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public getInterestOps()I
    .locals 5

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    const/4 v1, 0x4

    .line 220
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v1

    .line 199
    .local v1, "interestOps":I
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 200
    .local v3, "writeBufferSize":I
    if-eqz v3, :cond_4

    .line 201
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    .line 202
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    .line 203
    .local v2, "lowWaterMark":I
    if-lt v3, v2, :cond_1

    .line 204
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 206
    :cond_1
    and-int/lit8 v1, v1, -0x5

    goto :goto_0

    .line 209
    .end local v2    # "lowWaterMark":I
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    .line 210
    .local v0, "highWaterMark":I
    if-lt v3, v0, :cond_3

    .line 211
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 213
    :cond_3
    and-int/lit8 v1, v1, -0x5

    goto :goto_0

    .line 217
    .end local v0    # "highWaterMark":I
    :cond_4
    and-int/lit8 v1, v1, -0x5

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->localAddress:Ljava/net/InetSocketAddress;

    .line 145
    .local v1, "localAddress":Ljava/net/InetSocketAddress;
    if-nez v1, :cond_0

    .line 147
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v1

    .line 154
    :goto_0
    return-object v3

    .line 149
    :catch_0
    move-exception v2

    .line 151
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getRawInterestOps()I
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 159
    .local v1, "remoteAddress":Ljava/net/InetSocketAddress;
    if-nez v1, :cond_0

    .line 161
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v1

    .line 168
    :goto_0
    return-object v3

    .line 163
    :catch_0
    move-exception v2

    .line 165
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isBound()Z

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
    .line 176
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->datagramChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setClosed()Z
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method setRawInterestOpsNow(I)V
    .locals 0
    .param p1, "interestOps"    # I

    .prologue
    .line 228
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOpsNow(I)V

    .line 229
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 233
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method
