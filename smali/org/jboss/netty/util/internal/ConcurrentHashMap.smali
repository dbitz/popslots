.class public final Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$Values;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$KeySet;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$WriteThroughEntry;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$SimpleEntry;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$KeyIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;,
        Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 679
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    .line 680
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 670
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    .line 671
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 656
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    .line 657
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 603
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 604
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 605
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 608
    :cond_1
    const/high16 v5, 0x10000

    if-le p3, v5, :cond_2

    .line 609
    const/high16 p3, 0x10000

    .line 613
    :cond_2
    const/4 v3, 0x0

    .line 614
    .local v3, "sshift":I
    const/4 v4, 0x1

    .line 615
    .local v4, "ssize":I
    :goto_0
    if-ge v4, p3, :cond_3

    .line 616
    add-int/lit8 v3, v3, 0x1

    .line 617
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 619
    :cond_3
    rsub-int/lit8 v5, v3, 0x20

    iput v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentShift:I

    .line 620
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentMask:I

    .line 621
    invoke-static {v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 623
    const/high16 v5, 0x40000000    # 2.0f

    if-le p1, v5, :cond_4

    .line 624
    const/high16 p1, 0x40000000    # 2.0f

    .line 626
    :cond_4
    div-int v0, p1, v4

    .line 627
    .local v0, "c":I
    mul-int v5, v0, v4

    if-ge v5, p1, :cond_5

    .line 628
    add-int/lit8 v0, v0, 0x1

    .line 630
    :cond_5
    const/4 v1, 0x1

    .line 631
    .local v1, "cap":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 632
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 635
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 636
    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    new-instance v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    invoke-direct {v6, v1, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v2

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 638
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/16 v2, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 691
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    .line 694
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 695
    return-void
.end method

.method private static hash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 127
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 128
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 129
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 130
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 131
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 132
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private hashOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 146
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hash(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1015
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1016
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->clear()V

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 900
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 818
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 819
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 835
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 836
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 841
    :cond_0
    iget-object v6, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 842
    .local v6, "segments":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    array-length v7, v6

    new-array v4, v7, [I

    .line 845
    .local v4, "mc":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const/4 v7, 0x2

    if-ge v3, v7, :cond_7

    .line 846
    const/4 v5, 0x0

    .line 847
    .local v5, "mcsum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 848
    aget-object v7, v6, v2

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    aput v7, v4, v2

    add-int/2addr v5, v7

    .line 849
    aget-object v7, v6, v2

    invoke-virtual {v7, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 850
    const/4 v1, 0x1

    .line 883
    .end local v5    # "mcsum":I
    :cond_1
    :goto_2
    return v1

    .line 847
    .restart local v5    # "mcsum":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 853
    :cond_3
    const/4 v0, 0x1

    .line 854
    .local v0, "cleanSweep":Z
    if-eqz v5, :cond_4

    .line 855
    const/4 v2, 0x0

    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 856
    aget v7, v4, v2

    aget-object v8, v6, v2

    iget v8, v8, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    if-eq v7, v8, :cond_5

    .line 857
    const/4 v0, 0x0

    .line 862
    :cond_4
    if-eqz v0, :cond_6

    .line 863
    const/4 v1, 0x0

    goto :goto_2

    .line 855
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 845
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "cleanSweep":Z
    .end local v2    # "i":I
    .end local v5    # "mcsum":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v7, v6

    if-ge v2, v7, :cond_8

    .line 868
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 870
    :cond_8
    const/4 v1, 0x0

    .line 872
    .local v1, "found":Z
    const/4 v2, 0x0

    :goto_5
    :try_start_0
    array-length v7, v6

    if-ge v2, v7, :cond_9

    .line 873
    aget-object v7, v6, v2

    invoke-virtual {v7, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_a

    .line 874
    const/4 v1, 0x1

    .line 879
    :cond_9
    const/4 v2, 0x0

    :goto_6
    array-length v7, v6

    if-ge v2, v7, :cond_1

    .line 880
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 872
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 879
    :catchall_0
    move-exception v7

    const/4 v2, 0x0

    :goto_7
    array-length v8, v6

    if-ge v2, v8, :cond_b

    .line 880
    aget-object v8, v6, v2

    invoke-virtual {v8}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    throw v7
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$ValueIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1079
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 1080
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntrySet;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 804
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 704
    iget-object v3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 713
    .local v3, "segments":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    array-length v5, v3

    new-array v1, v5, [I

    .line 714
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 715
    .local v2, "mcsum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 716
    aget-object v5, v3, v0

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_1

    .line 732
    :cond_0
    :goto_1
    return v4

    .line 719
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_2
    if-eqz v2, :cond_3

    .line 726
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 727
    aget-object v5, v3, v0

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 732
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 1038
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$KeySet;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1090
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$KeyIterator;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$KeyIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 919
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 921
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 922
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 950
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 952
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 934
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 936
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 937
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 966
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 975
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 976
    .local v0, "hash":I
    if-nez p2, :cond_1

    .line 979
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1006
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 1007
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 988
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 989
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 991
    :cond_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 992
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 12

    .prologue
    .line 744
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    iget-object v6, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 745
    .local v6, "segments":[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    const-wide/16 v8, 0x0

    .line 746
    .local v8, "sum":J
    const-wide/16 v0, 0x0

    .line 747
    .local v0, "check":J
    array-length v7, v6

    new-array v4, v7, [I

    .line 750
    .local v4, "mc":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const/4 v7, 0x2

    if-ge v3, v7, :cond_2

    .line 751
    const-wide/16 v0, 0x0

    .line 752
    const-wide/16 v8, 0x0

    .line 753
    const/4 v5, 0x0

    .line 754
    .local v5, "mcsum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_0

    .line 755
    aget-object v7, v6, v2

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 756
    aget-object v7, v6, v2

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    aput v7, v4, v2

    add-int/2addr v5, v7

    .line 754
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    :cond_0
    if-eqz v5, :cond_1

    .line 759
    const/4 v2, 0x0

    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_1

    .line 760
    aget-object v7, v6, v2

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v7

    add-long/2addr v0, v10

    .line 761
    aget v7, v4, v2

    aget-object v10, v6, v2

    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->modCount:I

    if-eq v7, v10, :cond_3

    .line 762
    const-wide/16 v0, -0x1

    .line 767
    :cond_1
    cmp-long v7, v0, v8

    if-nez v7, :cond_4

    .line 771
    .end local v2    # "i":I
    .end local v5    # "mcsum":I
    :cond_2
    cmp-long v7, v0, v8

    if-eqz v7, :cond_7

    .line 772
    const-wide/16 v8, 0x0

    .line 773
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_5

    .line 774
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->lock()V

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 759
    .restart local v5    # "mcsum":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 750
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 776
    .end local v5    # "mcsum":I
    :cond_5
    const/4 v2, 0x0

    :goto_4
    array-length v7, v6

    if-ge v2, v7, :cond_6

    .line 777
    aget-object v7, v6, v2

    iget v7, v7, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 779
    :cond_6
    const/4 v2, 0x0

    :goto_5
    array-length v7, v6

    if-ge v2, v7, :cond_7

    .line 780
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->unlock()V

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 783
    .end local v2    # "i":I
    :cond_7
    const-wide/32 v10, 0x7fffffff

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 784
    const v7, 0x7fffffff

    .line 786
    :goto_6
    return v7

    :cond_8
    long-to-int v7, v8

    goto :goto_6
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->values:Ljava/util/Collection;

    .line 1059
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Values;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
