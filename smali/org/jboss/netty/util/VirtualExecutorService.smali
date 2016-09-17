.class public Lorg/jboss/netty/util/VirtualExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "VirtualExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;
    }
.end annotation


# instance fields
.field activeThreads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private final s:Ljava/util/concurrent/ExecutorService;

.field volatile shutdown:Z

.field final startStopLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "parent"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/jboss/netty/util/MapBackedSet;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 98
    iput-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService;->e:Ljava/util/concurrent/Executor;

    .line 99
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .end local p1    # "parent":Ljava/util/concurrent/Executor;
    iput-object p1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    .line 104
    :goto_0
    return-void

    .line 101
    .restart local p1    # "parent":Ljava/util/concurrent/Executor;
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->e:Ljava/util/concurrent/Executor;

    .line 102
    iput-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;-><init>(Lorg/jboss/netty/util/VirtualExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;-><init>(Lorg/jboss/netty/util/VirtualExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    monitor-exit v1

    return v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    if-eqz v0, :cond_0

    .line 121
    monitor-exit v1

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    .line 124
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v3, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v3

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown()V

    .line 131
    iget-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 132
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
