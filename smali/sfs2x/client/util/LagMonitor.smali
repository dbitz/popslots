.class public Lsfs2x/client/util/LagMonitor;
.super Ljava/lang/Object;
.source "LagMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsfs2x/client/util/LagMonitor$PollTimerTask;
    }
.end annotation


# instance fields
.field private interval:I

.field private volatile isPollRunning:Z

.field private lastReqTime:J

.field private pollTimer:Ljava/util/Timer;

.field private queueSize:I

.field private sfs:Lsfs2x/client/SmartFox;

.field private valueQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsfs2x/client/SmartFox;)V
    .locals 2
    .param p1, "sfs"    # Lsfs2x/client/SmartFox;

    .prologue
    .line 24
    const/4 v0, 0x4

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lsfs2x/client/util/LagMonitor;-><init>(Lsfs2x/client/SmartFox;II)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/SmartFox;I)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/SmartFox;
    .param p2, "interval"    # I

    .prologue
    .line 28
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/util/LagMonitor;-><init>(Lsfs2x/client/SmartFox;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/SmartFox;II)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/SmartFox;
    .param p2, "interval"    # I
    .param p3, "queueSize"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/util/LagMonitor;->isPollRunning:Z

    .line 32
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 33
    const/4 p2, 0x1

    .line 36
    :cond_0
    iput-object p1, p0, Lsfs2x/client/util/LagMonitor;->sfs:Lsfs2x/client/SmartFox;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    .line 38
    mul-int/lit16 v0, p2, 0x3e8

    iput v0, p0, Lsfs2x/client/util/LagMonitor;->interval:I

    .line 39
    iput p3, p0, Lsfs2x/client/util/LagMonitor;->queueSize:I

    .line 40
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/util/LagMonitor;J)V
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lsfs2x/client/util/LagMonitor;->lastReqTime:J

    return-void
.end method

.method static synthetic access$1(Lsfs2x/client/util/LagMonitor;)Lsfs2x/client/SmartFox;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor;->sfs:Lsfs2x/client/SmartFox;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAveragePingTime()I
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 97
    :goto_0
    monitor-exit p0

    return v2

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "lagAverage":I
    :try_start_1
    iget-object v2, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v0, v2

    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 94
    .local v1, "lagValue":I
    add-int/2addr v0, v1

    goto :goto_1

    .line 88
    .end local v0    # "lagAverage":I
    .end local v1    # "lagValue":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getLastPingTime()I
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    iget-object v1, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 83
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRunning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lsfs2x/client/util/LagMonitor;->isPollRunning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onPingPong()I
    .locals 6

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lsfs2x/client/util/LagMonitor;->lastReqTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 68
    .local v0, "lagValue":I
    iget-object v1, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lsfs2x/client/util/LagMonitor;->queueSize:I

    if-lt v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object v1, p0, Lsfs2x/client/util/LagMonitor;->valueQueue:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lsfs2x/client/util/LagMonitor;->getAveragePingTime()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 65
    .end local v0    # "lagValue":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p0}, Lsfs2x/client/util/LagMonitor;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lsfs2x/client/util/LagMonitor;->pollTimer:Ljava/util/Timer;

    .line 45
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor;->pollTimer:Ljava/util/Timer;

    new-instance v1, Lsfs2x/client/util/LagMonitor$PollTimerTask;

    invoke-direct {v1, p0}, Lsfs2x/client/util/LagMonitor$PollTimerTask;-><init>(Lsfs2x/client/util/LagMonitor;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lsfs2x/client/util/LagMonitor;->interval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/util/LagMonitor;->isPollRunning:Z

    .line 48
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lsfs2x/client/util/LagMonitor;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor;->pollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor;->pollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lsfs2x/client/util/LagMonitor;->pollTimer:Ljava/util/Timer;

    .line 57
    :cond_0
    return-void
.end method
