.class public Lorg/jboss/netty/handler/execution/ExecutionHandler;
.super Ljava/lang/Object;
.source "ExecutionHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    .line 127
    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 152
    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 153
    .local v0, "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 157
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 158
    .local v1, "readSuspended":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 161
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 168
    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "readSuspended":Z
    :goto_1
    return-void

    .line 157
    .restart local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 167
    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public releaseExternalResources()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/ExecutionHandler;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 142
    return-void
.end method
