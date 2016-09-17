.class public Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;
.super Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.source "OrderedMemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
    }
.end annotation


# instance fields
.field private final childExecutors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJ)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J

    .prologue
    .line 157
    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJ)V

    .line 144
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 158
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 174
    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    .line 144
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 176
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 193
    invoke-direct/range {p0 .. p9}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 144
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 195
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p10, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 214
    invoke-direct/range {p0 .. p10}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V

    .line 144
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 216
    return-void
.end method

.method private getChildExecutor(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/util/concurrent/Executor;
    .locals 7
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->getChildExecutorKey(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/lang/Object;

    move-result-object v2

    .line 252
    .local v2, "key":Ljava/lang/Object;
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 253
    .local v1, "executor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;

    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;-><init>(Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;)V

    .line 255
    .restart local v1    # "executor":Ljava/util/concurrent/Executor;
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 256
    .local v3, "oldExecutor":Ljava/util/concurrent/Executor;
    if-eqz v3, :cond_0

    .line 257
    move-object v1, v3

    .line 262
    .end local v3    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_0
    instance-of v5, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v5, :cond_1

    .line 263
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    move-object v4, p1

    .line 264
    check-cast v4, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 265
    .local v4, "se":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v5

    sget-object v6, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    if-ne v5, v6, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 267
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v0    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v4    # "se":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected doExecute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 242
    instance-of v1, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    .line 248
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 245
    check-cast v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 246
    .local v0, "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    invoke-virtual {v0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->getChildExecutor(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected getChildExecutorKey(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 223
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method protected getChildExecutorKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>()V

    return-object v0
.end method

.method onAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 283
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method protected removeChildExecutor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 275
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0
.end method
