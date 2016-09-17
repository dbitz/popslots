.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
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
.field private static final serialVersionUID:J = -0x1bc7a7ae5c5faaabL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field modCount:I

.field volatile transient table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
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
    .line 270
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 271
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->loadFactor:F

    .line 272
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->setTable([Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)V

    .line 273
    return-void
.end method

.method private keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "dest"    # Ljava/lang/Object;

    .prologue
    .line 281
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static final newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .locals 1
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 567
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 570
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 571
    .local v1, "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 572
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    .line 575
    const/4 v2, 0x0

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    .line 580
    .end local v0    # "i":I
    .end local v1    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    return-void

    .line 577
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 342
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 344
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 345
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 351
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    return v1

    .line 348
    .restart local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 351
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 355
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v6, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v6, :cond_3

    .line 356
    iget-object v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 357
    .local v4, "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v2, v4

    .line 358
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 359
    aget-object v0, v4, v1

    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v3

    .line 363
    .local v3, "opaque":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    .line 364
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v5

    .line 369
    .local v5, "v":Ljava/lang/Object;, "TV;"
    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    const/4 v6, 0x1

    .line 375
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "opaque":Ljava/lang/Object;, "TV;"
    .end local v4    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :goto_3
    return v6

    .line 366
    .restart local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "opaque":Ljava/lang/Object;, "TV;"
    .restart local v4    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_0
    move-object v5, v3

    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 359
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 358
    .end local v3    # "opaque":Ljava/lang/Object;, "TV;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
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
    .line 324
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 326
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 327
    iget v2, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, "opaque":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 338
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "opaque":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v1

    .line 333
    .restart local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "opaque":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 335
    .end local v1    # "opaque":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 338
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 298
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 1
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

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
    .line 417
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 419
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    .line 420
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    iget v8, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v8, :cond_4

    .line 421
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->rehash()I

    move-result v6

    .line 422
    .local v6, "reduced":I
    if-lez v6, :cond_4

    .line 423
    sub-int v0, v1, v6

    .end local v1    # "c":I
    .restart local v0    # "c":I
    add-int/lit8 v8, v0, -0x1

    iput v8, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    .line 427
    .end local v6    # "reduced":I
    :goto_0
    iget-object v7, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 428
    .local v7, "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    and-int v4, p2, v8

    .line 429
    .local v4, "index":I
    aget-object v3, v7, v4

    .line 430
    .local v3, "first":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v2, v3

    .line 431
    .local v2, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_1

    iget v8, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v8, p2, :cond_0

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 432
    :cond_0
    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 436
    :cond_1
    if-eqz v2, :cond_3

    .line 437
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v5

    .line 438
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p4, :cond_2

    .line 439
    invoke-virtual {v2, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v5

    .line 442
    :cond_3
    const/4 v5, 0x0

    .line 443
    .restart local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :try_start_1
    iget v8, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    .line 444
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v8

    aput-object v8, v7, v4

    .line 445
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 449
    .end local v0    # "c":I
    .end local v2    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3    # "first":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v7    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v8

    .restart local v1    # "c":I
    :cond_4
    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0
.end method

.method readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 315
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()I
    .locals 21

    .prologue
    .line 454
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 455
    .local v15, "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v14, v15

    .line 456
    .local v14, "oldCapacity":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-lt v14, v0, :cond_0

    .line 457
    const/16 v17, 0x0

    .line 517
    :goto_0
    return v17

    .line 473
    :cond_0
    shl-int/lit8 v19, v14, 0x1

    invoke-static/range {v19 .. v19}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v12

    .line 474
    .local v12, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->loadFactor:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->threshold:I

    .line 475
    array-length v0, v12

    move/from16 v19, v0

    add-int/lit8 v18, v19, -0x1

    .line 476
    .local v18, "sizeMask":I
    const/16 v17, 0x0

    .line 477
    .local v17, "reduce":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v14, :cond_6

    .line 480
    aget-object v3, v15, v4

    .line 482
    .local v3, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 483
    iget-object v13, v3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 484
    .local v13, "next":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget v0, v3, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v5, v19, v18

    .line 487
    .local v5, "idx":I
    if-nez v13, :cond_2

    .line 488
    aput-object v3, v12, v5

    .line 477
    .end local v5    # "idx":I
    .end local v13    # "next":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 491
    .restart local v5    # "idx":I
    .restart local v13    # "next":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    move-object v10, v3

    .line 492
    .local v10, "lastRun":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move v9, v5

    .line 493
    .local v9, "lastIdx":I
    move-object v8, v13

    .local v8, "last":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_2
    if-eqz v8, :cond_4

    .line 494
    iget v0, v8, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v6, v19, v18

    .line 495
    .local v6, "k":I
    if-eq v6, v9, :cond_3

    .line 496
    move v9, v6

    .line 497
    move-object v10, v8

    .line 493
    :cond_3
    iget-object v8, v8, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_2

    .line 500
    .end local v6    # "k":I
    :cond_4
    aput-object v10, v12, v9

    .line 502
    move-object/from16 v16, v3

    .local v16, "p":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_3
    move-object/from16 v0, v16

    if-eq v0, v10, :cond_1

    .line 504
    invoke-virtual/range {v16 .. v16}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v7

    .line 505
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-nez v7, :cond_5

    .line 506
    add-int/lit8 v17, v17, 0x1

    .line 502
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-object/from16 v16, v0

    goto :goto_3

    .line 509
    :cond_5
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v6, v19, v18

    .line 510
    .restart local v6    # "k":I
    aget-object v11, v12, v6

    .line 511
    .local v11, "n":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v1, v11, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v19

    aput-object v19, v12, v6

    goto :goto_4

    .line 516
    .end local v3    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "idx":I
    .end local v6    # "k":I
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "last":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "lastIdx":I
    .end local v10    # "lastRun":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v11    # "n":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v13    # "next":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v16    # "p":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

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
    .line 524
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 526
    :try_start_0
    iget v10, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v0, v10, -0x1

    .line 527
    .local v0, "c":I
    iget-object v8, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 528
    .local v8, "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    and-int v3, p2, v10

    .line 529
    .local v3, "index":I
    aget-object v2, v8, v3

    .line 530
    .local v2, "first":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 532
    .local v1, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    iget-object v10, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    if-eq p1, v10, :cond_1

    if-nez p4, :cond_0

    iget v10, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne p2, v10, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 534
    :cond_0
    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 537
    :cond_1
    const/4 v5, 0x0

    .line 538
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_5

    .line 539
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v9

    .line 540
    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_2

    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 541
    :cond_2
    move-object v5, v9

    .line 544
    iget v10, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    .line 545
    iget-object v4, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 546
    .local v4, "newFirst":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v6, v2

    .local v6, "p":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eq v6, v1, :cond_4

    .line 547
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v7

    .line 548
    .local v7, "pKey":Ljava/lang/Object;, "TK;"
    if-nez v7, :cond_3

    .line 549
    add-int/lit8 v0, v0, -0x1

    .line 546
    :goto_2
    iget-object v6, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 553
    :cond_3
    iget v10, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v7, v10, v4, v11}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v4

    goto :goto_2

    .line 556
    .end local v7    # "pKey":Ljava/lang/Object;, "TK;"
    :cond_4
    aput-object v4, v8, v3

    .line 557
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .end local v4    # "newFirst":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v5

    .end local v0    # "c":I
    .end local v1    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "first":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3    # "index":I
    .end local v8    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v10
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
    .line 398
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 400
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 401
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v1

    .line 408
    invoke-virtual {v0, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return-object v1

    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

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
    .line 379
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 381
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 382
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 386
    :cond_1
    const/4 v1, 0x0

    .line 387
    .local v1, "replaced":Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    const/4 v1, 0x1

    .line 389
    invoke-virtual {v0, p4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    return v1

    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "replaced":Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method setTable([Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->threshold:I

    .line 290
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 291
    return-void
.end method
