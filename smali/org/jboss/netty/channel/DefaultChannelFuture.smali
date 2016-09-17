.class public Lorg/jboss/netty/channel/DefaultChannelFuture;
.super Ljava/lang/Object;
.source "DefaultChannelFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFuture;


# static fields
.field private static final CANCELLED:Ljava/lang/Throwable;

.field private static disabledDeadLockCheckerOnce:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static volatile useDeadLockChecker:Z


# instance fields
.field private final cancellable:Z

.field private cause:Ljava/lang/Throwable;

.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private done:Z

.field private firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/ChannelFutureListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/ChannelFutureProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private waiters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 45
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Z)V
    .locals 0
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "cancellable"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->channel:Lorg/jboss/netty/channel/Channel;

    .line 92
    iput-boolean p2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancellable:Z

    .line 93
    return-void
.end method

.method private await0(JZ)Z
    .locals 13
    .param p1, "timeoutNanos"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 244
    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 245
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 248
    :cond_0
    cmp-long v8, p1, v6

    if-gtz v8, :cond_2

    move-wide v2, v6

    .line 249
    .local v2, "startTime":J
    :goto_0
    move-wide v4, p1

    .line 250
    .local v4, "waitTime":J
    const/4 v1, 0x0

    .line 253
    .local v1, "interrupted":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 254
    :try_start_1
    iget-boolean v8, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v8, :cond_3

    .line 255
    iget-boolean v6, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_1
    return v6

    .line 248
    .end local v1    # "interrupted":Z
    .end local v2    # "startTime":J
    .end local v4    # "waitTime":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    goto :goto_0

    .line 256
    .restart local v1    # "interrupted":Z
    .restart local v2    # "startTime":J
    .restart local v4    # "waitTime":J
    :cond_3
    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    .line 257
    :try_start_2
    iget-boolean v6, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 260
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    .line 261
    iget v8, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    :cond_5
    const-wide/32 v8, 0xf4240

    :try_start_4
    div-long v8, v4, v8

    const-wide/32 v10, 0xf4240

    rem-long v10, v4, v10

    long-to-int v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/Object;->wait(JI)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    :goto_2
    :try_start_5
    iget-boolean v8, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_8

    .line 275
    const/4 v6, 0x1

    .line 284
    :try_start_6
    iget v7, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/InterruptedException;
    if-eqz p3, :cond_7

    .line 268
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    :try_start_8
    iget v7, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v6

    .line 286
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 288
    :catchall_2
    move-exception v6

    if-eqz v1, :cond_6

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v6

    .line 270
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 277
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :try_start_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    sub-long v4, p1, v8

    .line 278
    cmp-long v8, v4, v6

    if-gtz v8, :cond_5

    .line 279
    iget-boolean v6, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 284
    :try_start_b
    iget v7, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private checkDeadLock()V
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->isUseDeadLockChecker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->IN_IO_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    return-void
.end method

.method public static isUseDeadLockChecker()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return v0
.end method

.method private notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .locals 4
    .param p1, "l"    # Lorg/jboss/netty/channel/ChannelFutureListener;

    .prologue
    .line 381
    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/ChannelFutureListener;->operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 368
    iput-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 370
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 372
    .local v1, "l":Lorg/jboss/netty/channel/ChannelFutureListener;
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0

    .line 374
    .end local v1    # "l":Lorg/jboss/netty/channel/ChannelFutureListener;
    :cond_0
    iput-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    .line 377
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private notifyProgressListener(Lorg/jboss/netty/channel/ChannelFutureProgressListener;JJJ)V
    .locals 10
    .param p1, "l"    # Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    .param p2, "amount"    # J
    .param p4, "current"    # J
    .param p6, "total"    # J

    .prologue
    .line 420
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lorg/jboss/netty/channel/ChannelFutureProgressListener;->operationProgressed(Lorg/jboss/netty/channel/ChannelFuture;JJJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v8

    .line 422
    .local v8, "t":Ljava/lang/Throwable;
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "An exception was thrown by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUseDeadLockChecker(Z)V
    .locals 3
    .param p0, "useDeadLockChecker"    # Z

    .prologue
    .line 62
    if-nez p0, :cond_0

    sget-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->disabledDeadLockCheckerOnce:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->disabledDeadLockCheckerOnce:Z

    .line 64
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The dead lock checker in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been disabled as requested at your own risk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 69
    :cond_0
    sput-boolean p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    .line 70
    return-void
.end method


# virtual methods
.method public addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/jboss/netty/channel/ChannelFutureListener;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "listener"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 125
    .local v1, "notifyNow":Z
    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v2, :cond_3

    .line 127
    const/4 v1, 0x1

    .line 145
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v1, :cond_2

    .line 148
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 150
    :cond_2
    return-void

    .line 129
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-nez v2, :cond_5

    .line 130
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 138
    :goto_1
    instance-of v2, p1, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    if-nez v2, :cond_4

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    .line 142
    :cond_4
    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    move-object v2, v0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 132
    :cond_5
    :try_start_2
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-nez v2, :cond_6

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    .line 135
    :cond_6
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public await()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 181
    :cond_0
    monitor-enter p0

    .line 182
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v0, :cond_1

    .line 183
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    .line 184
    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :try_start_2
    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 188
    :catchall_1
    move-exception v0

    :try_start_3
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v0

    .line 191
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    return-object p0
.end method

.method public await(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "interrupted":Z
    monitor-enter p0

    .line 207
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v2, :cond_0

    .line 208
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    .line 209
    iget v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    iget v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 215
    :try_start_3
    iget v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    iget v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v2

    .line 218
    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    if-eqz v1, :cond_1

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 224
    :cond_1
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 237
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public cancel()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 339
    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancellable:Z

    if-nez v2, :cond_0

    .line 357
    :goto_0
    return v0

    .line 343
    :cond_0
    monitor-enter p0

    .line 345
    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v2, :cond_1

    .line 346
    monitor-exit p0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    :cond_1
    :try_start_1
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    .line 351
    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v0, :cond_2

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    move v0, v1

    .line 357
    goto :goto_0
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuccess()Z
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jboss/netty/channel/ChannelFutureListener;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-ne p1, v0, :cond_4

    .line 160
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelFutureListener;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 169
    :cond_1
    :goto_0
    instance-of v0, p1, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    monitor-exit p0

    .line 174
    return-void

    .line 163
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 165
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 321
    monitor-enter p0

    .line 323
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v1, :cond_0

    .line 324
    const/4 v0, 0x0

    monitor-exit p0

    .line 335
    :goto_0
    return v0

    .line 327
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    .line 329
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_1

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 332
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setProgress(JJJ)Z
    .locals 13
    .param p1, "amount"    # J
    .param p3, "current"    # J
    .param p5, "total"    # J

    .prologue
    .line 391
    monitor-enter p0

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    monitor-exit p0

    .line 412
    :goto_0
    return v0

    .line 397
    :cond_0
    iget-object v12, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    .line 399
    .local v12, "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 406
    .end local v12    # "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 404
    .restart local v12    # "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    :cond_2
    :try_start_1
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-interface {v12, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    .line 406
    .local v11, "plisteners":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    move-object v8, v11

    .local v8, "arr$":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v1, v8, v9

    .local v1, "pl":Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    .line 409
    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyProgressListener(Lorg/jboss/netty/channel/ChannelFutureProgressListener;JJJ)V

    .line 408
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "pl":Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 304
    monitor-enter p0

    .line 306
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v1, :cond_0

    .line 307
    const/4 v0, 0x0

    monitor-exit p0

    .line 317
    :goto_0
    return v0

    .line 310
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    .line 311
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_1

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
