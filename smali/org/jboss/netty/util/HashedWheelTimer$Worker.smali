.class final Lorg/jboss/netty/util/HashedWheelTimer$Worker;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lorg/jboss/netty/util/HashedWheelTimer;

.field private tick:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method private fetchExpiredTimeouts(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v3, v3, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 382
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v2, v3, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    .line 383
    .local v2, "oldBucketHead":I
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v4, v4, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    and-int v1, v3, v4

    .line 384
    .local v1, "newBucketHead":I
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iput v1, v3, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    .line 386
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v3, v3, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    aget-object v0, v3, v2

    .line 387
    .local v0, "i":Lorg/jboss/netty/util/internal/ReusableIterator;, "Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->fetchExpiredTimeouts(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v3, v3, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 391
    return-void

    .line 389
    .end local v0    # "i":Lorg/jboss/netty/util/internal/ReusableIterator;, "Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    .end local v1    # "newBucketHead":I
    .end local v2    # "oldBucketHead":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v4, v4, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method private fetchExpiredTimeouts(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;",
            "Lorg/jboss/netty/util/internal/ReusableIterator",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    .local p2, "i":Lorg/jboss/netty/util/internal/ReusableIterator;, "Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v6, v3, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    add-long v0, v4, v6

    .line 398
    .local v0, "currentDeadline":J
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->rewind()V

    .line 399
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 401
    .local v2, "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-wide v4, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 402
    iget-wide v4, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 403
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->remove()V

    .line 404
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_1
    iget-wide v4, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    goto :goto_0

    .line 413
    .end local v2    # "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :cond_2
    return-void
.end method

.method private notifyExpiredTimeouts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 419
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    invoke-virtual {v1}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->expire()V

    .line 418
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 423
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 424
    return-void
.end method

.method private waitForNextTick()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    .line 428
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 429
    .local v0, "currentTime":J
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v6, v3, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v8, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    sub-long v8, v0, v8

    sub-long v4, v6, v8

    .line 431
    .local v4, "sleepTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 445
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v6, v3, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v8, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    mul-long/2addr v6, v8

    const-wide v8, 0x7fffffffffffffffL

    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v10, v3, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    sub-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    .line 447
    iput-wide v12, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    .line 452
    :goto_1
    return-void

    .line 436
    :cond_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v3, v3, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 450
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    add-long/2addr v6, v12

    iput-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    .line 364
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    .line 366
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-direct {p0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->waitForNextTick()V

    .line 368
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->fetchExpiredTimeouts(Ljava/util/List;)V

    .line 369
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->notifyExpiredTimeouts(Ljava/util/List;)V

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method
