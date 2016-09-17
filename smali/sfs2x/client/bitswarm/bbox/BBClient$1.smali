.class Lsfs2x/client/bitswarm/bbox/BBClient$1;
.super Ljava/lang/Object;
.source "BBClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/bitswarm/bbox/BBClient;->sendRequest(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

.field private final synthetic val$cmd:Ljava/lang/String;

.field private final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    iput-object p2, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->val$cmd:Ljava/lang/String;

    iput-object p3, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->val$data:Ljava/lang/Object;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 412
    iget-object v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->val$cmd:Ljava/lang/String;

    iget-object v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->val$data:Ljava/lang/Object;

    # invokes: Lsfs2x/client/bitswarm/bbox/BBClient;->createRequest(Ljava/lang/String;Ljava/lang/Object;)Lorg/jboss/netty/handler/codec/http/HttpRequest;
    invoke-static {v2, v3, v4}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$10(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/String;Ljava/lang/Object;)Lorg/jboss/netty/handler/codec/http/HttpRequest;

    move-result-object v1

    .line 414
    .local v1, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    iget-object v2, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->bootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;
    invoke-static {v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$11(Lsfs2x/client/bitswarm/bbox/BBClient;)Lorg/jboss/netty/bootstrap/ClientBootstrap;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->host:Ljava/lang/String;
    invoke-static {v4}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$12(Lsfs2x/client/bitswarm/bbox/BBClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->port:I
    invoke-static {v5}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$13(Lsfs2x/client/bitswarm/bbox/BBClient;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 415
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v2, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;

    iget-object v3, p0, Lsfs2x/client/bitswarm/bbox/BBClient$1;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-direct {v2, v3, v1}, Lsfs2x/client/bitswarm/bbox/BBClient$BBChannelFutureListener;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 416
    return-void
.end method
