.class public Lorg/jboss/netty/channel/DefaultChannelPipeline;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;,
        Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    }
.end annotation


# static fields
.field static final discardingSink:Lorg/jboss/netty/channel/ChannelSink;

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile channel:Lorg/jboss/netty/channel/Channel;

.field private volatile head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sink:Lorg/jboss/netty/channel/ChannelSink;

.field private volatile tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 40
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 340
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v5

    instance-of v5, v5, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v5, :cond_0

    .line 368
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 348
    .local v1, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v3

    .line 350
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 352
    .local v2, "removed":Z
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v5, v0

    invoke-direct {p0, v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    const/4 v2, 0x1

    .line 358
    :goto_1
    if-eqz v2, :cond_1

    .line 359
    new-instance v5, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 354
    :catch_1
    move-exception v4

    .line 355
    .local v4, "t2":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to remove a handler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 363
    .end local v4    # "t2":Ljava/lang/Throwable;
    :cond_1
    new-instance v5, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 388
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v2, :cond_0

    .line 402
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 396
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".afterRemove() has thrown an exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 323
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v2, :cond_0

    .line 337
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 331
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".beforeAdd() has thrown an exception; not adding."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 371
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v2, :cond_0

    .line 385
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 379
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".beforeRemove() has thrown an exception; not removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkDuplicateName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 638
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Duplicate handler name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    return-void
.end method

.method private getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 663
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 664
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_0
    return-object v0
.end method

.method private getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 645
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 646
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_0
    return-object v0
.end method

.method private getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 3
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 654
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 655
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :cond_0
    return-object v0
.end method

.method private init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    const/4 v2, 0x0

    .line 629
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 630
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 631
    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 632
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 633
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 635
    return-void
.end method

.method private remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .prologue
    .line 172
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v2, v3, :cond_0

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 174
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 190
    :goto_0
    return-object p1

    .line 175
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v2, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v2, :cond_2

    .line 178
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 182
    iget-object v1, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 183
    .local v1, "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v0, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 184
    .local v0, "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 185
    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 186
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0
.end method

.method private replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 260
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    .line 262
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1

    .line 263
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v1, :cond_2

    .line 264
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 265
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 268
    .local v11, "sameName":Z
    if-nez v11, :cond_3

    .line 269
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 272
    :cond_3
    iget-object v2, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 273
    .local v2, "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v3, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 274
    .local v3, "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 276
    .local v0, "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 277
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 279
    iput-object v0, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 280
    iput-object v0, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 282
    if-nez v11, :cond_4

    .line 283
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_4
    const/4 v9, 0x0

    .line 288
    .local v9, "removeException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    const/4 v6, 0x0

    .line 289
    .local v6, "addException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    const/4 v10, 0x0

    .line 291
    .local v10, "removed":Z
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    const/4 v10, 0x1

    .line 297
    :goto_1
    const/4 v7, 0x0

    .line 299
    .local v7, "added":Z
    :try_start_1
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    const/4 v7, 0x1

    .line 305
    :goto_2
    if-nez v10, :cond_5

    if-nez v7, :cond_5

    .line 306
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-virtual {v9}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v9}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-virtual {v6}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v6}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Both "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".afterRemove() and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".afterAdd() failed; see logs."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    .end local v7    # "added":Z
    :catch_0
    move-exception v8

    .line 294
    .local v8, "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    move-object v9, v8

    goto :goto_1

    .line 301
    .end local v8    # "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    .restart local v7    # "added":Z
    :catch_1
    move-exception v8

    .line 302
    .restart local v8    # "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    move-object v6, v8

    goto :goto_2

    .line 312
    .end local v8    # "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    :cond_5
    if-nez v10, :cond_6

    .line 313
    throw v9

    .line 314
    :cond_6
    if-nez v7, :cond_0

    .line 315
    throw v6
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v2

    .line 142
    .local v2, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v2, v1, :cond_0

    .line 143
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v3, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 148
    .local v0, "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 150
    iget-object v1, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 151
    iput-object v0, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 152
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v0    # "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v2    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v3

    .line 124
    .local v3, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v3, v1, :cond_0

    .line 125
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v2, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 130
    .local v0, "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 132
    iget-object v1, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 133
    iput-object v0, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 134
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v3    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 92
    .local v3, "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 94
    .local v0, "newHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 96
    iput-object v0, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 97
    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 98
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "newHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v3    # "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 110
    .local v2, "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 112
    .local v0, "newTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 114
    iput-object v0, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 115
    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 116
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "newTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v2    # "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sink"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_3

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attached already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    .line 79
    iput-object p2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 80
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 432
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 435
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 431
    .end local v0    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 425
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 421
    .end local v0    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .prologue
    const/4 v1, 0x0

    .line 591
    if-nez p1, :cond_1

    move-object v0, v1

    .line 603
    :cond_0
    :goto_0
    return-object v0

    .line 595
    :cond_1
    move-object v0, p1

    .line 596
    .local v0, "realCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_2
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream()Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 598
    if-nez v0, :cond_2

    move-object v0, v1

    .line 599
    goto :goto_0
.end method

.method getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .prologue
    const/4 v1, 0x0

    .line 575
    if-nez p1, :cond_1

    move-object v0, v1

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 579
    :cond_1
    move-object v0, p1

    .line 580
    .local v0, "realCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_2
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 582
    if-nez v0, :cond_2

    move-object v0, v1

    .line 583
    goto :goto_0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public declared-synchronized getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;"
        }
    .end annotation

    .prologue
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    const/4 v1, 0x0

    .line 469
    monitor-enter p0

    if-nez p1, :cond_0

    .line 470
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "handlerType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 473
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 487
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 476
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 478
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    if-nez v0, :cond_3

    move-object v0, v1

    .line 487
    goto :goto_0
.end method

.method public declared-synchronized getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 440
    monitor-enter p0

    if-nez p1, :cond_0

    .line 441
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 3
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    const/4 v1, 0x0

    .line 447
    monitor-enter p0

    if-nez p1, :cond_0

    .line 448
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "handler"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 450
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 464
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 453
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 455
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 459
    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    if-nez v0, :cond_3

    move-object v0, v1

    .line 464
    goto :goto_0
.end method

.method public declared-synchronized getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .local v0, "head":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 409
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 405
    .end local v0    # "head":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .local v0, "tail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 415
    const/4 v1, 0x0

    .line 417
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 413
    .end local v0    # "tail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSink()Lorg/jboss/netty/channel/ChannelSink;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 62
    .local v0, "sink":Lorg/jboss/netty/channel/ChannelSink;
    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    .line 65
    .end local v0    # "sink":Lorg/jboss/netty/channel/ChannelSink;
    :cond_0
    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 607
    instance-of v2, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v2, :cond_0

    .line 608
    sget-object v2, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An exception was thrown by a user handler while handling an exception event ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    :goto_0
    return-void

    .line 615
    :cond_0
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 616
    check-cast v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    .line 622
    .local v1, "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-interface {v2, p0, p1, v1}, Lorg/jboss/netty/channel/ChannelSink;->exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e1":Ljava/lang/Exception;
    sget-object v2, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "An exception was thrown by an exception handler."

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 618
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v1    # "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    :cond_1
    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v1, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    .restart local v1    # "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    goto :goto_1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 198
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 199
    .local v0, "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_1

    .line 200
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 203
    :cond_1
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 205
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v1, :cond_2

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 207
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 214
    :goto_0
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 216
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 209
    :cond_2
    :try_start_2
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 210
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 211
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 225
    .local v0, "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_1

    .line 226
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 229
    :cond_1
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 231
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v1, :cond_2

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 233
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 240
    :goto_0
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 242
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 235
    :cond_2
    :try_start_2
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 236
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 237
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "oldHandlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "oldHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 552
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v1

    .line 553
    .local v1, "tail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v1, :cond_0

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 563
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 568
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/ChannelDownstreamHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 533
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 534
    .local v0, "head":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 535
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The pipeline contains no upstream handlers; discarding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 545
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/ChannelUpstreamHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 492
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    :goto_0
    return-object v1

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 498
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 500
    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 517
    .local v1, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_0
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string/jumbo v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 523
    if-nez v1, :cond_0

    .line 528
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 526
    :cond_0
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
