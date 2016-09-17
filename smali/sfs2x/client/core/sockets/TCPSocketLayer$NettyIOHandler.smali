.class Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "TCPSocketLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/core/sockets/TCPSocketLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NettyIOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;


# direct methods
.method private constructor <init>(Lsfs2x/client/core/sockets/TCPSocketLayer;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsfs2x/client/core/sockets/TCPSocketLayer;Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;-><init>(Lsfs2x/client/core/sockets/TCPSocketLayer;)V

    return-void
.end method


# virtual methods
.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;

    .prologue
    .line 322
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v0, v1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$0(Lsfs2x/client/core/sockets/TCPSocketLayer;Lorg/jboss/netty/channel/Channel;)V

    .line 323
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    # getter for: Lsfs2x/client/core/sockets/TCPSocketLayer;->fsm:Lsfs2x/fsm/FiniteStateMachine;
    invoke-static {v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$1(Lsfs2x/client/core/sockets/TCPSocketLayer;)Lsfs2x/fsm/FiniteStateMachine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 324
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->callOnConnect()V
    invoke-static {v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$2(Lsfs2x/client/core/sockets/TCPSocketLayer;)V

    .line 325
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;

    .prologue
    .line 330
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->releaseResources()V
    invoke-static {v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$3(Lsfs2x/client/core/sockets/TCPSocketLayer;)V

    .line 331
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->handleDisconnection()V
    invoke-static {v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$4(Lsfs2x/client/core/sockets/TCPSocketLayer;)V

    .line 332
    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;

    .prologue
    .line 367
    iget-object v0, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Socket error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->handleError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$6(Lsfs2x/client/core/sockets/TCPSocketLayer;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .prologue
    .line 339
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, "m":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    if-nez v3, :cond_0

    .line 343
    iget-object v3, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    # getter for: Lsfs2x/client/core/sockets/TCPSocketLayer;->log:Lorg/slf4j/Logger;
    invoke-static {v3}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$5(Lsfs2x/client/core/sockets/TCPSocketLayer;)Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Not BigEndianHeapChannelBuffer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 344
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 362
    .end local v2    # "m":Ljava/lang/Object;
    :goto_0
    return-void

    .line 348
    .restart local v2    # "m":Ljava/lang/Object;
    :cond_0
    check-cast v2, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    .end local v2    # "m":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array()[B

    move-result-object v0

    .line 349
    .local v0, "byteBuffer":[B
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 351
    iget-object v3, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    const-string/jumbo v4, "Connection closed by the remote side"

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->handleError(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$6(Lsfs2x/client/core/sockets/TCPSocketLayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v0    # "byteBuffer":[B
    :catch_0
    move-exception v1

    .line 360
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "General error reading data from socket: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->handleError(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$6(Lsfs2x/client/core/sockets/TCPSocketLayer;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "byteBuffer":[B
    :cond_1
    :try_start_1
    iget-object v3, p0, Lsfs2x/client/core/sockets/TCPSocketLayer$NettyIOHandler;->this$0:Lsfs2x/client/core/sockets/TCPSocketLayer;

    # invokes: Lsfs2x/client/core/sockets/TCPSocketLayer;->handleBinaryData([B)V
    invoke-static {v3, v0}, Lsfs2x/client/core/sockets/TCPSocketLayer;->access$7(Lsfs2x/client/core/sockets/TCPSocketLayer;[B)V

    .line 356
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
