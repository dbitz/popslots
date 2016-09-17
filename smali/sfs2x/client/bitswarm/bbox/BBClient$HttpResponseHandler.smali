.class Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "BBClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/bitswarm/bbox/BBClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpResponseHandler"
.end annotation


# instance fields
.field private readingChunks:Z

.field final synthetic this$0:Lsfs2x/client/bitswarm/bbox/BBClient;


# direct methods
.method private constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;)V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 622
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->bitswarm:Lsfs2x/client/bitswarm/BitSwarmClient;
    invoke-static {v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$7(Lsfs2x/client/bitswarm/bbox/BBClient;)Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->bitswarm:Lsfs2x/client/bitswarm/BitSwarmClient;
    invoke-static {v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$7(Lsfs2x/client/bitswarm/bbox/BBClient;)Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSfs()Lsfs2x/client/SmartFox;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpError(Ljava/lang/Throwable;Z)V
    invoke-static {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$8(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/Throwable;Z)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpError(Ljava/lang/Throwable;Z)V
    invoke-static {v0, v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$8(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 638
    iget-boolean v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->readingChunks:Z

    if-nez v4, :cond_2

    .line 639
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 641
    .local v2, "response":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->isChunked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 642
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->readingChunks:Z

    .line 658
    .end local v2    # "response":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 645
    .restart local v2    # "response":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :cond_1
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 646
    .local v1, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    sget-object v4, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "stringContent":Ljava/lang/String;
    iget-object v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # invokes: Lsfs2x/client/bitswarm/bbox/BBClient;->onHttpResponse(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$9(Lsfs2x/client/bitswarm/bbox/BBClient;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v1    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "response":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .end local v3    # "stringContent":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 653
    .local v0, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    const/4 v4, 0x0

    iput-boolean v4, p0, Lsfs2x/client/bitswarm/bbox/BBClient$HttpResponseHandler;->readingChunks:Z

    goto :goto_0
.end method
