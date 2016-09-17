.class public Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;


# instance fields
.field private final channelCounters:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/jboss/netty/channel/Channel;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field private volatile settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

.field private final totalCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    const-class v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 144
    new-instance v0, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    const-class v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J

    .prologue
    .line 167
    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    .line 168
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 185
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 186
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 12
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 204
    new-instance v9, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v9}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V

    .line 205
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V
    .locals 14
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p10, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 225
    new-instance v9, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v9}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    new-instance v11, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;

    invoke-direct {v11}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;-><init>()V

    move-object v3, p0

    move v4, p1

    move v5, p1

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 149
    new-instance v2, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    .line 151
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 153
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 228
    if-nez p9, :cond_0

    .line 229
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "objectSizeEstimator"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxChannelMemorySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_2

    .line 236
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxTotalMemorySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "allowCoreThreadTimeOut"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 244
    .local v12, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v12, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v12    # "m":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    move-object/from16 v3, p9

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;JJ)V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 256
    sget-object v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->increase()V

    .line 257
    return-void

    .line 245
    :catch_0
    move-exception v13

    .line 247
    .local v13, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "ThreadPoolExecutor.allowCoreThreadTimeOut() is not supported in this platform."

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 466
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 467
    .local v0, "counter":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .end local v0    # "counter":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 469
    .restart local v0    # "counter":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 470
    .local v1, "oldCounter":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v1, :cond_0

    .line 471
    move-object v0, v1

    .line 476
    .end local v1    # "oldCounter":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->decreaseCounter(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method protected decreaseCounter(Ljava/lang/Runnable;)V
    .locals 18
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 421
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 426
    .local v12, "settings":Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    iget-wide v10, v12, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxTotalMemorySize:J

    .line 427
    .local v10, "maxTotalMemorySize":J
    iget-wide v8, v12, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    .line 430
    .local v8, "maxChannelMemorySize":J
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v13, :cond_2

    move-object/from16 v13, p1

    .line 431
    check-cast v13, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    iget v7, v13, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->estimatedSize:I

    .line 436
    .local v7, "increment":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalCounter:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v14

    .line 439
    .local v14, "totalCounter":J
    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-eqz v13, :cond_3

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v16, v16, v14

    cmp-long v13, v16, v10

    if-ltz v13, :cond_3

    .line 441
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->hasQueuedThreads()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .end local v7    # "increment":I
    .end local v14    # "totalCounter":J
    :cond_2
    move-object/from16 v13, p1

    .line 433
    check-cast v13, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    iget v7, v13, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;->estimatedSize:I

    .restart local v7    # "increment":I
    goto :goto_1

    .line 446
    .restart local v14    # "totalCounter":J
    :cond_3
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v13, :cond_0

    move-object/from16 v6, p1

    .line 447
    check-cast v6, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 448
    .local v6, "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    invoke-virtual {v6}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v13

    invoke-interface {v13}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    .line 449
    .local v2, "channel":Lorg/jboss/netty/channel/Channel;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v13

    neg-int v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    .line 451
    .local v4, "channelCounter":J
    const-wide/16 v16, 0x0

    cmp-long v13, v8, v16

    if-eqz v13, :cond_0

    cmp-long v13, v4, v8

    if-gez v13, :cond_0

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 452
    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isReadable()Z

    move-result v13

    if-nez v13, :cond_0

    .line 454
    invoke-virtual {v6}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v3

    .line 455
    .local v3, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v13

    instance-of v13, v13, Lorg/jboss/netty/handler/execution/ExecutionHandler;

    if-eqz v13, :cond_4

    .line 457
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 459
    :cond_4
    const/4 v13, 0x1

    invoke-interface {v2, v13}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0
.end method

.method protected doExecute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method protected final doUnorderedExecute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 365
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 341
    instance-of v2, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-nez v2, :cond_0

    .line 342
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;-><init>(Ljava/lang/Runnable;)V

    .end local p1    # "command":Ljava/lang/Runnable;
    .local v0, "command":Ljava/lang/Runnable;
    move-object p1, v0

    .line 345
    .end local v0    # "command":Ljava/lang/Runnable;
    .restart local p1    # "command":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->increaseCounter(Ljava/lang/Runnable;)Z

    move-result v1

    .line 346
    .local v1, "pause":Z
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->doExecute(Ljava/lang/Runnable;)V

    .line 347
    if-eqz v1, :cond_1

    .line 349
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 351
    :cond_1
    return-void
.end method

.method public getMaxChannelMemorySize()J
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    return-wide v0
.end method

.method public getMaxTotalMemorySize()J
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxTotalMemorySize:J

    return-wide v0
.end method

.method public getObjectSizeEstimator()Lorg/jboss/netty/util/ObjectSizeEstimator;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    return-object v0
.end method

.method protected increaseCounter(Ljava/lang/Runnable;)Z
    .locals 18
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 384
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 385
    const/4 v13, 0x0

    .line 417
    .end local p1    # "task":Ljava/lang/Runnable;
    :goto_0
    return v13

    .line 388
    .restart local p1    # "task":Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 389
    .local v12, "settings":Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    iget-wide v10, v12, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxTotalMemorySize:J

    .line 390
    .local v10, "maxTotalMemorySize":J
    iget-wide v8, v12, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    .line 392
    .local v8, "maxChannelMemorySize":J
    iget-object v13, v12, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v7

    .line 393
    .local v7, "increment":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalCounter:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v14

    .line 395
    .local v14, "totalCounter":J
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v13, :cond_3

    move-object/from16 v6, p1

    .line 396
    check-cast v6, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 397
    .local v6, "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    iput v7, v6, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->estimatedSize:I

    .line 398
    invoke-virtual {v6}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v13

    invoke-interface {v13}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    .line 399
    .local v2, "channel":Lorg/jboss/netty/channel/Channel;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v13

    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    .line 401
    .local v4, "channelCounter":J
    const-wide/16 v16, 0x0

    cmp-long v13, v8, v16

    if-eqz v13, :cond_2

    cmp-long v13, v4, v8

    if-ltz v13, :cond_2

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 402
    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isReadable()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 404
    invoke-virtual {v6}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v3

    .line 405
    .local v3, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v13

    instance-of v13, v13, Lorg/jboss/netty/handler/execution/ExecutionHandler;

    if-eqz v13, :cond_1

    .line 407
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v13}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 409
    :cond_1
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    .line 417
    .end local v2    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v3    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local v4    # "channelCounter":J
    .end local v6    # "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    .end local p1    # "task":Ljava/lang/Runnable;
    :cond_2
    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-eqz v13, :cond_4

    cmp-long v13, v14, v10

    if-ltz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_0

    .line 413
    .restart local p1    # "task":Ljava/lang/Runnable;
    :cond_3
    check-cast p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    .end local p1    # "task":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iput v7, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;->estimatedSize:I

    goto :goto_1

    .line 417
    :cond_4
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 370
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 371
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->decreaseCounter(Ljava/lang/Runnable;)V

    .line 374
    :cond_0
    return v0
.end method

.method public setMaxChannelMemorySize(J)V
    .locals 7
    .param p1, "maxChannelMemorySize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 297
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxChannelMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t be changed after a task is executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    iget-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v4, v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxTotalMemorySize:J

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;JJ)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 310
    return-void
.end method

.method public setMaxTotalMemorySize(J)V
    .locals 7
    .param p1, "maxTotalMemorySize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 324
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxTotalMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t be changed after a task is executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    iget-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v2, v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;JJ)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 337
    return-void
.end method

.method public setObjectSizeEstimator(Lorg/jboss/netty/util/ObjectSizeEstimator;)V
    .locals 6
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "objectSizeEstimator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v2, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v4, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxTotalMemorySize:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;JJ)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 283
    return-void
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 489
    instance-of v3, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 490
    check-cast v1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 491
    .local v1, "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    invoke-virtual {v1}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v0

    .line 492
    .local v0, "e":Lorg/jboss/netty/channel/ChannelEvent;
    instance-of v3, v0, Lorg/jboss/netty/channel/WriteCompletionEvent;

    if-eqz v3, :cond_1

    .line 500
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    .end local v1    # "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    :cond_0
    :goto_0
    return v2

    .line 494
    .restart local v0    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    .restart local v1    # "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    :cond_1
    instance-of v3, v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v3, :cond_2

    .line 495
    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    sget-object v4, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-eq v3, v4, :cond_0

    .line 500
    .end local v1    # "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected terminated()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 262
    sget-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->decrease()V

    .line 263
    return-void
.end method
