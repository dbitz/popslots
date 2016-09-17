.class final Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/bootstrap/ServerBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Binder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final childOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final futureQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final localAddress:Ljava/net/SocketAddress;

.field final synthetic this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const-class v0, Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/bootstrap/ServerBootstrap;Ljava/net/SocketAddress;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p3, "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/jboss/netty/channel/ChannelFuture;>;"
    iput-object p1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->childOptions:Ljava/util/Map;

    .line 317
    iput-object p2, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->localAddress:Ljava/net/SocketAddress;

    .line 318
    iput-object p3, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->futureQueue:Ljava/util/concurrent/BlockingQueue;

    .line 319
    return-void
.end method


# virtual methods
.method public channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelStateEvent;

    .prologue
    .line 327
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v6}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jboss/netty/channel/ChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 330
    iget-object v5, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v5}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v0

    .line 331
    .local v0, "allOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v4, "parentOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 333
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "child."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    iget-object v6, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->childOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 345
    .end local v0    # "allOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "parentOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v5

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v5

    .line 337
    .restart local v0    # "allOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "parentOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "pipelineFactory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 343
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 348
    iget-object v5, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->futureQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    iget-object v7, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->localAddress:Ljava/net/SocketAddress;

    invoke-interface {v6, v7}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 349
    .local v2, "finished":Z
    sget-boolean v5, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 350
    :cond_3
    return-void
.end method

.method public childChannelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChildChannelStateEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChildChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChildChannelStateEvent;->getChildChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->childOptions:Ljava/util/Map;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V

    .line 358
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 359
    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->futureQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 366
    .local v0, "finished":Z
    sget-boolean v1, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 367
    :cond_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 368
    return-void
.end method
