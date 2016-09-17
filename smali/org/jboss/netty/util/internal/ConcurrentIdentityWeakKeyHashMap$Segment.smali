.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentIdentityWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d5363c2e48baa38L


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field modCount:I

.field volatile transient refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile transient table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "lf"    # F

    .prologue
    .line 315
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 316
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->loadFactor:F

    .line 317
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->setTable([Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;)V

    .line 318
    return-void
.end method

.method private keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "dest"    # Ljava/lang/Object;

    .prologue
    .line 326
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;
    .locals 1
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 322
    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 629
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 630
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 632
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 633
    .local v1, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 634
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_0
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    .line 639
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 640
    const/4 v2, 0x0

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    .line 645
    .end local v0    # "i":I
    .end local v1    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_1
    return-void

    .line 642
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 390
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 392
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 393
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x1

    .line 399
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_1
    return v1

    .line 396
    .restart local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_0

    .line 399
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 403
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    iget v6, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    if-eqz v6, :cond_3

    .line 404
    iget-object v4, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 405
    .local v4, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v2, v4

    .line 406
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 407
    aget-object v0, v4, v1

    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 408
    iget-object v3, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->valueRef:Ljava/lang/Object;

    .line 411
    .local v3, "opaque":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 412
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v5

    .line 417
    .local v5, "v":Ljava/lang/Object;, "TV;"
    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 418
    const/4 v6, 0x1

    .line 423
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "opaque":Ljava/lang/Object;
    .end local v4    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :goto_3
    return v6

    .line 414
    .restart local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "opaque":Ljava/lang/Object;
    .restart local v4    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {v0, v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->dereferenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 407
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_1

    .line 406
    .end local v3    # "opaque":Ljava/lang/Object;
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 373
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 374
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 375
    iget v2, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->valueRef:Ljava/lang/Object;

    .line 377
    .local v1, "opaque":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->dereferenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 386
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "opaque":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 381
    .restart local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "opaque":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 383
    .end local v1    # "opaque":Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_0

    .line 386
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 344
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry",
            "<TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->removeStale()V

    .line 470
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    .line 471
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    iget v8, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->threshold:I

    if-le v0, v8, :cond_4

    .line 472
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->rehash()I

    move-result v6

    .line 473
    .local v6, "reduced":I
    if-lez v6, :cond_4

    .line 474
    sub-int v0, v1, v6

    .end local v1    # "c":I
    .restart local v0    # "c":I
    add-int/lit8 v8, v0, -0x1

    iput v8, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    .line 478
    .end local v6    # "reduced":I
    :goto_0
    iget-object v7, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 479
    .local v7, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    and-int v4, p2, v8

    .line 480
    .local v4, "index":I
    aget-object v3, v7, v4

    .line 481
    .local v3, "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object v2, v3

    .line 482
    .local v2, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_1

    iget v8, v2, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    if-ne v8, p2, :cond_0

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 483
    :cond_0
    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_1

    .line 487
    :cond_1
    if-eqz v2, :cond_3

    .line 488
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v5

    .line 489
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p4, :cond_2

    .line 490
    invoke-virtual {v2, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    return-object v5

    .line 493
    :cond_3
    const/4 v5, 0x0

    .line 494
    .restart local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :try_start_1
    iget v8, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    .line 495
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v8

    aput-object v8, v7, v4

    .line 496
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 500
    .end local v0    # "c":I
    .end local v2    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v3    # "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v7    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    throw v8

    .restart local v1    # "c":I
    :cond_4
    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0
.end method

.method readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->removeStale()V

    .line 363
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()I
    .locals 21

    .prologue
    .line 505
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 506
    .local v15, "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v14, v15

    .line 507
    .local v14, "oldCapacity":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-lt v14, v0, :cond_0

    .line 508
    const/16 v17, 0x0

    .line 568
    :goto_0
    return v17

    .line 524
    :cond_0
    shl-int/lit8 v19, v14, 0x1

    invoke-static/range {v19 .. v19}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v12

    .line 525
    .local v12, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->loadFactor:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->threshold:I

    .line 526
    array-length v0, v12

    move/from16 v19, v0

    add-int/lit8 v18, v19, -0x1

    .line 527
    .local v18, "sizeMask":I
    const/16 v17, 0x0

    .line 528
    .local v17, "reduce":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v14, :cond_6

    .line 531
    aget-object v3, v15, v4

    .line 533
    .local v3, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 534
    iget-object v13, v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 535
    .local v13, "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    iget v0, v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v5, v19, v18

    .line 538
    .local v5, "idx":I
    if-nez v13, :cond_2

    .line 539
    aput-object v3, v12, v5

    .line 528
    .end local v5    # "idx":I
    .end local v13    # "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 542
    .restart local v5    # "idx":I
    .restart local v13    # "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_2
    move-object v10, v3

    .line 543
    .local v10, "lastRun":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    move v9, v5

    .line 544
    .local v9, "lastIdx":I
    move-object v8, v13

    .local v8, "last":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_2
    if-eqz v8, :cond_4

    .line 545
    iget v0, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v6, v19, v18

    .line 546
    .local v6, "k":I
    if-eq v6, v9, :cond_3

    .line 547
    move v9, v6

    .line 548
    move-object v10, v8

    .line 544
    :cond_3
    iget-object v8, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_2

    .line 551
    .end local v6    # "k":I
    :cond_4
    aput-object v10, v12, v9

    .line 553
    move-object/from16 v16, v3

    .local v16, "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_3
    move-object/from16 v0, v16

    if-eq v0, v10, :cond_1

    .line 555
    invoke-virtual/range {v16 .. v16}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v7

    .line 556
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-nez v7, :cond_5

    .line 557
    add-int/lit8 v17, v17, 0x1

    .line 553
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-object/from16 v16, v0

    goto :goto_3

    .line 560
    :cond_5
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v6, v19, v18

    .line 561
    .restart local v6    # "k":I
    aget-object v11, v12, v6

    .line 562
    .local v11, "n":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v1, v11, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v19

    aput-object v19, v12, v6

    goto :goto_4

    .line 567
    .end local v3    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "idx":I
    .end local v6    # "k":I
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "last":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "lastIdx":I
    .end local v10    # "lastRun":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v11    # "n":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v13    # "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v16    # "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto/16 :goto_0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "refRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 577
    if-nez p4, :cond_0

    .line 578
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->removeStale()V

    .line 580
    :cond_0
    iget v10, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    add-int/lit8 v0, v10, -0x1

    .line 581
    .local v0, "c":I
    iget-object v8, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 582
    .local v8, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    and-int v3, p2, v10

    .line 583
    .local v3, "index":I
    aget-object v2, v8, v3

    .line 584
    .local v2, "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 586
    .local v1, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_2

    iget-object v10, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->keyRef:Ljava/lang/Object;

    if-eq p1, v10, :cond_2

    if-nez p4, :cond_1

    iget v10, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    if-ne p2, v10, :cond_1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 588
    :cond_1
    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_0

    .line 591
    :cond_2
    const/4 v5, 0x0

    .line 592
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_6

    .line 593
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v9

    .line 594
    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_3

    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 595
    :cond_3
    move-object v5, v9

    .line 598
    iget v10, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    .line 599
    iget-object v4, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 600
    .local v4, "newFirst":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object v6, v2

    .local v6, "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eq v6, v1, :cond_5

    .line 601
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v7

    .line 602
    .local v7, "pKey":Ljava/lang/Object;, "TK;"
    if-nez v7, :cond_4

    .line 603
    add-int/lit8 v0, v0, -0x1

    .line 600
    :goto_2
    iget-object v6, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_1

    .line 607
    :cond_4
    iget v10, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v7, v10, v4, v11}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v4

    goto :goto_2

    .line 610
    .end local v7    # "pKey":Ljava/lang/Object;, "TK;"
    :cond_5
    aput-object v4, v8, v3

    .line 611
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .end local v4    # "newFirst":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_6
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    return-object v5

    .end local v0    # "c":I
    .end local v1    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v3    # "index":I
    .end local v8    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    throw v10
.end method

.method final removeStale()V
    .locals 5

    .prologue
    .line 623
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WeakKeyReference;

    .local v0, "ref":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WeakKeyReference;
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WeakKeyReference;->keyRef()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WeakKeyReference;->keyHash()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->removeStale()V

    .line 450
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 451
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_0

    .line 455
    :cond_1
    const/4 v1, 0x0

    .line 456
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v1

    .line 458
    invoke-virtual {v0, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    return-object v1

    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->removeStale()V

    .line 430
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 431
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    goto :goto_0

    .line 435
    :cond_1
    const/4 v1, 0x0

    .line 436
    .local v1, "replaced":Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    const/4 v1, 0x1

    .line 438
    invoke-virtual {v0, p4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    return v1

    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "replaced":Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    throw v2
.end method

.method setTable([Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->threshold:I

    .line 335
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    .line 336
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 337
    return-void
.end method
