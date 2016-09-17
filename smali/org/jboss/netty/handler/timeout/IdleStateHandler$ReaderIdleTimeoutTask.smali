.class final Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReaderIdleTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 331
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 333
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 12
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 341
    .local v0, "currentTime":J
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v2, v7, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->lastReadTime:J

    .line 342
    .local v2, "lastReadTime":J
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v8, v7, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sub-long v10, v0, v2

    sub-long v4, v8, v10

    .line 343
    .local v4, "nextDelay":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gtz v7, :cond_2

    .line 345
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v8, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v8, v8, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v9, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v10, v9, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, p0, v10, v11, v9}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v8

    iput-object v8, v7, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 348
    :try_start_0
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v8, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    sget-object v9, Lorg/jboss/netty/handler/timeout/IdleState;->READER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    invoke-virtual {v7, v8, v9, v2, v3}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v6

    .line 350
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v7, v6}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v8, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v8, v8, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, p0, v4, v5, v9}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v8

    iput-object v8, v7, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    goto :goto_0
.end method
