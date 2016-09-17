.class Lorg/jboss/netty/channel/socket/oio/OioWorker;
.super Ljava/lang/Object;
.source "OioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "^.*(?:Socket.*closed).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V
    .locals 0
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    .line 47
    return-void
.end method

.method static close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isConnected()Z

    move-result v1

    .line 177
    .local v1, "connected":Z
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isBound()Z

    move-result v0

    .line 179
    .local v0, "bound":Z
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 180
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->setClosed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 182
    if-eqz v1, :cond_1

    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 185
    .local v2, "currentThread":Ljava/lang/Thread;
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->workerThread:Ljava/lang/Thread;

    .line 186
    .local v4, "workerThread":Ljava/lang/Thread;
    if-eqz v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 187
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 189
    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 191
    .end local v2    # "currentThread":Ljava/lang/Thread;
    .end local v4    # "workerThread":Ljava/lang/Thread;
    :cond_1
    if-eqz v0, :cond_2

    .line 192
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 194
    :cond_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    .line 199
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 200
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static setInterestOps(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "interestOps"    # I

    .prologue
    .line 140
    and-int/lit8 p2, p2, -0x5

    .line 141
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getInterestOps()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    or-int/2addr p2, v4

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "changed":Z
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getInterestOps()I

    move-result v4

    if-eq v4, p2, :cond_0

    .line 146
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    .line 147
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->setInterestOpsNow(I)V

    .line 151
    :goto_0
    const/4 v0, 0x1

    .line 154
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 155
    if-eqz v0, :cond_2

    .line 156
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->setInterestOpsNow(I)V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 161
    .local v1, "currentThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->workerThread:Ljava/lang/Thread;

    .line 162
    .local v3, "workerThread":Ljava/lang/Thread;
    if-eqz v3, :cond_1

    if-eq v1, v3, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 165
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    .line 173
    .end local v1    # "currentThread":Ljava/lang/Thread;
    .end local v3    # "workerThread":Ljava/lang/Thread;
    :cond_2
    :goto_1
    return-void

    .line 149
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->setInterestOpsNow(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 171
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 165
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

.method static write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .locals 10
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 108
    .local v5, "out":Ljava/io/OutputStream;
    if-nez v5, :cond_0

    .line 109
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 111
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v2, v0

    .line 117
    .local v2, "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    .line 118
    .local v4, "length":I
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    invoke-interface {v2, v7, v5, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 120
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    int-to-long v8, v4

    :try_start_2
    invoke-static {p0, v8, v9}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    .line 122
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 123
    .end local v2    # "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "length":I
    :catch_0
    move-exception v6

    .line 126
    .local v6, "t":Ljava/lang/Throwable;
    instance-of v7, v6, Ljava/net/SocketException;

    if-eqz v7, :cond_1

    sget-object v7, Lorg/jboss/netty/channel/socket/oio/OioWorker;->SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    .end local v6    # "t":Ljava/lang/Throwable;
    invoke-direct {v6}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 131
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {p1, v6}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 132
    invoke-static {p0, v6}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v2    # "a":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v4    # "length":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 50
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    iput-object v8, v7, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->workerThread:Ljava/lang/Thread;

    .line 51
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getInputStream()Ljava/io/PushbackInputStream;

    move-result-object v4

    .line 53
    .local v4, "in":Ljava/io/PushbackInputStream;
    :goto_0
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    iget-object v8, v7, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 55
    :cond_0
    :goto_1
    :try_start_0
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isReadable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 59
    :try_start_1
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    iget-object v7, v7, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v7}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 66
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->available()I

    move-result v2

    .line 72
    .local v2, "bytesToRead":I
    if-lez v2, :cond_2

    .line 73
    new-array v1, v2, [B

    .line 74
    .local v1, "buf":[B
    invoke-virtual {v4, v1}, Ljava/io/PushbackInputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    .line 90
    .local v5, "readBytes":I
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v8}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v8

    invoke-interface {v8}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    .end local v1    # "buf":[B
    .end local v2    # "bytesToRead":I
    .end local v5    # "readBytes":I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 76
    .restart local v2    # "bytesToRead":I
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    .line 77
    .local v0, "b":I
    if-gez v0, :cond_4

    .line 97
    .end local v0    # "b":I
    .end local v2    # "bytesToRead":I
    :cond_3
    :goto_2
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->workerThread:Ljava/lang/Thread;

    .line 100
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-static {v8}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->close(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 101
    return-void

    .line 80
    .restart local v0    # "b":I
    .restart local v2    # "bytesToRead":I
    :cond_4
    :try_start_6
    invoke-virtual {v4, v0}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 83
    .end local v0    # "b":I
    .end local v2    # "bytesToRead":I
    :catch_1
    move-exception v6

    .line 84
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    iget-object v7, v7, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 85
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-static {v7, v6}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
