.class Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
.super Ljava/lang/Object;
.source "NioDatagramWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bossId:I

.field private volatile cancelledKeys:I

.field private final executor:Ljava/util/concurrent/Executor;

.field private final id:I

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
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->$assertionsDisabled:Z

    .line 65
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

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
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->startStopLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->registerTaskQueue:Ljava/util/Queue;

    .line 126
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeTaskQueue:Ljava/util/Queue;

    .line 130
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    .line 141
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bossId:I

    .line 142
    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->id:I

    .line 143
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->executor:Ljava/util/concurrent/Executor;

    .line 144
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

    .line 367
    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cancelledKeys:I

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    .line 368
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cancelledKeys:I

    .line 369
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_0
    return v0
.end method

.method private cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 8
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "cause":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 701
    .local v3, "fireExceptionCaught":Z
    iget-object v7, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 702
    :try_start_0
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 703
    .local v2, "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v2, :cond_6

    .line 706
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 707
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local v0    # "cause":Ljava/lang/Exception;
    .local v1, "cause":Ljava/lang/Exception;
    move-object v0, v1

    .line 712
    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    .line 713
    .local v4, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 714
    const/4 v6, 0x0

    iput-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 715
    const/4 v6, 0x0

    iput-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 716
    const/4 v2, 0x0

    .line 717
    invoke-interface {v4, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    const/4 v3, 0x1

    move-object v1, v0

    .line 721
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v4    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v1    # "cause":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 722
    .local v5, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 725
    if-nez v1, :cond_4

    .line 726
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 727
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    .end local v1    # "cause":Ljava/lang/Exception;
    .restart local v0    # "cause":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 735
    .restart local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_3

    .line 742
    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    if-eqz v3, :cond_0

    .line 745
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 747
    :cond_0
    return-void

    .line 709
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

    .line 729
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

    .line 738
    :cond_3
    :try_start_5
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 739
    const/4 v3, 0x1

    goto :goto_2

    .line 742
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

.method private clearOpWrite(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    .line 626
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 627
    .local v3, "selector":Ljava/nio/channels/Selector;
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 628
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    if-nez v2, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 632
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 636
    :cond_2
    const/4 v0, 0x0

    .line 640
    .local v0, "changed":Z
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 641
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v1

    .line 642
    .local v1, "interestOps":I
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    .line 643
    and-int/lit8 v1, v1, -0x5

    .line 644
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 645
    const/4 v0, 0x1

    .line 647
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setRawInterestOpsNow(I)V

    goto :goto_0

    .line 647
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
    .line 433
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 434
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 435
    return-void
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 655
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isConnected()Z

    move-result v0

    .line 657
    .local v0, "connected":Z
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 658
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 659
    if-eqz v0, :cond_0

    .line 660
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 664
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processRegisterTaskQueue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 317
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 324
    return-void

    .line 321
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 322
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpCancelledKeys()Z

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
    .line 342
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 344
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 346
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v3

    .line 347
    .local v3, "readyOps":I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    if-nez v3, :cond_2

    .line 348
    :cond_1
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->read(Ljava/nio/channels/SelectionKey;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    :cond_2
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3

    .line 354
    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v3    # "readyOps":I
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpCancelledKeys()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    :cond_4
    return-void

    .line 356
    .restart local v2    # "k":Ljava/nio/channels/SelectionKey;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/nio/channels/CancelledKeyException;
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Ljava/nio/channels/SelectionKey;)V

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
    .line 331
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeTaskQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 332
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 339
    return-void

    .line 336
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 337
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpCancelledKeys()Z

    goto :goto_0
.end method

.method private read(Ljava/nio/channels/SelectionKey;)Z
    .locals 11
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 384
    .local v2, "channel":Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v5

    .line 386
    .local v5, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    .line 387
    .local v0, "bufferFactory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    .line 393
    .local v4, "nioChannel":Ljava/nio/channels/DatagramChannel;
    invoke-interface {v5}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 396
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    .line 397
    .local v3, "failure":Z
    const/4 v7, 0x0

    .line 401
    .local v7, "remoteAddress":Ljava/net/SocketAddress;
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 402
    const/4 v3, 0x0

    .line 409
    :goto_0
    if-eqz v7, :cond_0

    .line 411
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 413
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 414
    .local v6, "readBytes":I
    if-lez v6, :cond_0

    .line 416
    invoke-interface {v5, v6}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    .line 419
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    invoke-static {v2, v9, v7}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 424
    .end local v6    # "readBytes":I
    :cond_0
    if-eqz v3, :cond_1

    .line 425
    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v9

    invoke-virtual {p0, v2, v9}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 426
    const/4 v9, 0x0

    .line 429
    :goto_1
    return v9

    .line 405
    :catch_0
    move-exception v8

    .line 406
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v2, v8}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 429
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 403
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)Z
    .locals 7
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 478
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    .line 479
    .local v2, "workerThread":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v5, v2, :cond_3

    .line 480
    :cond_0
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeTaskQueue:Ljava/util/Queue;

    iget-object v6, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeTask:Ljava/lang/Runnable;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 483
    .local v0, "offered":Z
    sget-boolean v5, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 486
    .end local v0    # "offered":Z
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 487
    .local v1, "selector":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_2

    .line 488
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    move v3, v4

    .line 495
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :cond_3
    return v3
.end method

.method private setOpWrite(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 6
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    .line 597
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 598
    .local v3, "selector":Ljava/nio/channels/Selector;
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 599
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    if-nez v2, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 603
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, 0x0

    .line 611
    .local v0, "changed":Z
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 612
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v1

    .line 613
    .local v1, "interestOps":I
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_3

    .line 614
    or-int/lit8 v1, v1, 0x4

    .line 615
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 616
    const/4 v0, 0x1

    .line 618
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setRawInterestOpsNow(I)V

    goto :goto_0

    .line 618
    .end local v1    # "interestOps":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private write0(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 24
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    .line 500
    const/4 v4, 0x0

    .line 501
    .local v4, "addOpWrite":Z
    const/4 v13, 0x0

    .line 503
    .local v13, "removeOpWrite":Z
    const-wide/16 v18, 0x0

    .line 505
    .local v18, "writtenBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    .line 506
    .local v14, "sendBufferPool":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    .line 507
    .local v6, "ch":Ljava/nio/channels/DatagramChannel;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    move-object/from16 v16, v0

    .line 508
    .local v16, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getWriteSpinCount()I

    move-result v17

    .line 509
    .local v17, "writeSpinCount":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 511
    const/16 v20, 0x1

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->inWriteNowLoop:Z

    .line 515
    :goto_0
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 517
    .local v7, "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v7, :cond_4

    .line 518
    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    check-cast v7, Lorg/jboss/netty/channel/MessageEvent;

    .restart local v7    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    move-object/from16 v0, p1

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v7, :cond_1

    .line 519
    const/4 v13, 0x1

    .line 520
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeSuspended:Z

    .line 584
    :goto_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->inWriteNowLoop:Z

    .line 585
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    .line 589
    if-eqz v4, :cond_9

    .line 590
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    .line 594
    :cond_0
    :goto_2
    return-void

    .line 524
    :cond_1
    :try_start_1
    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v5

    .local v5, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :goto_3
    const-wide/16 v10, 0x0

    .line 531
    .local v10, "localWrittenBytes":J
    :try_start_2
    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v12

    .line 532
    .local v12, "raddr":Ljava/net/SocketAddress;
    if-nez v12, :cond_6

    .line 533
    move/from16 v9, v17

    .local v9, "i":I
    :goto_4
    if-lez v9, :cond_2

    .line 534
    invoke-interface {v5, v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v10

    .line 535
    const-wide/16 v22, 0x0

    cmp-long v20, v10, v22

    if-eqz v20, :cond_5

    .line 536
    add-long v18, v18, v10

    .line 556
    :cond_2
    :goto_5
    const-wide/16 v22, 0x0

    cmp-long v20, v10, v22

    if-gtz v20, :cond_3

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 558
    :cond_3
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 559
    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    .line 560
    .local v8, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 561
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 562
    const/4 v7, 0x0

    .line 563
    const/4 v5, 0x0

    .line 564
    invoke-interface {v8}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 571
    .end local v8    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v9    # "i":I
    .end local v12    # "raddr":Ljava/net/SocketAddress;
    :catch_0
    move-exception v20

    goto/16 :goto_0

    .line 526
    .end local v5    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v10    # "localWrittenBytes":J
    :cond_4
    :try_start_3
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v5    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    goto :goto_3

    .line 539
    .restart local v9    # "i":I
    .restart local v10    # "localWrittenBytes":J
    .restart local v12    # "raddr":Ljava/net/SocketAddress;
    :cond_5
    :try_start_4
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v20

    if-nez v20, :cond_2

    .line 533
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 544
    .end local v9    # "i":I
    :cond_6
    move/from16 v9, v17

    .restart local v9    # "i":I
    :goto_6
    if-lez v9, :cond_2

    .line 545
    invoke-interface {v5, v6, v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J

    move-result-wide v10

    .line 546
    const-wide/16 v22, 0x0

    cmp-long v20, v10, v22

    if-eqz v20, :cond_7

    .line 547
    add-long v18, v18, v10

    .line 548
    goto :goto_5

    .line 550
    :cond_7
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v20

    if-nez v20, :cond_2

    .line 544
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 567
    :cond_8
    const/4 v4, 0x1

    .line 568
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeSuspended:Z
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 573
    .end local v9    # "i":I
    .end local v12    # "raddr":Ljava/net/SocketAddress;
    :catch_1
    move-exception v15

    .line 574
    .local v15, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 575
    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    .line 576
    .restart local v8    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 577
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 578
    const/4 v5, 0x0

    .line 579
    const/4 v7, 0x0

    .line 580
    invoke-interface {v8, v15}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 581
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 585
    .end local v5    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v7    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v8    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v10    # "localWrittenBytes":J
    .end local v15    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v20

    .line 591
    .restart local v7    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    :cond_9
    if-eqz v13, :cond_0

    .line 592
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    goto/16 :goto_2
.end method


# virtual methods
.method close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 670
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isConnected()Z

    move-result v1

    .line 671
    .local v1, "connected":Z
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    .line 673
    .local v0, "bound":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 674
    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cancelledKeys:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cancelledKeys:I

    .line 676
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 678
    if-eqz v1, :cond_0

    .line 679
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 681
    :cond_0
    if-eqz v0, :cond_1

    .line 682
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 685
    :cond_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    .line 686
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 694
    :goto_0
    return-void

    .line 688
    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v2

    .line 691
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 692
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method register(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 11
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    const/4 v10, 0x1

    .line 154
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 158
    .local v0, "channelRegTask":Ljava/lang/Runnable;
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->startStopLock:Ljava/lang/Object;

    monitor-enter v6

    .line 159
    :try_start_0
    iget-boolean v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 162
    :try_start_1
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    .local v2, "selector":Ljava/nio/channels/Selector;
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v3, 0x0

    .line 171
    .local v3, "success":Z
    :try_start_2
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->executor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New I/O datagram worker #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bossId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'-\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    const/4 v3, 0x1

    .line 175
    if-nez v3, :cond_0

    .line 178
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :goto_0
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 190
    .end local v3    # "success":Z
    :cond_0
    :goto_1
    sget-boolean v5, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 197
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 163
    :catch_0
    move-exception v4

    .line 164
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_5
    new-instance v5, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v7, "Failed to create a selector."

    invoke-direct {v5, v7, v4}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 179
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    .restart local v3    # "success":Z
    :catch_1
    move-exception v4

    .line 180
    .restart local v4    # "t":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v7, "Failed to close a selector."

    invoke-interface {v5, v7, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 175
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    if-nez v3, :cond_2

    .line 178
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    :goto_2
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    :cond_2
    throw v5

    .line 179
    :catch_2
    move-exception v4

    .line 180
    .restart local v4    # "t":Ljava/lang/Throwable;
    sget-object v7, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v8, "Failed to close a selector."

    invoke-interface {v7, v8, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 188
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    .end local v3    # "success":Z
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    goto :goto_1

    .line 192
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->started:Z

    .line 195
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 196
    .local v1, "offered":Z
    sget-boolean v5, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 197
    :cond_5
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 199
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 200
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 202
    :cond_6
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    .line 211
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 212
    .local v1, "selector":Ljava/nio/channels/Selector;
    const/4 v2, 0x0

    .line 215
    .local v2, "shutdown":Z
    :goto_0
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    sget v4, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 220
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 224
    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->select(Ljava/nio/channels/Selector;)V

    .line 254
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 258
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cancelledKeys:I

    .line 259
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->processRegisterTaskQueue()V

    .line 260
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->processWriteTaskQueue()V

    .line 261
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->processSelectedKeys(Ljava/util/Set;)V

    .line 269
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 270
    if-nez v2, :cond_2

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->executor:Ljava/util/concurrent/Executor;

    instance-of v4, v4, Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->executor:Ljava/util/concurrent/Executor;

    check-cast v4, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    :cond_2
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->startStopLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 284
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v6, "Failed to close a selector."

    invoke-interface {v4, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    goto :goto_1

    .line 288
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

    .line 296
    :catch_1
    move-exception v3

    .line 297
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v5, "Unexpected exception in the selector loop."

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    const-wide/16 v4, 0x3e8

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 303
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 282
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    const/4 v6, 0x0

    :try_start_8
    iput-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    throw v4

    .line 286
    :cond_3
    const/4 v2, 0x0

    .line 288
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 291
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 294
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method setInterestOps(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 10
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "interestOps"    # I

    .prologue
    .line 752
    const/4 v1, 0x0

    .line 756
    .local v1, "changed":Z
    :try_start_0
    iget-object v7, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    .line 758
    .local v4, "selector":Ljava/nio/channels/Selector;
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 760
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    .line 763
    :cond_0
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setRawInterestOpsNow(I)V

    .line 764
    monitor-exit v7

    .line 829
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "selector":Ljava/nio/channels/Selector;
    :cond_1
    :goto_0
    return-void

    .line 768
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    and-int/lit8 p3, p3, -0x5

    .line 769
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    or-int/2addr p3, v6

    .line 771
    sget v6, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    packed-switch v6, :pswitch_data_0

    .line 811
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    throw v6

    .line 813
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

    .line 820
    :catch_0
    move-exception v2

    .line 822
    .local v2, "e":Ljava/nio/channels/CancelledKeyException;
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 823
    .local v0, "cce":Ljava/nio/channels/ClosedChannelException;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 824
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 773
    .end local v0    # "cce":Ljava/nio/channels/ClosedChannelException;
    .end local v2    # "e":Ljava/nio/channels/CancelledKeyException;
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :pswitch_0
    :try_start_3
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v6

    if-eq v6, p3, :cond_4

    .line 775
    invoke-virtual {v3, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 779
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    if-eq v6, v8, :cond_3

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 781
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 783
    :cond_3
    const/4 v1, 0x1

    .line 813
    :cond_4
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 815
    :try_start_4
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 816
    if-eqz v1, :cond_1

    .line 817
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setRawInterestOpsNow(I)V

    .line 818
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 825
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "selector":Ljava/nio/channels/Selector;
    :catch_1
    move-exception v5

    .line 826
    .local v5, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 827
    invoke-static {p1, v5}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 788
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v4    # "selector":Ljava/nio/channels/Selector;
    :pswitch_1
    :try_start_5
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v6

    if-eq v6, p3, :cond_4

    .line 789
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    if-ne v6, v8, :cond_5

    .line 792
    invoke-virtual {v3, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 793
    const/4 v1, 0x1

    goto :goto_1

    .line 797
    :cond_5
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 799
    :try_start_6
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 800
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 802
    :cond_6
    invoke-virtual {v3, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 803
    const/4 v1, 0x1

    .line 805
    :try_start_7
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v6

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 771
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
    .line 472
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 473
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeSuspended:Z

    .line 474
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->write0(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    .line 475
    return-void
.end method

.method writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 1
    .param p1, "ch"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    .line 466
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->write0(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    .line 469
    :cond_0
    return-void
.end method

.method writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 1
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .prologue
    .line 443
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    .line 458
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->inWriteNowLoop:Z

    if-nez v0, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->write0(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    goto :goto_0
.end method
