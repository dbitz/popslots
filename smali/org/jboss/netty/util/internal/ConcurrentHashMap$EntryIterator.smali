.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;
.super Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Lorg/jboss/netty/util/internal/ReusableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 1307
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1307
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1310
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    invoke-super {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 1311
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    new-instance v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$WriteThroughEntry;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$EntryIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$WriteThroughEntry;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
