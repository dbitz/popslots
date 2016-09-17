.class final Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;
.super Ljava/lang/Object;
.source "NioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterTask"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final server:Z

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioWorker;Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V
    .locals 0
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .param p3, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p4, "server"    # Z

    .prologue
    .line 748
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 751
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 752
    iput-boolean p4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    .line 753
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 756
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 757
    .local v1, "localAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 758
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v1, :cond_0

    if-nez v2, :cond_3

    .line 759
    :cond_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v3, :cond_1

    .line 760
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 762
    :cond_1
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v5}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 796
    :cond_2
    :goto_0
    return-void

    .line 767
    :cond_3
    :try_start_0
    iget-boolean v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    if-eqz v3, :cond_4

    .line 768
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 771
    :cond_4
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v4, v3, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :try_start_1
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v5, v5, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v6}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v6

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v3, v5, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 774
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :try_start_2
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v3, :cond_5

    .line 776
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setConnected()V

    .line 777
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 790
    :cond_5
    iget-boolean v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    if-nez v3, :cond_2

    .line 791
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    check-cast v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-boolean v3, v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->boundManually:Z

    if-nez v3, :cond_6

    .line 792
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v3, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 794
    :cond_6
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v3, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 774
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v3, :cond_7

    .line 781
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 783
    :cond_7
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v5}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 784
    instance-of v3, v0, Ljava/nio/channels/ClosedChannelException;

    if-nez v3, :cond_5

    .line 785
    new-instance v3, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v4, "Failed to register a socket to the selector."

    invoke-direct {v3, v4, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
