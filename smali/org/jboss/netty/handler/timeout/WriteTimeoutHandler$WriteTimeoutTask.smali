.class final Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
.super Ljava/lang/Object;
.source "WriteTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p3, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 171
    iput-object p3, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 172
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 3
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v2, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    iget-object v2, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->writeTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
