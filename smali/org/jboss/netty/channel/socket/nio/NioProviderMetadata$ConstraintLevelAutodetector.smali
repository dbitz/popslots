.class final Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$ConstraintLevelAutodetector;
.super Ljava/lang/Object;
.source "NioProviderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstraintLevelAutodetector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method


# virtual methods
.method autodetect()I
    .locals 16

    .prologue
    .line 241
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 246
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    const/4 v0, 0x0

    .line 247
    .local v0, "ch":Ljava/nio/channels/ServerSocketChannel;
    const/4 v7, 0x0

    .line 251
    .local v7, "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_24
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 255
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v12

    new-instance v13, Ljava/net/InetSocketAddress;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 256
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 264
    :try_start_2
    new-instance v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;

    invoke-direct {v8}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    .end local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .local v8, "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :try_start_3
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :try_start_4
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v12}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    .line 281
    .local v6, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v3, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 284
    const/4 v9, 0x1

    .line 285
    .local v9, "success":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v12, 0xa

    if-ge v4, v12, :cond_c

    .line 290
    :cond_0
    :goto_1
    iget-boolean v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-nez v12, :cond_b

    .line 291
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 353
    .end local v4    # "i":I
    .end local v6    # "key":Ljava/nio/channels/SelectionKey;
    .end local v9    # "success":Z
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 354
    .end local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :goto_2
    const/4 v1, -0x1

    .line 356
    if-eqz v0, :cond_1

    .line 358
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    .line 364
    :cond_1
    :goto_3
    if-eqz v7, :cond_3

    .line 365
    const/4 v12, 0x1

    iput-boolean v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 367
    :try_start_6
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9

    .line 374
    :cond_2
    :goto_4
    :try_start_7
    iget-object v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_23

    .line 376
    const-wide/16 v12, 0x1

    :try_start_8
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v12, v13, v14}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_23

    move-result v12

    if-eqz v12, :cond_2

    .line 388
    :goto_5
    :try_start_9
    iget-object v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    .line 395
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_6
    return v1

    .line 257
    :catch_1
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_a
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to configure a temporary socket."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_24
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 259
    const/4 v1, -0x1

    .line 356
    if-eqz v0, :cond_4

    .line 358
    :try_start_b
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_e

    .line 364
    :cond_4
    :goto_7
    if-eqz v7, :cond_3

    .line 365
    const/4 v12, 0x1

    iput-boolean v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 367
    :try_start_c
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_f

    .line 374
    :cond_5
    :goto_8
    :try_start_d
    iget-object v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1f

    .line 376
    const-wide/16 v12, 0x1

    :try_start_e
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v12, v13, v14}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1f

    move-result v12

    if-eqz v12, :cond_5

    .line 388
    :goto_9
    :try_start_f
    iget-object v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_6

    .line 389
    :catch_2
    move-exception v2

    .line 390
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary selector."

    :goto_a
    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 265
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .line 266
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_10
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to open a temporary selector."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_24
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 267
    const/4 v1, -0x1

    .line 356
    if-eqz v0, :cond_6

    .line 358
    :try_start_11
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_10

    .line 364
    :cond_6
    :goto_b
    if-eqz v7, :cond_3

    .line 365
    const/4 v12, 0x1

    iput-boolean v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 367
    :try_start_12
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_11

    .line 374
    :cond_7
    :goto_c
    :try_start_13
    iget-object v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1d

    .line 376
    const-wide/16 v12, 0x1

    :try_start_14
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v12, v13, v14}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1d

    move-result v12

    if-eqz v12, :cond_7

    .line 388
    :goto_d
    :try_start_15
    iget-object v12, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_6

    .line 389
    :catch_4
    move-exception v2

    .line 390
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary selector."

    goto :goto_a

    .line 273
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :catch_5
    move-exception v2

    .line 274
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_16
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to register a temporary selector."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 275
    const/4 v1, -0x1

    .line 356
    if-eqz v0, :cond_8

    .line 358
    :try_start_17
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_12

    .line 364
    :cond_8
    :goto_e
    if-eqz v8, :cond_a

    .line 365
    const/4 v12, 0x1

    iput-boolean v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 367
    :try_start_18
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_13

    .line 374
    :cond_9
    :goto_f
    :try_start_19
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1b

    .line 376
    const-wide/16 v12, 0x1

    :try_start_1a
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v12, v13, v14}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1b

    move-result v12

    if-eqz v12, :cond_9

    .line 388
    :goto_10
    :try_start_1b
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_14

    :cond_a
    :goto_11
    move-object v7, v8

    .line 275
    .end local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    goto/16 :goto_6

    .line 296
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v4    # "i":I
    .restart local v6    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v9    # "success":Z
    :cond_b
    const-wide/16 v12, 0x32

    :try_start_1c
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 300
    :goto_12
    :try_start_1d
    iget-boolean v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-eqz v12, :cond_0

    .line 302
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 303
    .local v10, "startTime":J
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v12

    or-int/lit8 v12, v12, 0x10

    invoke-virtual {v6, v12}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 304
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v12

    and-int/lit8 v12, v12, -0x11

    invoke-virtual {v6, v12}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 306
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/32 v14, 0x1dcd6500

    cmp-long v12, v12, v14

    if-ltz v12, :cond_10

    .line 307
    const/4 v9, 0x0

    .line 312
    .end local v10    # "startTime":J
    :cond_c
    if-eqz v9, :cond_11

    .line 313
    const/4 v1, 0x0

    .line 356
    .local v1, "constraintLevel":I
    :goto_13
    if-eqz v0, :cond_d

    .line 358
    :try_start_1e
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_15

    .line 364
    :cond_d
    :goto_14
    if-eqz v8, :cond_f

    .line 365
    const/4 v12, 0x1

    iput-boolean v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 367
    :try_start_1f
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_16

    .line 374
    :cond_e
    :goto_15
    :try_start_20
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_19

    .line 376
    const-wide/16 v12, 0x1

    :try_start_21
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v12, v13, v14}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_19

    move-result v12

    if-eqz v12, :cond_e

    .line 388
    :goto_16
    :try_start_22
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_17

    :cond_f
    :goto_17
    move-object v7, v8

    .line 395
    .end local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    goto/16 :goto_6

    .line 285
    .end local v1    # "constraintLevel":I
    .end local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v10    # "startTime":J
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 316
    .end local v10    # "startTime":J
    :cond_11
    const/4 v9, 0x1

    .line 317
    const/4 v4, 0x0

    :goto_18
    const/16 v12, 0xa

    if-ge v4, v12, :cond_17

    .line 322
    :cond_12
    :goto_19
    :try_start_23
    iget-boolean v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-nez v12, :cond_16

    .line 323
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_19

    .line 356
    .end local v4    # "i":I
    .end local v6    # "key":Ljava/nio/channels/SelectionKey;
    .end local v9    # "success":Z
    :catchall_0
    move-exception v12

    move-object v7, v8

    .end local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :goto_1a
    if-eqz v0, :cond_13

    .line 358
    :try_start_24
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_b

    .line 364
    :cond_13
    :goto_1b
    if-eqz v7, :cond_15

    .line 365
    const/4 v13, 0x1

    iput-boolean v13, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 367
    :try_start_25
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_c

    .line 374
    :cond_14
    :goto_1c
    :try_start_26
    iget-object v13, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v13}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_21

    .line 376
    const-wide/16 v14, 0x1

    :try_start_27
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v14, v15, v13}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_21

    move-result v13

    if-eqz v13, :cond_14

    .line 388
    :goto_1d
    :try_start_28
    iget-object v13, v7, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v13}, Ljava/nio/channels/Selector;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_d

    .line 356
    :cond_15
    :goto_1e
    throw v12

    .line 328
    .end local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v4    # "i":I
    .restart local v6    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v9    # "success":Z
    :cond_16
    const-wide/16 v12, 0x32

    :try_start_29
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 332
    :goto_1f
    :try_start_2a
    iget-boolean v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-eqz v12, :cond_12

    .line 334
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 335
    .restart local v10    # "startTime":J
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    .line 336
    .local v5, "interestOps":I
    monitor-enter v8
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 337
    :try_start_2b
    iget-object v12, v8, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 338
    or-int/lit8 v12, v5, 0x10

    invoke-virtual {v6, v12}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 339
    and-int/lit8 v12, v5, -0x11

    invoke-virtual {v6, v12}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 340
    monitor-exit v8
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    .line 342
    :try_start_2c
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/32 v14, 0x1dcd6500

    cmp-long v12, v12, v14

    if-ltz v12, :cond_18

    .line 343
    const/4 v9, 0x0

    .line 347
    .end local v5    # "interestOps":I
    .end local v10    # "startTime":J
    :cond_17
    if-eqz v9, :cond_19

    .line 348
    const/4 v1, 0x1

    .restart local v1    # "constraintLevel":I
    goto/16 :goto_13

    .line 340
    .end local v1    # "constraintLevel":I
    .restart local v5    # "interestOps":I
    .restart local v10    # "startTime":J
    :catchall_1
    move-exception v12

    :try_start_2d
    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    :try_start_2e
    throw v12
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 317
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 350
    .end local v5    # "interestOps":I
    .end local v10    # "startTime":J
    :cond_19
    const/4 v1, 0x2

    .restart local v1    # "constraintLevel":I
    goto/16 :goto_13

    .line 297
    .end local v1    # "constraintLevel":I
    :catch_6
    move-exception v12

    goto/16 :goto_12

    .line 329
    :catch_7
    move-exception v12

    goto :goto_1f

    .line 359
    .end local v4    # "i":I
    .end local v6    # "key":Ljava/nio/channels/SelectionKey;
    .end local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .end local v9    # "success":Z
    .restart local v2    # "e":Ljava/lang/Throwable;
    .restart local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :catch_8
    move-exception v2

    .line 360
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary socket."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 368
    :catch_9
    move-exception v12

    goto/16 :goto_4

    .line 389
    :catch_a
    move-exception v2

    .line 390
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary selector."

    goto/16 :goto_a

    .line 359
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v2

    .line 360
    .restart local v2    # "e":Ljava/lang/Throwable;
    sget-object v13, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v14, "Failed to close a temporary socket."

    invoke-interface {v13, v14, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 368
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v13

    goto :goto_1c

    .line 389
    :catch_d
    move-exception v2

    .line 390
    .restart local v2    # "e":Ljava/lang/Throwable;
    sget-object v13, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v14, "Failed to close a temporary selector."

    invoke-interface {v13, v14, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 359
    :catch_e
    move-exception v2

    .line 360
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary socket."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 368
    :catch_f
    move-exception v12

    goto/16 :goto_8

    .line 359
    :catch_10
    move-exception v2

    .line 360
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary socket."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 368
    :catch_11
    move-exception v12

    goto/16 :goto_c

    .line 359
    .end local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :catch_12
    move-exception v2

    .line 360
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary socket."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 368
    :catch_13
    move-exception v12

    goto/16 :goto_f

    .line 389
    :catch_14
    move-exception v2

    .line 390
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary selector."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 359
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "constraintLevel":I
    .restart local v4    # "i":I
    .restart local v6    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v9    # "success":Z
    :catch_15
    move-exception v2

    .line 360
    .restart local v2    # "e":Ljava/lang/Throwable;
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary socket."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 368
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v12

    goto/16 :goto_15

    .line 389
    :catch_17
    move-exception v2

    .line 390
    .restart local v2    # "e":Ljava/lang/Throwable;
    sget-object v12, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v13, "Failed to close a temporary selector."

    invoke-interface {v12, v13, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 379
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v12

    goto/16 :goto_15

    .line 383
    :catch_19
    move-exception v12

    goto/16 :goto_16

    .line 379
    .end local v1    # "constraintLevel":I
    .end local v4    # "i":I
    .end local v6    # "key":Ljava/nio/channels/SelectionKey;
    .end local v9    # "success":Z
    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v12

    goto/16 :goto_f

    .line 383
    :catch_1b
    move-exception v12

    goto/16 :goto_10

    .line 379
    .end local v8    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    .restart local v7    # "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    :catch_1c
    move-exception v12

    goto/16 :goto_c

    .line 383
    :catch_1d
    move-exception v12

    goto/16 :goto_d

    .line 379
    :catch_1e
    move-exception v12

    goto/16 :goto_8

    .line 383
    :catch_1f
    move-exception v12

    goto/16 :goto_9

    .line 379
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v13

    goto/16 :goto_1c

    .line 383
    :catch_21
    move-exception v13

    goto/16 :goto_1d

    .line 379
    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v12

    goto/16 :goto_4

    .line 383
    :catch_23
    move-exception v12

    goto/16 :goto_5

    .line 356
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v12

    goto/16 :goto_1a

    .line 353
    :catch_24
    move-exception v2

    goto/16 :goto_2
.end method
