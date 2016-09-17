.class public Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "IdleStateHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;
    }
.end annotation


# instance fields
.field final allIdleTimeMillis:J

.field volatile allIdleTimeout:Lorg/jboss/netty/util/Timeout;

.field volatile lastReadTime:J

.field volatile lastWriteTime:J

.field final readerIdleTimeMillis:J

.field volatile readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

.field final timer:Lorg/jboss/netty/util/Timer;

.field final writerIdleTimeMillis:J

.field volatile writerIdleTimeout:Lorg/jboss/netty/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/util/Timer;III)V
    .locals 9
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "readerIdleTimeSeconds"    # I
    .param p3, "writerIdleTimeSeconds"    # I
    .param p4, "allIdleTimeSeconds"    # I

    .prologue
    .line 165
    int-to-long v2, p2

    int-to-long v4, p3

    int-to-long v6, p4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;-><init>(Lorg/jboss/netty/util/Timer;JJJLjava/util/concurrent/TimeUnit;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "readerIdleTime"    # J
    .param p4, "writerIdleTime"    # J
    .param p6, "allIdleTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 195
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    if-nez p8, :cond_1

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    .line 205
    cmp-long v0, p2, v2

    if-gtz v0, :cond_2

    .line 206
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    .line 210
    :goto_0
    cmp-long v0, p4, v2

    if-gtz v0, :cond_3

    .line 211
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    .line 215
    :goto_1
    cmp-long v0, p6, v2

    if-gtz v0, :cond_4

    .line 216
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    .line 220
    :goto_2
    return-void

    .line 208
    :cond_2
    invoke-virtual {p8, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p8, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    goto :goto_1

    .line 218
    :cond_4
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    goto :goto_2
.end method

.method private destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 310
    iput-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 314
    iput-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 316
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 318
    iput-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 320
    :cond_2
    return-void
.end method

.method private initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    const-wide/16 v6, 0x0

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->lastWriteTime:J

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->lastReadTime:J

    .line 290
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 295
    :cond_0
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 300
    :cond_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 301
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    .line 305
    :cond_2
    return-void
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 241
    :cond_0
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->destroy()V

    .line 249
    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->destroy()V

    .line 269
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 270
    return-void
.end method

.method protected channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "state"    # Lorg/jboss/netty/handler/timeout/IdleState;
    .param p3, "lastActivityTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lorg/jboss/netty/handler/timeout/DefaultIdleStateEvent;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/jboss/netty/handler/timeout/DefaultIdleStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/timeout/IdleState;J)V

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 325
    return-void
.end method

.method public channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 262
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 263
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->lastReadTime:J

    .line 276
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 277
    return-void
.end method

.method public releaseExternalResources()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    .line 229
    return-void
.end method

.method public writeComplete(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/WriteCompletionEvent;)V
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/WriteCompletionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 282
    invoke-interface {p2}, Lorg/jboss/netty/channel/WriteCompletionEvent;->getWrittenAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->lastWriteTime:J

    .line 285
    :cond_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 286
    return-void
.end method
