.class Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;
.super Ljava/lang/Object;
.source "BBClient.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/bitswarm/bbox/BBClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpClientPipelineFactory"
.end annotation


# instance fields
.field private final ssl:Z

.field final synthetic this$0:Lsfs2x/client/bitswarm/bbox/BBClient;


# direct methods
.method public constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;Z)V
    .locals 0
    .param p2, "ssl"    # Z

    .prologue
    .line 585
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-boolean p2, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;->ssl:Z

    .line 587
    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    .line 604
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const-string/jumbo v1, "codec"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 607
    const-string/jumbo v1, "inflater"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpContentDecompressor;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/HttpContentDecompressor;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 610
    const-string/jumbo v1, "aggregator"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    const/high16 v3, 0x100000

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 612
    const-string/jumbo v1, "handler"

    new-instance v2, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;

    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpClientPipelineFactory;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 613
    return-object v0
.end method
