.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$KeyIterator;
.super Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;
.source "ConcurrentIdentityHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap",
        "<TK;TV;>.HashIterator;",
        "Lorg/jboss/netty/util/internal/ReusableIterator",
        "<TK;>;",
        "Ljava/util/Enumeration",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    .prologue
    .line 1192
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$KeyIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$KeyIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1196
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$KeyIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.KeyIterator;"
    invoke-super {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$KeyIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.KeyIterator;"
    invoke-super {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
