.class public Lsfs2x/client/core/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/core/IEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private log:Lorg/slf4j/Logger;

.field private target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/core/EventDispatcher;->listeners:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lsfs2x/client/core/EventDispatcher;->target:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/core/EventDispatcher;->log:Lorg/slf4j/Logger;

    .line 20
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 26
    iget-object v1, p0, Lsfs2x/client/core/EventDispatcher;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 27
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/core/IEventListener;>;"
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/core/IEventListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/core/IEventListener;>;"
    iget-object v1, p0, Lsfs2x/client/core/EventDispatcher;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    return-void
.end method

.method public dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
    .locals 6
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 47
    iget-object v3, p0, Lsfs2x/client/core/EventDispatcher;->listeners:Ljava/util/Map;

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 48
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/core/IEventListener;>;"
    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v3, p0, Lsfs2x/client/core/EventDispatcher;->target:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lsfs2x/client/core/BaseEvent;->setTarget(Ljava/lang/Object;)V

    .line 53
    iget-object v3, p0, Lsfs2x/client/core/EventDispatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lsfs2x/client/core/EventDispatcher;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Dispatching event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " listeners"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 58
    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsfs2x/client/core/IEventListener;

    .line 60
    .local v2, "listener":Lsfs2x/client/core/IEventListener;
    invoke-interface {v2, p1}, Lsfs2x/client/core/IEventListener;->dispatch(Lsfs2x/client/core/BaseEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v2    # "listener":Lsfs2x/client/core/IEventListener;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lsfs2x/client/core/EventDispatcher;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error dispatching event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lsfs2x/client/core/EventDispatcher;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "listener"    # Lsfs2x/client/core/IEventListener;

    .prologue
    .line 38
    iget-object v1, p0, Lsfs2x/client/core/EventDispatcher;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/core/IEventListener;>;"
    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
