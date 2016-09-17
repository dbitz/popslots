.class Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "UDPSocketLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/core/sockets/UDPSocketLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UDPClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;


# direct methods
.method private constructor <init>(Lsfs2x/client/core/sockets/UDPSocketLayer;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsfs2x/client/core/sockets/UDPSocketLayer;Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;-><init>(Lsfs2x/client/core/sockets/UDPSocketLayer;)V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;

    .prologue
    .line 179
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    # getter for: Lsfs2x/client/core/sockets/UDPSocketLayer;->channel:Lorg/jboss/netty/channel/socket/DatagramChannel;
    invoke-static {v0}, Lsfs2x/client/core/sockets/UDPSocketLayer;->access$2(Lsfs2x/client/core/sockets/UDPSocketLayer;)Lorg/jboss/netty/channel/socket/DatagramChannel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/DatagramChannel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 180
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

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

    # invokes: Lsfs2x/client/core/sockets/UDPSocketLayer;->handleError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->access$1(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .prologue
    .line 167
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    .line 168
    .local v0, "buffer":Lorg/jboss/netty/buffer/TruncatedChannelBuffer;
    invoke-virtual {v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->array()[B

    move-result-object v2

    .line 169
    .local v2, "msg":[B
    iget-object v3, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    # invokes: Lsfs2x/client/core/sockets/UDPSocketLayer;->handleBinaryData([B)V
    invoke-static {v3, v2}, Lsfs2x/client/core/sockets/UDPSocketLayer;->access$0(Lsfs2x/client/core/sockets/UDPSocketLayer;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/TruncatedChannelBuffer;
    .end local v2    # "msg":[B
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$UDPClientHandler;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "General error reading data from socket: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lsfs2x/client/core/sockets/UDPSocketLayer;->handleError(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lsfs2x/client/core/sockets/UDPSocketLayer;->access$1(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V

    goto :goto_0
.end method
