.class public Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "ReadTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;
    }
.end annotation


# static fields
.field static final EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;


# instance fields
.field volatile lastReadTime:J

.field private volatile task:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

.field volatile timeout:Lorg/jboss/netty/util/Timeout;

.field final timeoutMillis:J

.field final timer:Lorg/jboss/netty/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;I)V
    .locals 3
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "timeoutSeconds"    # I

    .prologue
    .line 102
    int-to-long v0, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;-><init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "timer"    # Lorg/jboss/netty/util/Timer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p4, :cond_1

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    .line 125
    cmp-long v0, p2, v2

    if-gtz v0, :cond_2

    .line 126
    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_2
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    goto :goto_0
.end method

.method private destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    .line 205
    :cond_0
    iput-object v1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 206
    iput-object v1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->task:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

    .line 207
    return-void
.end method

.method private initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->updateLastReadTime()V

    .line 191
    new-instance v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->task:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

    .line 192
    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->task:Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    .line 195
    :cond_0
    return-void
.end method

.method private updateLastReadTime()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->lastReadTime:J

    .line 199
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
    .line 155
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
    .line 163
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
    .line 142
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 151
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
    .line 158
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->destroy()V

    .line 159
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
    .line 178
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->destroy()V

    .line 179
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 180
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
    .line 171
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 172
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 173
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->updateLastReadTime()V

    .line 186
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 187
    return-void
.end method

.method protected readTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public releaseExternalResources()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    .line 139
    return-void
.end method
