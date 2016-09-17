.class final Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
.super Ljava/lang/Object;
.source "OrderedMemoryAwareThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChildExecutor"
.end annotation


# instance fields
.field private final tasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;)V
    .locals 1

    .prologue
    .line 289
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    .line 291
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 295
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 297
    .local v0, "needsExecution":Z
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v1, p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    .line 303
    :cond_0
    return-void

    .line 298
    .end local v0    # "needsExecution":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 7

    .prologue
    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 309
    .local v3, "thread":Ljava/lang/Thread;
    :goto_0
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    monitor-enter v5

    .line 310
    :try_start_0
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 311
    .local v2, "task":Ljava/lang/Runnable;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "ran":Z
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v4, v3, v2}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 316
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 317
    const/4 v1, 0x1

    .line 318
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->onAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 325
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    monitor-enter v5

    .line 326
    :try_start_2
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 327
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    :goto_1
    return-void

    .line 311
    .end local v1    # "ran":Z
    .end local v2    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 330
    .restart local v1    # "ran":Z
    .restart local v2    # "task":Ljava/lang/Runnable;
    :cond_0
    :try_start_4
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_1

    .line 321
    :try_start_5
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v4, v2, v0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->onAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 323
    :cond_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 325
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    monitor-enter v5

    .line 326
    :try_start_6
    iget-object v6, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 327
    iget-object v6, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    monitor-exit v5

    goto :goto_1

    .line 330
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    :cond_2
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4
.end method
