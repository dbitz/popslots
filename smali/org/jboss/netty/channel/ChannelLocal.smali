.class public Lorg/jboss/netty/channel/ChannelLocal;
.super Ljava/lang/Object;
.source "ChannelLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    return-void
.end method


# virtual methods
.method public get(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    if-nez p1, :cond_0

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "channel"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->initialValue(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/channel/ChannelLocal;->setIfAbsent(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 72
    move-object v1, v0

    .line 76
    .end local v0    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v1
.end method

.method protected initialValue(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;
    .locals 1
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->remove(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setIfAbsent(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/Channel;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/jboss/netty/channel/ChannelLocal;, "Lorg/jboss/netty/channel/ChannelLocal<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/ChannelLocal;->get(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
