.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;
.super Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;
.source "ConcurrentIdentityWeakKeyHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap",
        "<TK;TV;>.HashIterator;",
        "Lorg/jboss/netty/util/internal/ReusableIterator",
        "<TV;>;",
        "Ljava/util/Enumeration",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 0

    .prologue
    .line 1284
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>.ValueIterator;"
    invoke-super {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>.ValueIterator;"
    invoke-super {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
