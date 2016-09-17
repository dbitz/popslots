.class final Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final itemUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 433
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->$assertionsDisabled:Z

    .line 542
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    const-class v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    const-string/jumbo v2, "next"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 544
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    const-class v1, Ljava/lang/Object;

    const-string/jumbo v2, "item"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->itemUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 477
    iput-boolean p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    .line 478
    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .locals 5
    .param p1, "haveData"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 524
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    .line 526
    .local v0, "d":Z
    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .local v1, "x":Ljava/lang/Object;
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    if-ne v4, v0, :cond_1

    .end local v1    # "x":Ljava/lang/Object;
    :goto_1
    return v2

    .restart local v1    # "x":Ljava/lang/Object;
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v1    # "x":Ljava/lang/Object;
    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 456
    sget-boolean v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 457
    :cond_0
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->itemUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 465
    :goto_0
    return v0

    .line 460
    :cond_1
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    .line 462
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 463
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 465
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z
    .locals 1
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .prologue
    .line 441
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 449
    :goto_0
    return v0

    .line 444
    :cond_0
    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v0, p1, :cond_1

    .line 446
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 447
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 449
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final forgetContents()V
    .locals 1

    .prologue
    .line 498
    iput-object p0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    .line 500
    return-void
.end method

.method final forgetNext()V
    .locals 0

    .prologue
    .line 485
    iput-object p0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 486
    return-void
.end method

.method final isMatched()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 508
    .local v0, "x":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-ne v1, v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method final isUnmatchedRequest()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final tryMatchData()Z
    .locals 2

    .prologue
    .line 533
    sget-boolean v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 535
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 537
    const/4 v1, 0x1

    .line 539
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
