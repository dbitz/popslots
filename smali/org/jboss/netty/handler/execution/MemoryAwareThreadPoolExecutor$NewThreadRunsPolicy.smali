.class final Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;
.super Ljava/lang/Object;
.source "MemoryAwareThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewThreadRunsPolicy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 523
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "Temporary task executor"

    invoke-direct {v1, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 524
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    return-void

    .line 525
    .end local v1    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v3, "Failed to start a new thread"

    invoke-direct {v2, v3, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
