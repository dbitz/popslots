.class final Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
.super Ljava/lang/Object;
.source "NioClientSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Boss"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final registerTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field volatile selector:Ljava/nio/channels/Selector;

.field private final startStopLock:Ljava/lang/Object;

.field private started:Z

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

.field private final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->startStopLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    .line 178
    return-void
.end method

.method private close(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 396
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 397
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 398
    return-void
.end method

.method private connect(Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 384
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    :try_start_0
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 386
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-virtual {v2, v0, v3}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->register(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 390
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 391
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method

.method private processConnectTimeout(Ljava/util/Set;J)V
    .locals 8
    .param p2, "currentTimeNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    const/4 v0, 0x0

    .line 361
    .local v0, "cause":Ljava/net/ConnectException;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 362
    .local v3, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 367
    .local v1, "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    iget-wide v4, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    .line 370
    if-nez v0, :cond_1

    .line 371
    new-instance v0, Ljava/net/ConnectException;

    .end local v0    # "cause":Ljava/net/ConnectException;
    const-string/jumbo v4, "connection timed out"

    invoke-direct {v0, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v0    # "cause":Ljava/net/ConnectException;
    :cond_1
    iget-object v4, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v4, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 375
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 376
    iget-object v4, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 379
    .end local v1    # "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .end local v3    # "k":Ljava/nio/channels/SelectionKey;
    :cond_2
    return-void
.end method

.method private processRegisterTaskQueue()V
    .locals 2

    .prologue
    .line 334
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 335
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 341
    return-void

    .line 339
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 346
    .local v1, "k":Ljava/nio/channels/SelectionKey;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 348
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 349
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->connect(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 357
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    :cond_2
    return-void
.end method


# virtual methods
.method register(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    .locals 12
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .prologue
    const/4 v11, 0x1

    .line 181
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V

    .line 184
    .local v1, "registerTask":Ljava/lang/Runnable;
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->startStopLock:Ljava/lang/Object;

    monitor-enter v6

    .line 185
    :try_start_0
    iget-boolean v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 188
    :try_start_1
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    .local v2, "selector":Ljava/nio/channels/Selector;
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "success":Z
    :try_start_2
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget-object v5, v5, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v8, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New I/O client boss #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget v10, v10, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/jboss/netty/util/internal/IoWorkerRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    const/4 v3, 0x1

    .line 203
    if-nez v3, :cond_0

    .line 206
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    :goto_0
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 219
    .end local v3    # "success":Z
    :cond_0
    :goto_1
    sget-boolean v5, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 224
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 189
    :catch_0
    move-exception v4

    .line 190
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_5
    new-instance v5, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v7, "Failed to create a selector."

    invoke-direct {v5, v7, v4}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 207
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    .restart local v3    # "success":Z
    :catch_1
    move-exception v4

    .line 208
    .restart local v4    # "t":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v7, "Failed to close a selector."

    invoke-interface {v5, v7, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 203
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    if-nez v3, :cond_2

    .line 206
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 210
    :goto_2
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    :cond_2
    throw v5

    .line 207
    :catch_2
    move-exception v4

    .line 208
    .restart local v4    # "t":Ljava/lang/Throwable;
    sget-object v7, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v8, "Failed to close a selector."

    invoke-interface {v7, v8, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 216
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    .end local v3    # "success":Z
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    goto :goto_1

    .line 221
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->started:Z

    .line 222
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 223
    .local v0, "offered":Z
    sget-boolean v5, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    if-nez v0, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 224
    :cond_5
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 227
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 229
    :cond_6
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, "shutdown":Z
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 234
    .local v6, "selector":Ljava/nio/channels/Selector;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 236
    .local v4, "lastConnectTimeoutCheckTimeNanos":J
    :goto_0
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    const-wide/16 v10, 0x1f4

    :try_start_0
    invoke-virtual {v6, v10, v11}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    .line 269
    .local v3, "selectedKeyCount":I
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 270
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 273
    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->processRegisterTaskQueue()V

    .line 275
    if-lez v3, :cond_1

    .line 276
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->processSelectedKeys(Ljava/util/Set;)V

    .line 280
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 281
    .local v0, "currentTimeNanos":J
    sub-long v10, v0, v4

    const-wide/32 v12, 0x1dcd6500

    cmp-long v9, v10, v12

    if-ltz v9, :cond_2

    .line 282
    move-wide v4, v0

    .line 283
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v9

    invoke-direct {p0, v9, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->processConnectTimeout(Ljava/util/Set;J)V

    .line 291
    :cond_2
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 292
    if-nez v7, :cond_3

    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget-object v9, v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    instance-of v9, v9, Ljava/util/concurrent/ExecutorService;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget-object v9, v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    check-cast v9, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 295
    :cond_3
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->startStopLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :try_start_1
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 297
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 304
    const/4 v9, 0x0

    :try_start_3
    iput-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 306
    :goto_1
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    return-void

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v11, "Failed to close a selector."

    invoke-interface {v9, v11, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 304
    const/4 v9, 0x0

    :try_start_5
    iput-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    goto :goto_1

    .line 310
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 318
    .end local v0    # "currentTimeNanos":J
    .end local v3    # "selectedKeyCount":I
    :catch_1
    move-exception v8

    .line 319
    .local v8, "t":Ljava/lang/Throwable;
    sget-object v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v10, "Unexpected exception in the selector loop."

    invoke-interface {v9, v10, v8}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    const-wide/16 v10, 0x3e8

    :try_start_7
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 325
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 304
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v0    # "currentTimeNanos":J
    .restart local v3    # "selectedKeyCount":I
    :catchall_1
    move-exception v9

    const/4 v11, 0x0

    :try_start_8
    iput-object v11, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    throw v9

    .line 308
    :cond_4
    const/4 v7, 0x0

    .line 310
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 313
    :cond_5
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 316
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
