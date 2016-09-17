.class public Lorg/jboss/netty/util/internal/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static isShutdown(Ljava/util/concurrent/Executor;)Z
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 41
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .end local p0    # "executor":Ljava/util/concurrent/Executor;
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs terminate([Ljava/util/concurrent/Executor;)V
    .locals 13
    .param p0, "executors"    # [Ljava/util/concurrent/Executor;

    .prologue
    .line 53
    array-length v10, p0

    new-array v5, v10, [Ljava/util/concurrent/Executor;

    .line 54
    .local v5, "executorsCopy":[Ljava/util/concurrent/Executor;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, p0

    if-ge v6, v10, :cond_1

    .line 55
    aget-object v10, p0, v6

    if-nez v10, :cond_0

    .line 56
    new-instance v10, Ljava/lang/NullPointerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "executors["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 58
    :cond_0
    aget-object v10, p0, v6

    aput-object v10, v5, v6

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v8, 0x0

    .line 62
    .local v8, "interrupted":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/util/concurrent/Executor;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v1, v0, v7

    .line 63
    .local v1, "e":Ljava/util/concurrent/Executor;
    instance-of v10, v1, Ljava/util/concurrent/ExecutorService;

    if-nez v10, :cond_2

    .line 62
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 67
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 70
    .local v2, "es":Ljava/util/concurrent/ExecutorService;
    :cond_3
    :goto_3
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 87
    :goto_4
    const-wide/16 v10, 0x64

    :try_start_1
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v10, v11, v12}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 71
    :catch_0
    move-exception v3

    .line 74
    .local v3, "ex":Ljava/lang/SecurityException;
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    .line 75
    :catch_1
    move-exception v4

    .line 78
    .local v4, "ex2":Ljava/lang/SecurityException;
    goto :goto_2

    .line 90
    .end local v3    # "ex":Ljava/lang/SecurityException;
    .end local v4    # "ex2":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    .line 91
    .local v3, "ex":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    .line 92
    goto :goto_3

    .line 96
    .end local v1    # "e":Ljava/util/concurrent/Executor;
    .end local v2    # "es":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    if-eqz v8, :cond_5

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 99
    :cond_5
    return-void

    .line 82
    .restart local v1    # "e":Ljava/util/concurrent/Executor;
    .restart local v2    # "es":Ljava/util/concurrent/ExecutorService;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 79
    .local v3, "ex":Ljava/lang/SecurityException;
    :catch_4
    move-exception v10

    goto :goto_4
.end method
