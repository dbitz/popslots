.class public Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;
.super Ljava/lang/Object;
.source "DefaultLocalClientChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalClientChannelFactory;


# instance fields
.field private final sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalChannel;
    .locals 6
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;-><init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
