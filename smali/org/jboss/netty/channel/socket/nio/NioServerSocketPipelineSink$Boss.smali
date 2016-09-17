.class final Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
.super Ljava/lang/Object;
.source "NioServerSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Boss"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

.field private final selector:Ljava/nio/channels/Selector;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;)V
    .locals 4
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    .line 219
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "registered":Z
    :try_start_0
    iget-object v1, p2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v0, 0x1

    .line 226
    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    iput-object v1, p2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->selector:Ljava/nio/channels/Selector;

    .line 232
    return-void

    .line 226
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 227
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    :cond_1
    throw v1
.end method

.method private closeSelector()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->selector:Ljava/nio/channels/Selector;

    .line 300
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private registerAcceptedChannel(Ljava/nio/channels/SocketChannel;Ljava/lang/Thread;)V
    .locals 10
    .param p1, "acceptedSocket"    # Ljava/nio/channels/SocketChannel;
    .param p2, "currentThread"    # Ljava/lang/Thread;

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 279
    .local v2, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->nextWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v6

    .line 280
    .local v6, "worker":Lorg/jboss/netty/channel/socket/nio/NioWorker;
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;Ljava/lang/Thread;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->register(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v2    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v6    # "worker":Lorg/jboss/netty/channel/socket/nio/NioWorker;
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v8

    .line 285
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v1, "Failed to initialize an accepted socket."

    invoke-interface {v0, v1, v8}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v9

    .line 290
    .local v9, "e2":Ljava/io/IOException;
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v1, "Failed to close a partially accepted socket."

    invoke-interface {v0, v1, v9}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 237
    .local v1, "currentThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 241
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    if-lez v3, :cond_1

    .line 242
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 245
    :cond_1
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 246
    .local v0, "acceptedSocket":Ljava/nio/channels/SocketChannel;
    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->registerAcceptedChannel(Ljava/nio/channels/SocketChannel;Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    .end local v0    # "acceptedSocket":Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 256
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/nio/channels/ClosedChannelException;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    .line 273
    return-void

    .line 259
    .end local v2    # "e":Ljava/nio/channels/ClosedChannelException;
    :catch_2
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v3, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v4, "Failed to accept a connection."

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 264
    :catch_3
    move-exception v3

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;->closeSelector()V

    throw v3

    .line 254
    :catch_4
    move-exception v3

    goto :goto_0

    .line 252
    :catch_5
    move-exception v3

    goto :goto_0
.end method
