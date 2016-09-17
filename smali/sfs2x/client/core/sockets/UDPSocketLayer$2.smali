.class Lsfs2x/client/core/sockets/UDPSocketLayer$2;
.super Ljava/lang/Object;
.source "UDPSocketLayer.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/core/sockets/UDPSocketLayer;->connect(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;


# direct methods
.method constructor <init>(Lsfs2x/client/core/sockets/UDPSocketLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$2;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jboss/netty/channel/ChannelHandler;

    const/4 v1, 0x0

    .line 100
    new-instance v2, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;

    iget-object v3, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$2;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;-><init>(Lsfs2x/client/core/sockets/UDPSocketLayer;Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->pipeline([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method
