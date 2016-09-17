.class public abstract Lorg/jboss/netty/channel/AbstractChannelSink;
.super Ljava/lang/Object;
.source "AbstractChannelSink.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    .locals 2
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "event"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p3, "cause"    # Lorg/jboss/netty/channel/ChannelPipelineException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p3}, Lorg/jboss/netty/channel/ChannelPipelineException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 48
    .local v0, "actualCause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 49
    move-object v0, p3

    .line 52
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
