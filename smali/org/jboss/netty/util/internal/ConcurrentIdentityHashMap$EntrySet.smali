.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    .prologue
    .line 1378
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1415
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->clear()V

    .line 1416
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 1386
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 1389
    check-cast v0, Ljava/util/Map$Entry;

    .line 1390
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1391
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1410
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1381
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntryIterator;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntryIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1396
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1397
    const/4 v1, 0x0

    .line 1400
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1399
    check-cast v0, Ljava/util/Map$Entry;

    .line 1400
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1405
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$EntrySet;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->size()I

    move-result v0

    return v0
.end method
