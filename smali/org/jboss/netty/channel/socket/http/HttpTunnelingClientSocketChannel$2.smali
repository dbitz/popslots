.class Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;
.super Ljava/lang/Object;
.source "HttpTunnelingClientSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->connectReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

.field final synthetic val$future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic val$remoteAddress:Ljava/net/SocketAddress;

.field final synthetic val$virtualChannel:Lorg/jboss/netty/channel/socket/SocketChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/socket/SocketChannel;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$remoteAddress:Ljava/net/SocketAddress;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p4, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$virtualChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 13
    .param p1, "f"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    const/4 v12, 0x1

    .line 154
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v10}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getServerName()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "serverName":Ljava/lang/String;
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$remoteAddress:Ljava/net/SocketAddress;

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 156
    .local v6, "serverPort":I
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v10}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getServerPath()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "serverPath":Ljava/lang/String;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 160
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v10}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 161
    .local v7, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v9, 0x0

    .line 162
    .local v9, "sslHandshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    if-eqz v7, :cond_2

    .line 165
    if-eqz v4, :cond_4

    .line 166
    invoke-virtual {v7, v4, v6}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 172
    .local v2, "engine":Ljavax/net/ssl/SSLEngine;
    :goto_0
    invoke-virtual {v2, v12}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 173
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v10}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->isEnableSslSessionCreation()Z

    move-result v10

    invoke-virtual {v2, v10}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    .line 174
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v10}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getEnabledSslCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "enabledCipherSuites":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v10}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getEnabledSslProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "enabledProtocols":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 183
    :cond_1
    new-instance v8, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-direct {v8, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;)V

    .line 184
    .local v8, "sslHandler":Lorg/jboss/netty/handler/ssl/SslHandler;
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/SocketChannel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v10

    const-string/jumbo v11, "ssl"

    invoke-interface {v10, v11, v8}, Lorg/jboss/netty/channel/ChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 185
    invoke-virtual {v8}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v9

    .line 189
    .end local v0    # "enabledCipherSuites":[Ljava/lang/String;
    .end local v1    # "enabledProtocols":[Ljava/lang/String;
    .end local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    .end local v8    # "sslHandler":Lorg/jboss/netty/handler/ssl/SslHandler;
    :cond_2
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v10, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v11, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-direct {v3, v10, v11, v5}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 191
    .local v3, "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    if-eqz v4, :cond_3

    .line 192
    const-string/jumbo v10, "Host"

    invoke-interface {v3, v10, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_3
    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/octet-stream"

    invoke-interface {v3, v10, v11}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string/jumbo v10, "Transfer-Encoding"

    const-string/jumbo v11, "chunked"

    invoke-interface {v3, v10, v11}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string/jumbo v10, "Content-Transfer-Encoding"

    const-string/jumbo v11, "binary"

    invoke-interface {v3, v10, v11}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string/jumbo v10, "User-Agent"

    const-class v11, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    if-nez v9, :cond_5

    .line 200
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v10, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v10, v3}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 201
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iput-boolean v12, v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->requestHeaderWritten:Z

    .line 202
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v10}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 203
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$virtualChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    iget-object v11, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$remoteAddress:Ljava/net/SocketAddress;

    invoke-static {v10, v11}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 223
    .end local v3    # "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .end local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "sslHandshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_1
    return-void

    .line 168
    .restart local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "sslHandshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_4
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .restart local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    goto/16 :goto_0

    .line 205
    .end local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    .restart local v3    # "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    :cond_5
    new-instance v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;

    invoke-direct {v10, p0, v3}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    invoke-interface {v9, v10}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_1

    .line 220
    .end local v3    # "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .end local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "sslHandshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_6
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 221
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$virtualChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
