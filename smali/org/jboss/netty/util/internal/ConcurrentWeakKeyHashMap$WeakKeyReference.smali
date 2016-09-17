.class final Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;
.super Ljava/lang/ref/WeakReference;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final hash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 167
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;->hash:I

    .line 168
    return-void
.end method


# virtual methods
.method public final keyHash()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference<TK;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;->hash:I

    return v0
.end method

.method public final keyRef()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 175
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference<TK;>;"
    return-object p0
.end method
