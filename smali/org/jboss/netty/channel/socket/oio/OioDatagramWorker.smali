.class Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;
.super Ljava/lang/Object;
.source "OioDatagramWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V
    .locals 0
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    .line 45
    return-void
.end method

.method static close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isConnected()Z

    move-result v1

    .line 196
    .local v1, "connected":Z
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isBound()Z

    move-result v0

    .line 198
    .local v0, "bound":Z
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v5}, Ljava/net/MulticastSocket;->close()V

    .line 199
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->setClosed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 201
    if-eqz v1, :cond_1

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 204
    .local v2, "currentThread":Ljava/lang/Thread;
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;

    .line 205
    .local v4, "workerThread":Ljava/lang/Thread;
    if-eqz v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 206
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 208
    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 210
    .end local v2    # "currentThread":Ljava/lang/Thread;
    .end local v4    # "workerThread":Ljava/lang/Thread;
    :cond_1
    if-eqz v0, :cond_2

    .line 211
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 213
    :cond_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v3

    .line 218
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 219
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isConnected()Z

    move-result v0

    .line 171
    .local v0, "connected":Z
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->disconnect()V

    .line 172
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 173
    if-eqz v0, :cond_1

    .line 175
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v2, "workerThread":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 178
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Old I/O datagram worker ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    .end local v2    # "workerThread":Ljava/lang/Thread;
    :cond_1
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 190
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v2    # "workerThread":Ljava/lang/Thread;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static setInterestOps(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "interestOps"    # I

    .prologue
    .line 133
    and-int/lit8 p2, p2, -0x5

    .line 134
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getInterestOps()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    or-int/2addr p2, v4

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "changed":Z
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getInterestOps()I

    move-result v4

    if-eq v4, p2, :cond_0

    .line 139
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    .line 140
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->setInterestOpsNow(I)V

    .line 144
    :goto_0
    const/4 v0, 0x1

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 148
    if-eqz v0, :cond_2

    .line 149
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->setInterestOpsNow(I)V

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 154
    .local v1, "currentThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;

    .line 155
    .local v3, "workerThread":Ljava/lang/Thread;
    if-eqz v3, :cond_1

    if-eq v1, v3, :cond_1

    .line 156
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 158
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    .line 166
    .end local v1    # "currentThread":Ljava/lang/Thread;
    .end local v3    # "workerThread":Ljava/lang/Thread;
    :cond_2
    :goto_1
    return-void

    .line 142
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->setInterestOpsNow(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 164
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 158
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method static write(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 10
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 102
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v3, v0

    .line 103
    .local v3, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    .line 104
    .local v4, "length":I
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 106
    .local v5, "nioBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-direct {v6, v8, v9, v4}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 117
    .local v6, "packet":Ljava/net/DatagramPacket;
    :goto_0
    if-eqz p3, :cond_0

    .line 118
    invoke-virtual {v6, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 120
    :cond_0
    iget-object v8, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v8, v6}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 121
    int-to-long v8, v4

    invoke-static {p0, v8, v9}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    .line 122
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 127
    .end local v3    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "length":I
    .end local v5    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "packet":Ljava/net/DatagramPacket;
    :goto_1
    return-void

    .line 112
    .restart local v3    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v4    # "length":I
    .restart local v5    # "nioBuf":Ljava/nio/ByteBuffer;
    :cond_1
    new-array v2, v4, [B

    .line 113
    .local v2, "arrayBuf":[B
    const/4 v8, 0x0

    invoke-interface {v3, v8, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    .line 114
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v2, v4}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "packet":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 123
    .end local v2    # "arrayBuf":[B
    .end local v3    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "length":I
    .end local v5    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v7

    .line 124
    .local v7, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v7}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 125
    invoke-static {p0, v7}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 48
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;

    .line 49
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v4, v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    .line 51
    .local v4, "socket":Ljava/net/MulticastSocket;
    :goto_0
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v6}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v7, v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 53
    :cond_0
    :goto_1
    :try_start_0
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v6}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isReadable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 57
    :try_start_1
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v6, v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v6}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v6}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/DatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v3

    .line 69
    .local v3, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v6

    new-array v0, v6, [B

    .line 70
    .local v0, "buf":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v6, v0

    invoke-direct {v2, v0, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 72
    .local v2, "packet":Ljava/net/DatagramPacket;
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/DatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-interface {v7, v0, v8, v9}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 64
    .end local v0    # "buf":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    .end local v3    # "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 73
    .restart local v0    # "buf":[B
    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    .restart local v3    # "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v5

    .line 78
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v6, v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v6}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 79
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-static {v6, v5}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "buf":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    .end local v3    # "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;

    .line 95
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-static {v7}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 96
    return-void
.end method
