.class public Lcom/helpshift/util/concurrent/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"


# instance fields
.field private afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private tasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isConcurrent"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method private trackTask(Ljava/util/concurrent/Future;)V
    .locals 1
    .param p1, "task"    # Ljava/util/concurrent/Future;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchAfter(Ljava/lang/Runnable;J)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "interval"    # J

    .prologue
    .line 57
    move-object v4, p0

    .line 58
    .local v4, "queue":Lcom/helpshift/util/concurrent/DispatchQueue;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/helpshift/util/concurrent/DispatchQueue$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/util/concurrent/DispatchQueue$1;-><init>(Lcom/helpshift/util/concurrent/DispatchQueue;JLcom/helpshift/util/concurrent/DispatchQueue;Ljava/lang/Runnable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .local v6, "triggerThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 70
    iget-object v0, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public dispatchAsync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 53
    .local v0, "task":Ljava/util/concurrent/Future;
    invoke-direct {p0, v0}, Lcom/helpshift/util/concurrent/DispatchQueue;->trackTask(Ljava/util/concurrent/Future;)V

    .line 54
    return-void
.end method

.method public dispatchSync(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 39
    .local v1, "taskFuture":Ljava/util/concurrent/Future;
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "HelpshiftDebug"

    const-string/jumbo v3, "Runnable interrupted : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v2, "HelpshiftDebug"

    const-string/jumbo v3, "Execution exception : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public join()V
    .locals 5

    .prologue
    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 76
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    .end local v1    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "HelpshiftDebug"

    const-string/jumbo v4, "Runnable interrupted : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 79
    .local v2, "task":Ljava/util/concurrent/Future;
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 84
    .end local v2    # "task":Ljava/util/concurrent/Future;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "HelpshiftDebug"

    const-string/jumbo v4, "Execution exception : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/helpshift/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
