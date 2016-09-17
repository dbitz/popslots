.class final Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;
.super Ljava/lang/Object;
.source "NioDatagramWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChannelRegistionTask"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p3, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 841
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 843
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 844
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 852
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 853
    .local v1, "localAddress":Ljava/net/SocketAddress;
    if-nez v1, :cond_2

    .line 854
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 857
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 877
    :cond_1
    :goto_0
    return-void

    .line 862
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v3, v2, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v5}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v5

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v2, v4, v5, v6}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 865
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :try_start_2
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v2, :cond_1

    .line 867
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 873
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 874
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v3, "Failed to register a socket to the selector."

    invoke-direct {v2, v3, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 865
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_4 .. :try_end_4} :catch_0
.end method
