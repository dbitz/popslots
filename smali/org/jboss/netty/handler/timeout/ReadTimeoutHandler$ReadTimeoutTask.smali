.class final Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;
.super Ljava/lang/Object;
.source "ReadTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 219
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 10
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, "currentTime":J
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-wide v6, v5, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-wide v8, v5, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->lastReadTime:J

    sub-long v8, v0, v8

    sub-long v2, v6, v8

    .line 232
    .local v2, "nextDelay":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_2

    .line 234
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v6, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v6, v6, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v7, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-wide v8, v7, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, p0, v8, v9, v7}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v6

    iput-object v6, v5, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 237
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v6, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v5, v6}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->readTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v4

    .line 239
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v5, v4}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v6, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;

    iget-object v6, v6, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, p0, v2, v3, v7}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v6

    iput-object v6, v5, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    goto :goto_0
.end method
