.class final Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 0

    .prologue
    .line 1429
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1452
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->clear()V

    .line 1453
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1447
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1442
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1432
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.Values;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$ValueIterator;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$ValueIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1437
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Values;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->size()I

    move-result v0

    return v0
.end method
