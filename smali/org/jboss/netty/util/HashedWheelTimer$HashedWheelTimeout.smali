.class final Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/Timeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HashedWheelTimeout"
.end annotation


# instance fields
.field private volatile cancelled:Z

.field final deadline:J

.field volatile remainingRounds:J

.field final stopIndex:I

.field private final task:Lorg/jboss/netty/util/TimerTask;

.field final synthetic this$0:Lorg/jboss/netty/util/HashedWheelTimer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;Lorg/jboss/netty/util/TimerTask;JIJ)V
    .locals 0
    .param p2, "task"    # Lorg/jboss/netty/util/TimerTask;
    .param p3, "deadline"    # J
    .param p5, "stopIndex"    # I
    .param p6, "remainingRounds"    # J

    .prologue
    .line 464
    iput-object p1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->task:Lorg/jboss/netty/util/TimerTask;

    .line 466
    iput-wide p3, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    .line 467
    iput p5, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->stopIndex:I

    .line 468
    iput-wide p6, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    .line 469
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->cancelled:Z

    .line 487
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    iget v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->stopIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public expire()V
    .locals 4

    .prologue
    .line 499
    iget-boolean v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->cancelled:Z

    if-eqz v1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 504
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->task:Lorg/jboss/netty/util/TimerTask;

    invoke-interface {v1, p0}, Lorg/jboss/netty/util/TimerTask;->run(Lorg/jboss/netty/util/Timeout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/util/HashedWheelTimer;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/jboss/netty/util/TimerTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTask()Lorg/jboss/netty/util/TimerTask;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->task:Lorg/jboss/netty/util/TimerTask;

    return-object v0
.end method

.method public getTimer()Lorg/jboss/netty/util/Timer;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->cancelled:Z

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 495
    iget-boolean v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->cancelled:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 515
    .local v2, "currentTime":J
    iget-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    sub-long v4, v6, v2

    .line 517
    .local v4, "remaining":J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 518
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    const-string/jumbo v1, "deadline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    .line 523
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    const-string/jumbo v1, " ms later, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    const-string/jumbo v1, ", cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 525
    :cond_1
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 526
    neg-long v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 527
    const-string/jumbo v1, " ms ago, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 529
    :cond_2
    const-string/jumbo v1, "now, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
