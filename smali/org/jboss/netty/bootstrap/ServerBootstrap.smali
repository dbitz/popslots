.class public Lorg/jboss/netty/bootstrap/ServerBootstrap;
.super Lorg/jboss/netty/bootstrap/Bootstrap;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;
    }
.end annotation


# instance fields
.field private volatile parentHandler:Lorg/jboss/netty/channel/ChannelHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>()V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 0
    .param p1, "channelFactory"    # Lorg/jboss/netty/channel/ChannelFactory;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 181
    return-void
.end method


# virtual methods
.method public bind()Lorg/jboss/netty/channel/Channel;
    .locals 3

    .prologue
    .line 249
    const-string/jumbo v1, "localAddress"

    invoke-virtual {p0, v1}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 250
    .local v0, "localAddress":Ljava/net/SocketAddress;
    if-nez v0, :cond_0

    .line 251
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "localAddress option is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    return-object v1
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;
    .locals 13
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v10, Ljava/lang/NullPointerException;

    const-string/jumbo v11, "localAddress"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 270
    :cond_0
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 273
    .local v7, "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/jboss/netty/channel/ChannelFuture;>;"
    new-instance v2, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;

    invoke-direct {v2, p0, p1, v7}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;-><init>(Lorg/jboss/netty/bootstrap/ServerBootstrap;Ljava/net/SocketAddress;Ljava/util/concurrent/BlockingQueue;)V

    .line 274
    .local v2, "binder":Lorg/jboss/netty/channel/ChannelHandler;
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getParentHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v9

    .line 276
    .local v9, "parentHandler":Lorg/jboss/netty/channel/ChannelHandler;
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 277
    .local v3, "bossPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const-string/jumbo v10, "binder"

    invoke-interface {v3, v10, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 278
    if-eqz v9, :cond_1

    .line 279
    const-string/jumbo v10, "userHandler"

    invoke-interface {v3, v10, v9}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v10

    invoke-interface {v10, v3}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    .line 285
    .local v4, "channel":Lorg/jboss/netty/channel/Channel;
    const/4 v6, 0x0

    .line 286
    .local v6, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const/4 v8, 0x0

    .line 289
    .local v8, "interrupted":Z
    :cond_2
    const-wide/32 v10, 0x7fffffff

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v10, v11, v12}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/jboss/netty/channel/ChannelFuture;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    if-eqz v6, :cond_2

    .line 295
    if-eqz v8, :cond_3

    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 300
    :cond_3
    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 301
    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v10

    if-nez v10, :cond_4

    .line 302
    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v10

    invoke-interface {v10}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v10

    invoke-interface {v10}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 303
    new-instance v10, Lorg/jboss/netty/channel/ChannelException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to bind to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 290
    :catch_0
    move-exception v5

    .line 291
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    goto :goto_0

    .line 306
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_4
    return-object v4
.end method

.method public getParentHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap;->parentHandler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 3
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/channel/ServerChannelFactory;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "factory must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ServerChannelFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    invoke-super {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;->setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 202
    return-void
.end method

.method public setParentHandler(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 0
    .param p1, "parentHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap;->parentHandler:Lorg/jboss/netty/channel/ChannelHandler;

    .line 225
    return-void
.end method
