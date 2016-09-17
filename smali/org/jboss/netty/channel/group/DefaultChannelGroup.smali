.class public Lorg/jboss/netty/channel/group/DefaultChannelGroup;
.super Ljava/util/AbstractSet;
.source "DefaultChannelGroup.java"

# interfaces
.implements Lorg/jboss/netty/channel/group/ChannelGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lorg/jboss/netty/channel/Channel;",
        ">;",
        "Lorg/jboss/netty/channel/group/ChannelGroup;"
    }
.end annotation


# static fields
.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final name:Ljava/lang/String;

.field private final nonServerChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final remover:Lorg/jboss/netty/channel/ChannelFutureListener;

.field private final serverChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "group-0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 49
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    .line 50
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    .line 51
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup$1;-><init>(Lorg/jboss/netty/channel/group/DefaultChannelGroup;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->name:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lorg/jboss/netty/channel/Channel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->add(Lorg/jboss/netty/channel/Channel;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/jboss/netty/channel/Channel;)Z
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 117
    instance-of v2, p1, Lorg/jboss/netty/channel/ServerChannel;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    .line 120
    .local v1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;>;"
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 121
    .local v0, "added":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 124
    :cond_0
    return v0

    .line 117
    .end local v0    # "added":Z
    .end local v1    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;>;"
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    .line 120
    .restart local v1    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 155
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 156
    return-void
.end method

.method public close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 5

    .prologue
    .line 182
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 185
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 186
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 189
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 192
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v3, p0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lorg/jboss/netty/channel/group/ChannelGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->compareTo(Lorg/jboss/netty/channel/group/ChannelGroup;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/channel/group/ChannelGroup;)I
    .locals 3
    .param p1, "o"    # Lorg/jboss/netty/channel/group/ChannelGroup;

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/channel/group/ChannelGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, "v":I
    if-eqz v0, :cond_0

    .line 299
    .end local v0    # "v":I
    :goto_0
    return v0

    .restart local v0    # "v":I
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 101
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 111
    :cond_1
    :goto_0
    return v1

    .line 103
    :cond_2
    instance-of v2, p1, Lorg/jboss/netty/channel/Channel;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 104
    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 105
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    instance-of v1, p1, Lorg/jboss/netty/channel/ServerChannel;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 5

    .prologue
    .line 196
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 199
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 200
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->disconnect()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 203
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->disconnect()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 206
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v3, p0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 290
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public find(Ljava/lang/Integer;)Lorg/jboss/netty/channel/Channel;
    .locals 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 91
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 92
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    if-eqz v0, :cond_0

    .line 95
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/Channel;

    move-object v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lorg/jboss/netty/channel/group/CombinedIterator;

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/group/CombinedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 132
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    if-nez v0, :cond_0

    .line 133
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 144
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 145
    const/4 v1, 0x0

    .line 149
    :goto_1
    return v1

    .line 135
    :cond_1
    instance-of v1, p1, Lorg/jboss/netty/channel/Channel;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 136
    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 137
    instance-of v1, v0, Lorg/jboss/netty/channel/ServerChannel;

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->remover:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->removeListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 149
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setInterestOps(I)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 5
    .param p1, "interestOps"    # I

    .prologue
    .line 210
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 213
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 214
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 217
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v3, p0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v3
.end method

.method public setReadable(Z)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 5
    .param p1, "readable"    # Z

    .prologue
    .line 224
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 227
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 228
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 231
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v3, p0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v3
.end method

.method public size()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v0, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/Channel;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 170
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/Channel;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 5

    .prologue
    .line 238
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 241
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->serverChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 242
    .local v0, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->unbind()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_0
    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    .line 245
    .restart local v0    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->unbind()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    .end local v0    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v3, p0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v3
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 252
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 254
    .local v2, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    instance-of v4, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 255
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 256
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/Channel;

    .line 257
    .local v1, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 260
    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "c":Lorg/jboss/netty/channel/Channel;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/Channel;

    .line 261
    .restart local v1    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 264
    .end local v1    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v4, p0, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v4
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 268
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 270
    .local v2, "futures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jboss/netty/channel/ChannelFuture;>;"
    instance-of v4, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 271
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 272
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/Channel;

    .line 273
    .local v1, "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v1, v5, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "c":Lorg/jboss/netty/channel/Channel;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/Channel;

    .line 277
    .restart local v1    # "c":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 280
    .end local v1    # "c":Lorg/jboss/netty/channel/Channel;
    :cond_1
    new-instance v4, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {v4, p0, v2}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;Ljava/util/Map;)V

    return-object v4
.end method
