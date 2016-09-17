.class final Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;
.super Ljava/lang/Object;
.source "BBClient.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/bitswarm/bbox/BBClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BBChannelFutureListener"
.end annotation


# instance fields
.field private final request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

.field final synthetic this$0:Lsfs2x/client/bitswarm/bbox/BBClient;


# direct methods
.method public constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .locals 0
    .param p2, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .prologue
    .line 426
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p2, p0, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 428
    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$5(Lsfs2x/client/bitswarm/bbox/BBClient;Lorg/jboss/netty/channel/Channel;)V

    .line 434
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->channel:Lorg/jboss/netty/channel/Channel;
    invoke-static {v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$6(Lsfs2x/client/bitswarm/bbox/BBClient;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 435
    return-void
.end method
