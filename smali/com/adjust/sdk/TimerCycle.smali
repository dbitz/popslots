.class public Lcom/adjust/sdk/TimerCycle;
.super Ljava/lang/Object;
.source "TimerCycle.java"


# instance fields
.field private command:Ljava/lang/Runnable;

.field private cycleDelay:J

.field private initialDelay:J

.field private isPaused:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JJ)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "cycleDelay"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    iput-object p1, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    .line 23
    iput-wide p2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    .line 24
    iput-wide p4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    .line 26
    return-void
.end method


# virtual methods
.method public start()V
    .locals 7

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    iget-wide v4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    goto :goto_0
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    .line 43
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    goto :goto_0
.end method
