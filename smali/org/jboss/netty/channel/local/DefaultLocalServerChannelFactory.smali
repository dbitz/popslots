.class public Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;
.super Ljava/lang/Object;
.source "DefaultLocalServerChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalServerChannelFactory;


# instance fields
.field private final sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/jboss/netty/channel/local/LocalServerChannelSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalServerChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ServerChannel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalServerChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalServerChannel;
    .locals 2
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 43
    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
