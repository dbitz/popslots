.class public Lcom/adjust/sdk/TimerOnce;
.super Ljava/lang/Object;
.source "TimerOnce.java"


# instance fields
.field private command:Ljava/lang/Runnable;

.field private isRunning:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    iput-object p2, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/TimerOnce;->isRunning:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getFireIn()J
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 33
    const-wide/16 v0, 0x0

    .line 35
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public startIn(J)V
    .locals 3
    .param p1, "fireIn"    # J

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 29
    return-void
.end method
