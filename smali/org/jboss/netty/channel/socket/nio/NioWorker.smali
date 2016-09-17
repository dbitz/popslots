.class Lorg/jboss/netty/channel/socket/nio/NioWorker;
.super Ljava/lang/Object;
.source "NioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CLEANUP_INTERVAL:I = 0x100

.field private static final CONSTRAINT_LEVEL:I

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bossId:I

.field private volatile cancelledKeys:I

.field private final executor:Ljava/util/concurrent/Executor;

.field private final id:I

.field private final recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

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

.field private final selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

.field private final startStopLock:Ljava/lang/Object;

.field private started:Z

.field private volatile thread:Ljava/lang/Thread;

.field private final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final writeTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->$assertionsDisabled:Z

    .line 63
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 66
    sget v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    sput v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->CONSTRAINT_LEVEL:I

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(IILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "bossId"    # I
    .param p2, "id"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->startStopLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->registerTaskQueue:Ljava/util/Queue;

    .line 80
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeTaskQueue:Ljava/util/Queue;

    .line 83
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    .line 84
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    .line 87
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->bossId:I

    .line 88
    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->id:I

    .line 89
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->executor:Ljava/util/concurrent/Executor;

    .line 90
    return-void
.end method

.method private cleanUpCancelledKeys()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 300
    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cancelledKeys:I

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    .line 301
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cancelledKeys:I

    .line 302
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_0
    return v0
.end method

.method private cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 8
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "cause":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 621
    .local v3, "fireExceptionCaught":Z
    iget-object v7, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 622
    :try_start_0
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 623
    .local v2, "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v2, :cond_6

    .line 626
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local v0    # "cause":Ljava/lang/Exception;
    .local v1, "cause":Ljava/lang/Exception;
    move-object v0, v1

    .line 632
    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    .line 633
    .local v4, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 634
    const/4 v6, 0x0

    iput-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 635
    const/4 v6, 0x0

    iput-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 636
    const/4 v2, 0x0

    .line 637
    invoke-interface {v4, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    const/4 v3, 0x1

    move-object v1, v0

    .line 641
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v4    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v1    # "cause":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBuffer:Ljava/util/Queue;

    .line 642
    .local v5, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 645
    if-nez v1, :cond_4

    .line 646
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 647
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 654
    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 655
    .restart local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_3

    .line 662
    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    if-eqz v3, :cond_0

    .line 665
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 667
    :cond_0
    return-void

    .line 629
    .end local v5    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_1
    :try_start_3
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "cause":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_0

    .line 649
    .end local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "cause":Ljava/lang/Exception;
    .restart local v5    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_2
    :try_start_4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_2

    .line 658
    :cond_3
    :try_start_5
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 659
    const/4 v3, 0x1

    goto :goto_2

    .line 662
    .end local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v5    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .end local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "cause":Ljava/lang/Exception;
    .restart local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_4

    .end local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "cause":Ljava/lang/Exception;
    .restart local v5    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_4
    move-object v0, v1

    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_2

    .end local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "cause":Ljava/lang/Exception;
    :cond_5
    move-object v0, v1

    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_3

    .end local v5    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_6
    move-object v1, v0

    .end local v0    # "cause":Ljava/lang/Exception;
    .restart local v1    # "cause":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private clearOpWrite(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    .line 561
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 562
    .local v3, "selector":Ljava/nio/channels/Selector;
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 563
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    if-nez v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 567
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 571
    :cond_2
    const/4 v0, 0x0

    .line 575
    .local v0, "changed":Z
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 576
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v1

    .line 577
    .local v1, "interestOps":I
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    .line 578
    and-int/lit8 v1, v1, -0x5

    .line 579
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 580
    const/4 v0, 0x1

    .line 582
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setRawInterestOpsNow(I)V

    goto :goto_0

    .line 582
    .end local v1    # "interestOps":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private close(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 365
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 366
    return-void
.end method

.method private processRegisterTaskQueue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 253
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 260
    return-void

    .line 257
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 258
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cleanUpCancelledKeys()Z

    goto :goto_0
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 277
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 279
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v3

    .line 280
    .local v3, "readyOps":I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    if-nez v3, :cond_2

    .line 281
    :cond_1
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->read(Ljava/nio/channels/SelectionKey;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    :cond_2
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3

    .line 287
    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v3    # "readyOps":I
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cleanUpCancelledKeys()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    :cond_4
    return-void

    .line 289
    .restart local v2    # "k":Ljava/nio/channels/SelectionKey;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/nio/channels/CancelledKeyException;
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0
.end method

.method private processWriteTaskQueue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeTaskQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 265
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 272
    return-void

    .line 269
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 270
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cleanUpCancelledKeys()Z

    goto :goto_0
.end method

.method private read(Ljava/nio/channels/SelectionKey;)Z
    .locals 13
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    const/4 v11, 0x0

    .line 309
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;

    .line 310
    .local v3, "ch":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 312
    .local v4, "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v12

    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v7

    .line 314
    .local v7, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    invoke-interface {v7}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v6

    .line 316
    .local v6, "predictedRecvBufSize":I
    const/4 v9, 0x0

    .line 317
    .local v9, "ret":I
    const/4 v8, 0x0

    .line 318
    .local v8, "readBytes":I
    const/4 v5, 0x1

    .line 320
    .local v5, "failure":Z
    iget-object v12, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-virtual {v12, v6}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->acquire(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-lez v9, :cond_1

    .line 323
    add-int/2addr v8, v9

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_0

    .line 328
    :cond_1
    const/4 v5, 0x0

    .line 335
    :goto_0
    if-lez v8, :cond_3

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 338
    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v12

    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    .line 340
    .local v2, "bufferFactory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    invoke-interface {v2, v8}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 341
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1, v11, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 342
    invoke-interface {v1, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 344
    iget-object v12, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-virtual {v12, v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 347
    invoke-interface {v7, v8}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    .line 350
    invoke-static {v4, v1}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    .line 355
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "bufferFactory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    :goto_1
    if-ltz v9, :cond_2

    if-eqz v5, :cond_4

    .line 356
    :cond_2
    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v12

    invoke-virtual {p0, v4, v12}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 360
    :goto_2
    return v11

    .line 331
    :catch_0
    move-exception v10

    .line 332
    .local v10, "t":Ljava/lang/Throwable;
    invoke-static {v4, v10}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 352
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_3
    iget-object v12, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-virtual {v12, v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->release(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 360
    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    .line 329
    :catch_1
    move-exception v12

    goto :goto_0
.end method

.method private scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)Z
    .locals 8
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 405
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->thread:Ljava/lang/Thread;

    .line 406
    .local v3, "workerThread":Ljava/lang/Thread;
    if-eq v0, v3, :cond_3

    .line 407
    iget-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 408
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeTaskQueue:Ljava/util/Queue;

    iget-object v7, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeTask:Ljava/lang/Runnable;

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 409
    .local v1, "offered":Z
    sget-boolean v6, Lorg/jboss/netty/channel/socket/nio/NioWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 412
    .end local v1    # "offered":Z
    :cond_0
    instance-of v6, p1, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;

    if-eqz v6, :cond_1

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;

    .end local p1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    iget-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;->bossThread:Ljava/lang/Thread;

    if-eq v6, v0, :cond_2

    .line 414
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 415
    .local v2, "workerSelector":Ljava/nio/channels/Selector;
    if-eqz v2, :cond_2

    .line 416
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 435
    .end local v2    # "workerSelector":Ljava/nio/channels/Selector;
    :cond_2
    :goto_0
    return v4

    .restart local p1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private setOpWrite(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    .line 532
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 533
    .local v3, "selector":Ljava/nio/channels/Selector;
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 534
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    if-nez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 538
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 542
    :cond_2
    const/4 v0, 0x0

    .line 546
    .local v0, "changed":Z
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 547
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v1

    .line 548
    .local v1, "interestOps":I
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_3

    .line 549
    or-int/lit8 v1, v1, 0x4

    .line 550
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 551
    const/4 v0, 0x1

    .line 553
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setRawInterestOpsNow(I)V

    goto :goto_0

    .line 553
    .end local v1    # "interestOps":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private write0(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 25
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    .line 439
    const/16 v16, 0x1

    .line 440
    .local v16, "open":Z
    const/4 v4, 0x0

    .line 441
    .local v4, "addOpWrite":Z
    const/16 v17, 0x0

    .line 443
    .local v17, "removeOpWrite":Z
    const-wide/16 v22, 0x0

    .line 445
    .local v22, "writtenBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    move-object/from16 v18, v0

    .line 446
    .local v18, "sendBufferPool":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    .line 447
    .local v13, "ch":Ljava/nio/channels/SocketChannel;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBuffer:Ljava/util/Queue;

    move-object/from16 v20, v0

    .line 448
    .local v20, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v8

    invoke-interface {v8}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getWriteSpinCount()I

    move-result v21

    .line 449
    .local v21, "writeSpinCount":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 450
    const/4 v8, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput-boolean v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->inWriteNowLoop:Z

    .line 452
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 454
    .local v14, "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v14, :cond_5

    .line 455
    invoke-interface/range {v20 .. v20}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    check-cast v14, Lorg/jboss/netty/channel/MessageEvent;

    .restart local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    move-object/from16 v0, p1

    iput-object v14, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v14, :cond_3

    .line 456
    const/16 v17, 0x1

    .line 457
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-boolean v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeSuspended:Z

    .line 517
    :cond_1
    :goto_1
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-boolean v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->inWriteNowLoop:Z

    .line 518
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    .line 522
    if-eqz v16, :cond_2

    .line 523
    if-eqz v4, :cond_8

    .line 524
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    .line 529
    :cond_2
    :goto_2
    return-void

    .line 461
    :cond_3
    :try_start_1
    invoke-interface {v14}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v12

    .local v12, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    move-object/from16 v0, p1

    iput-object v12, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 466
    :goto_3
    invoke-interface {v14}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 468
    .local v5, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const-wide/16 v6, 0x0

    .line 469
    .local v6, "localWrittenBytes":J
    move/from16 v15, v21

    .local v15, "i":I
    :goto_4
    if-lez v15, :cond_4

    .line 470
    :try_start_2
    invoke-interface {v12, v13}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    .line 471
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    .line 472
    add-long v22, v22, v6

    .line 480
    :cond_4
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 482
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 483
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 484
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 485
    const/4 v14, 0x0

    .line 486
    const/4 v12, 0x0

    .line 487
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v8

    goto :goto_0

    .line 463
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v6    # "localWrittenBytes":J
    .end local v12    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v15    # "i":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v12    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    goto :goto_3

    .line 475
    .restart local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v6    # "localWrittenBytes":J
    .restart local v15    # "i":I
    :cond_6
    :try_start_4
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v8

    if-nez v8, :cond_4

    .line 469
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 490
    :cond_7
    const/4 v4, 0x1

    .line 491
    const/4 v8, 0x1

    move-object/from16 v0, p1

    iput-boolean v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeSuspended:Z

    .line 493
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 495
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->writtenBytes()J

    move-result-wide v8

    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->totalBytes()J

    move-result-wide v10

    invoke-interface/range {v5 .. v11}, Lorg/jboss/netty/channel/ChannelFuture;->setProgress(JJJ)Z
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 503
    :catch_1
    move-exception v19

    .line 504
    .local v19, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-interface {v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 505
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 506
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 507
    const/4 v12, 0x0

    .line 508
    const/4 v14, 0x0

    .line 509
    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 510
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 511
    move-object/from16 v0, v19

    instance-of v8, v0, Ljava/io/IOException;

    if-eqz v8, :cond_0

    .line 512
    const/16 v16, 0x0

    .line 513
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    .line 518
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v6    # "localWrittenBytes":J
    .end local v12    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v15    # "i":I
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 525
    .restart local v14    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    :cond_8
    if-eqz v17, :cond_2

    .line 526
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    goto/16 :goto_2
.end method


# virtual methods
.method close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 590
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->isConnected()Z

    move-result v1

    .line 591
    .local v1, "connected":Z
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->isBound()Z

    move-result v0

    .line 593
    .local v0, "bound":Z
    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V

    .line 594
    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cancelledKeys:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cancelledKeys:I

    .line 596
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 598
    if-eqz v1, :cond_0

    .line 599
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 601
    :cond_0
    if-eqz v0, :cond_1

    .line 602
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 605
    :cond_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    .line 606
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 614
    :goto_0
    return-void

    .line 608
    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v2

    .line 611
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 612
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method register(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 13
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 94
    instance-of v9, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    if-nez v9, :cond_2

    move v3, v7

    .line 95
    .local v3, "server":Z
    :goto_0
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;

    invoke-direct {v1, p0, p1, p2, v3}, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioWorker;Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    .line 98
    .local v1, "registerTask":Ljava/lang/Runnable;
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->startStopLock:Ljava/lang/Object;

    monitor-enter v10

    .line 99
    :try_start_0
    iget-boolean v9, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_5

    .line 102
    :try_start_1
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    .local v2, "selector":Ljava/nio/channels/Selector;
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string/jumbo v9, "New I/O server worker #"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->bossId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x2d

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->id:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 113
    .local v6, "threadName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 115
    .local v4, "success":Z
    :try_start_3
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->executor:Ljava/util/concurrent/Executor;

    new-instance v11, Lorg/jboss/netty/util/internal/IoWorkerRunnable;

    new-instance v12, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    invoke-direct {v12, p0, v6}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/jboss/netty/util/internal/IoWorkerRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v9, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    const/4 v4, 0x1

    .line 120
    if-nez v4, :cond_0

    .line 123
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :goto_2
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 136
    .end local v4    # "success":Z
    .end local v6    # "threadName":Ljava/lang/String;
    :cond_0
    :goto_3
    sget-boolean v9, Lorg/jboss/netty/channel/socket/nio/NioWorker;->$assertionsDisabled:Z

    if-nez v9, :cond_6

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 141
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .end local v1    # "registerTask":Ljava/lang/Runnable;
    .end local v3    # "server":Z
    :cond_2
    move v3, v8

    .line 94
    goto :goto_0

    .line 103
    .restart local v1    # "registerTask":Ljava/lang/Runnable;
    .restart local v3    # "server":Z
    :catch_0
    move-exception v5

    .line 104
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_6
    new-instance v7, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v8, "Failed to create a selector."

    invoke-direct {v7, v8, v5}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 109
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    :cond_3
    const-string/jumbo v9, "New I/O client worker #"

    goto :goto_1

    .line 124
    .restart local v4    # "success":Z
    .restart local v6    # "threadName":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 125
    .restart local v5    # "t":Ljava/lang/Throwable;
    sget-object v9, Lorg/jboss/netty/channel/socket/nio/NioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v11, "Failed to close a selector."

    invoke-interface {v9, v11, v5}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 120
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    if-nez v4, :cond_4

    .line 123
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    :goto_4
    const/4 v2, 0x0

    :try_start_8
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    :cond_4
    throw v7

    .line 124
    :catch_2
    move-exception v5

    .line 125
    .restart local v5    # "t":Ljava/lang/Throwable;
    sget-object v8, Lorg/jboss/netty/channel/socket/nio/NioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v9, "Failed to close a selector."

    invoke-interface {v8, v9, v5}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 133
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    .end local v4    # "success":Z
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "threadName":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    goto :goto_3

    .line 138
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->started:Z

    .line 139
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v9, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    .local v0, "offered":Z
    sget-boolean v9, Lorg/jboss/netty/channel/socket/nio/NioWorker;->$assertionsDisabled:Z

    if-nez v9, :cond_7

    if-nez v0, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 141
    :cond_7
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 143
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 144
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 146
    :cond_8
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->thread:Ljava/lang/Thread;

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "shutdown":Z
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 154
    .local v1, "selector":Ljava/nio/channels/Selector;
    :goto_0
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    sget v4, Lorg/jboss/netty/channel/socket/nio/NioWorker;->CONSTRAINT_LEVEL:I

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 160
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 164
    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->select(Ljava/nio/channels/Selector;)V

    .line 194
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 198
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cancelledKeys:I

    .line 199
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->processRegisterTaskQueue()V

    .line 200
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->processWriteTaskQueue()V

    .line 201
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->processSelectedKeys(Ljava/util/Set;)V

    .line 208
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 209
    if-nez v2, :cond_2

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->executor:Ljava/util/concurrent/Executor;

    instance-of v4, v4, Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->executor:Ljava/util/concurrent/Executor;

    check-cast v4, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    :cond_2
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->startStopLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 223
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v6, "Failed to close a selector."

    invoke-interface {v4, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 221
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 235
    :catch_1
    move-exception v3

    .line 236
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v5, "Unexpected exception in the selector loop."

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    const-wide/16 v4, 0x3e8

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 243
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 221
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    const/4 v6, 0x0

    :try_start_8
    iput-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    throw v4

    .line 225
    :cond_3
    const/4 v2, 0x0

    .line 227
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 230
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 233
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method setInterestOps(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 10
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "interestOps"    # I

    .prologue
    .line 671
    const/4 v1, 0x0

    .line 675
    .local v1, "changed":Z
    :try_start_0
    iget-object v7, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 677
    .local v4, "selector":Ljava/nio/channels/Selector;
    iget-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6, v4}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 679
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    .line 682
    :cond_0
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setRawInterestOpsNow(I)V

    .line 683
    monitor-exit v7

    .line 740
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "selector":Ljava/nio/channels/Selector;
    :cond_1
    :goto_0
    return-void

    .line 687
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    and-int/lit8 p3, p3, -0x5

    .line 688
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    or-int/2addr p3, v6

    .line 690
    sget v6, Lorg/jboss/netty/channel/socket/nio/NioWorker;->CONSTRAINT_LEVEL:I

    packed-switch v6, :pswitch_data_0

    .line 722
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    throw v6

    .line 724
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 731
    :catch_0
    move-exception v2

    .line 733
    .local v2, "e":Ljava/nio/channels/CancelledKeyException;
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 734
    .local v0, "cce":Ljava/nio/channels/ClosedChannelException;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 735
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 692
    .end local v0    # "cce":Ljava/nio/channels/ClosedChannelException;
    .end local v2    # "e":Ljava/nio/channels/CancelledKeyException;
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :pswitch_0
    :try_start_3
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v6

    if-eq v6, p3, :cond_4

    .line 693
    invoke-virtual {v3, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 694
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->thread:Ljava/lang/Thread;

    if-eq v6, v8, :cond_3

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 696
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 698
    :cond_3
    const/4 v1, 0x1

    .line 724
    :cond_4
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 726
    :try_start_4
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 727
    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setRawInterestOpsNow(I)V

    .line 729
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 736
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "selector":Ljava/nio/channels/Selector;
    :catch_1
    move-exception v5

    .line 737
    .local v5, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 738
    invoke-static {p1, v5}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 703
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :pswitch_1
    :try_start_5
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v6

    if-eq v6, p3, :cond_4

    .line 704
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->thread:Ljava/lang/Thread;

    if-ne v6, v8, :cond_5

    .line 705
    invoke-virtual {v3, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 706
    const/4 v1, 0x1

    goto :goto_1

    .line 708
    :cond_5
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 710
    :try_start_6
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 711
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 713
    :cond_6
    invoke-virtual {v3, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 714
    const/4 v1, 0x1

    .line 716
    :try_start_7
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v6

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 398
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 399
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeSuspended:Z

    .line 400
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    .line 401
    return-void
.end method

.method writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 1
    .param p1, "ch"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    .line 392
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    .line 395
    :cond_0
    return-void
.end method

.method writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 1
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .prologue
    .line 369
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    .line 384
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->inWriteNowLoop:Z

    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    goto :goto_0
.end method
