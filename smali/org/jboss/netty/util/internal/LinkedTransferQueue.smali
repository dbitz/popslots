.class public Lorg/jboss/netty/util/internal/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;,
        Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue;",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue;",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field volatile transient sweepVotes:I

.field volatile transient tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->$assertionsDisabled:Z

    .line 396
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    if-le v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->MP:Z

    .line 1341
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    const-class v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    const-string/jumbo v2, "head"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1344
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    const-class v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    const-string/jumbo v2, "tail"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1347
    const-class v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    const-string/jumbo v1, "sweepVotes"

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->newIntUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0

    :cond_1
    move v1, v2

    .line 396
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1029
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1030
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    .line 1043
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 1044
    return-void
.end method

.method private awaitMatch(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 11
    .param p1, "s"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "pred"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            "Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 732
    .local v2, "lastTime":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 733
    .local v7, "w":Ljava/lang/Thread;
    const/4 v6, -0x1

    .line 734
    .local v6, "spins":I
    const/4 v1, 0x0

    .line 737
    .local v1, "randomYields":Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    :cond_0
    :goto_1
    iget-object v0, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 738
    .local v0, "item":Ljava/lang/Object;
    if-eq v0, p3, :cond_3

    .line 739
    sget-boolean v8, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    if-ne v0, p1, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 731
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "randomYields":Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    .end local v2    # "lastTime":J
    .end local v6    # "spins":I
    .end local v7    # "w":Ljava/lang/Thread;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 740
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "randomYields":Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    .restart local v2    # "lastTime":J
    .restart local v6    # "spins":I
    .restart local v7    # "w":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetContents()V

    .line 741
    invoke-static {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 746
    .end local p3    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    return-object p3

    .line 743
    .restart local p3    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz p4, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-gtz v8, :cond_5

    :cond_4
    invoke-virtual {p1, p3, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 745
    invoke-virtual {p0, p2, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    goto :goto_2

    .line 749
    :cond_5
    if-gez v6, :cond_6

    .line 750
    iget-boolean v8, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v8}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->spinsFor(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)I

    move-result v6

    if-lez v6, :cond_0

    .line 751
    invoke-static {}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->current()Lorg/jboss/netty/util/internal/ThreadLocalRandom;

    move-result-object v1

    goto :goto_1

    .line 754
    :cond_6
    if-lez v6, :cond_7

    .line 755
    add-int/lit8 v6, v6, -0x1

    .line 756
    const/16 v8, 0x40

    invoke-virtual {v1, v8}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v8

    if-nez v8, :cond_0

    .line 757
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 760
    :cond_7
    iget-object v8, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v8, :cond_8

    .line 761
    iput-object v7, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 763
    :cond_8
    if-eqz p4, :cond_a

    .line 764
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 765
    .local v4, "now":J
    sub-long v8, v4, v2

    sub-long p5, p5, v8

    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-lez v8, :cond_9

    .line 766
    invoke-static/range {p5 .. p6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 768
    :cond_9
    move-wide v2, v4

    .line 769
    goto :goto_1

    .line 771
    .end local v4    # "now":J
    :cond_a
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_1
.end method

.method private casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z
    .locals 1
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .prologue
    .line 576
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 584
    :goto_0
    return v0

    .line 579
    :cond_0
    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v0, p1, :cond_1

    .line 581
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 582
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 584
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private casSweepVotes(II)Z
    .locals 1
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .prologue
    .line 591
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    .line 599
    :goto_0
    return v0

    .line 594
    :cond_0
    monitor-enter p0

    .line 595
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotes:I

    if-ne v0, p1, :cond_1

    .line 596
    iput p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotes:I

    .line 597
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 599
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private casTail(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z
    .locals 1
    .param p1, "cmp"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "val"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .prologue
    .line 561
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-static {}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    sget-object v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 569
    :goto_0
    return v0

    .line 564
    :cond_0
    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v0, p1, :cond_1

    .line 566
    iput-object p2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 567
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 569
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 615
    sget-boolean v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 616
    :cond_0
    return-object p0
.end method

.method private countOfMode(Z)I
    .locals 4
    .param p1, "data"    # Z

    .prologue
    .line 844
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 845
    .local v0, "count":I
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v2, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 846
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_2

    .line 847
    iget-boolean v3, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_0

    .line 848
    const/4 v3, 0x0

    .line 862
    :goto_1
    return v3

    .line 850
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    :cond_1
    move v3, v0

    .line 862
    goto :goto_1

    .line 854
    :cond_2
    iget-object v1, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 855
    .local v1, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v1, v2, :cond_3

    .line 856
    move-object v2, v1

    goto :goto_0

    .line 858
    :cond_3
    const/4 v0, 0x0

    .line 859
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1001
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2

    .line 1002
    const/4 v2, 0x0

    .local v2, "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1003
    iget-object v0, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1004
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 1005
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1007
    invoke-virtual {p0, v2, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 1008
    const/4 v3, 0x1

    .line 1021
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_1
    return v3

    .line 1011
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v2    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_1
    if-nez v0, :cond_3

    .line 1021
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1014
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v2    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_3
    move-object v2, v1

    .line 1015
    iget-object v1, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_0

    .line 1016
    const/4 v2, 0x0

    .line 1017
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private firstDataItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 825
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 826
    iget-object v0, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 827
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 828
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    .line 829
    invoke-static {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 836
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-object v2

    .line 832
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_0

    .line 825
    :cond_2
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0
.end method

.method private firstOfMode(Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .locals 3
    .param p1, "isData"    # Z

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 813
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_1

    .line 814
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-ne v2, p1, :cond_0

    .line 817
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_1
    return-object v0

    .restart local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_0
    move-object v0, v1

    .line 814
    goto :goto_1

    .line 812
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 817
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1331
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1332
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1338
    return-void

    .line 1335
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static spinsFor(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)I
    .locals 1
    .param p0, "pred"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .prologue
    .line 781
    sget-boolean v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 782
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_0

    .line 783
    const/16 v0, 0xc0

    .line 792
    :goto_0
    return v0

    .line 785
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    const/16 v0, 0x80

    goto :goto_0

    .line 788
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 789
    const/16 v0, 0x40

    goto :goto_0

    .line 792
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sweep()V
    .locals 4

    .prologue
    .line 984
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v2, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v2, :cond_2

    .line 985
    if-ne v1, v2, :cond_0

    .line 986
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    move-object v1, v2

    goto :goto_0

    .line 989
    :cond_1
    iget-object v0, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v0, :cond_3

    .line 995
    .end local v0    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_2
    return-void

    .line 992
    .restart local v0    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v2    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_3
    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    goto :goto_0
.end method

.method private tryAppend(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .locals 6
    .param p1, "s"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 690
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v2, "t":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    move-object v1, v2

    .line 692
    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-nez v1, :cond_2

    .line 693
    invoke-direct {p0, v4, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 713
    :cond_1
    :goto_1
    return-object v4

    .line 697
    :cond_2
    invoke-virtual {v1, p2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 699
    iget-object v0, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_5

    .line 700
    if-eq v1, v2, :cond_3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v3, "u":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_3

    move-object v2, v3

    move-object v1, v3

    .end local v3    # "u":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_2
    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v4

    goto :goto_2

    .line 702
    :cond_5
    invoke-virtual {v1, v4, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 703
    iget-object v1, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_0

    .line 705
    :cond_6
    if-eq v1, v2, :cond_9

    .line 709
    :cond_7
    iget-object v4, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v4, v2, :cond_8

    invoke-direct {p0, v2, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casTail(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    iget-object p1, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_7

    :cond_9
    move-object v4, v1

    .line 713
    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1314
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1315
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1318
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1319
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 16
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 631
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 633
    :cond_0
    const/4 v4, 0x0

    .line 637
    .local v4, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v2, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    move-object v13, v2

    .local v13, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v13, :cond_2

    .line 638
    iget-boolean v10, v13, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    .line 639
    .local v10, "isData":Z
    iget-object v11, v13, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 640
    .local v11, "item":Ljava/lang/Object;
    if-eq v11, v13, :cond_b

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-ne v3, v10, :cond_b

    .line 641
    move/from16 v0, p2

    if-ne v10, v0, :cond_6

    .line 664
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_4

    .line 665
    if-nez v4, :cond_3

    .line 666
    new-instance v4, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .end local v4    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    .line 668
    .restart local v4    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->tryAppend(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v5

    .line 669
    .local v5, "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v5, :cond_1

    .line 672
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_4

    .line 673
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->awaitMatch(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object p1

    .line 676
    .end local v5    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    :goto_3
    return-object p1

    .line 640
    .restart local v10    # "isData":Z
    .restart local v11    # "item":Ljava/lang/Object;
    .restart local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 644
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v11, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 645
    move-object v14, v13

    .local v14, "q":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_7
    if-eq v14, v2, :cond_9

    .line 646
    iget-object v12, v14, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 647
    .local v12, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v3, v2, :cond_a

    if-nez v12, :cond_8

    move-object v12, v14

    .end local v12    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 648
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetNext()V

    .line 656
    :cond_9
    :goto_4
    iget-object v3, v13, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 657
    invoke-static {v11}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 651
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    iget-object v14, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 660
    .end local v14    # "q":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_b
    iget-object v12, v13, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 661
    .restart local v12    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v13, v12, :cond_c

    move-object v13, v12

    .line 662
    :goto_5
    goto/16 :goto_0

    .line 661
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v13, v2

    goto :goto_5

    .line 673
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    .end local v12    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v5    # "pred":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_d
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1093
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1094
    return v2
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 1180
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1181
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1183
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1186
    :cond_1
    const/4 v1, 0x0

    .line 1188
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1189
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1201
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1203
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1204
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1206
    :cond_1
    const/4 v1, 0x0

    .line 1208
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1209
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    .prologue
    .line 1274
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 2

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 1253
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->firstOfMode(Z)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x1

    .line 1244
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1246
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-nez v2, :cond_1

    .line 1249
    :cond_0
    :goto_1
    return v1

    .line 1246
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1244
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1230
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;-><init>(Lorg/jboss/netty/util/internal/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1079
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1080
    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1066
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1067
    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1172
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1165
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1166
    :cond_0
    return-object v6

    .line 1168
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1053
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1054
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 1301
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1290
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1270
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .locals 1
    .param p1, "p"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .prologue
    .line 803
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 804
    .local v0, "next":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .end local v0    # "next":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1155
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1156
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    .line 1157
    return-object v6

    .line 1159
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1160
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1125
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1127
    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1108
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1145
    const/4 v3, 0x3

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1149
    :goto_0
    return v2

    .line 1148
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    const/4 v2, 0x0

    goto :goto_0

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V
    .locals 5
    .param p1, "pred"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .param p2, "s"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .prologue
    .line 934
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>;"
    invoke-virtual {p2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetContents()V

    .line 942
    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    iget-object v4, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-ne v4, p2, :cond_1

    .line 943
    iget-object v2, p2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 944
    .local v2, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_1

    invoke-virtual {p1, p2, v2}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 947
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 948
    .local v0, "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-nez v0, :cond_2

    .line 978
    .end local v0    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v2    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_1
    :goto_1
    return-void

    .line 951
    .restart local v0    # "h":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v2    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_2
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-nez v4, :cond_4

    .line 962
    iget-object v4, p1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eq v4, p1, :cond_1

    iget-object v4, p2, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eq v4, p2, :cond_1

    .line 964
    :cond_3
    iget v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweepVotes:I

    .line 965
    .local v3, "v":I
    const/16 v4, 0x20

    if-ge v3, v4, :cond_5

    .line 966
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 954
    .end local v3    # "v":I
    :cond_4
    iget-object v1, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 955
    .local v1, "hn":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v1, :cond_1

    .line 958
    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_0

    .line 970
    .end local v1    # "hn":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v3    # "v":I
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 971
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->sweep()V

    goto :goto_1
.end method
