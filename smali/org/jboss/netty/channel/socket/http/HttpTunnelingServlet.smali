.class public Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "HttpTunnelingServlet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final serialVersionUID:J = 0x3b1e3dd3720a8e26L


# instance fields
.field private volatile channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private volatile remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->$assertionsDisabled:Z

    .line 67
    const-class v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 223
    return-void
.end method

.method private static read(Ljava/io/PushbackInputStream;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 6
    .param p0, "in"    # Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v3

    .line 195
    .local v3, "bytesToRead":I
    if-lez v3, :cond_0

    .line 196
    new-array v1, v3, [B

    .line 197
    .local v1, "buf":[B
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 211
    .local v4, "readBytes":I
    :goto_0
    sget-boolean v5, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-gtz v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 198
    .end local v1    # "buf":[B
    .end local v4    # "readBytes":I
    :cond_0
    if-nez v3, :cond_1

    .line 199
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 200
    .local v0, "b":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v5

    if-gez v5, :cond_2

    .line 220
    .end local v0    # "b":I
    :cond_1
    :goto_1
    return-object v2

    .line 203
    .restart local v0    # "b":I
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 204
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v3

    .line 205
    new-array v1, v3, [B

    .line 206
    .restart local v1    # "buf":[B
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 207
    .restart local v4    # "readBytes":I
    goto :goto_0

    .line 214
    .end local v0    # "b":I
    :cond_3
    array-length v5, v1

    if-ne v4, v5, :cond_4

    .line 215
    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .local v2, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1

    .line 218
    .end local v2    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_4
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .restart local v2    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1
.end method


# virtual methods
.method protected createChannelFactory(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFactory;
    .locals 3
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    instance-of v0, p1, Lorg/jboss/netty/channel/local/LocalAddress;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;

    invoke-direct {v0}, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;-><init>()V

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported remote address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->destroyChannelFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v2, "Failed to destroy a channel factory."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected destroyChannelFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    .line 133
    return-void
.end method

.method public init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 75
    .local v0, "config":Ljavax/servlet/ServletConfig;
    const-string/jumbo v3, "endpoint"

    invoke-interface {v0, v3}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "endpoint":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 77
    new-instance v3, Ljavax/servlet/ServletException;

    const-string/jumbo v4, "init-param \'endpoint\' must be specified."

    invoke-direct {v3, v4}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->parseEndpoint(Ljava/lang/String;)Ljava/net/SocketAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {p0, v3}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->createChannelFactory(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 101
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljavax/servlet/ServletException;
    throw v1

    .line 84
    .end local v1    # "e":Ljavax/servlet/ServletException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/servlet/ServletException;

    const-string/jumbo v4, "Failed to parse an endpoint."

    invoke-direct {v3, v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Ljavax/servlet/ServletException;
    throw v1

    .line 92
    .end local v1    # "e":Ljavax/servlet/ServletException;
    :catch_3
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/servlet/ServletException;

    const-string/jumbo v4, "Failed to create a channel factory."

    invoke-direct {v3, v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected parseEndpoint(Ljava/lang/String;)Ljava/net/SocketAddress;
    .locals 3
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const-string/jumbo v0, "local:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lorg/jboss/netty/channel/local/LocalAddress;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid or unknown endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 13
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "res"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const-string/jumbo v10, "POST"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 139
    sget-object v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unallowed method: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 140
    const/16 v10, 0x195

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 188
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v9

    .line 145
    .local v9, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v8

    .line 146
    .local v8, "out":Ljavax/servlet/ServletOutputStream;
    new-instance v5, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;

    invoke-direct {v5, v8}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;-><init>(Ljavax/servlet/ServletOutputStream;)V

    .line 147
    .local v5, "handler":Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;
    const-string/jumbo v10, "handler"

    invoke-interface {v9, v10, v5}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 149
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-interface {v10, v9}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    .line 150
    .local v2, "channel":Lorg/jboss/netty/channel/Channel;
    iget-object v10, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;

    invoke-interface {v2, v10}, Lorg/jboss/netty/channel/Channel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v10

    invoke-interface {v10}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    .line 151
    .local v4, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v10

    if-nez v10, :cond_1

    .line 152
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 153
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v10, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Endpoint unavailable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    const/16 v10, 0x1f7

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 158
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_1
    const/4 v7, 0x0

    .line 160
    .local v7, "lastWriteFuture":Lorg/jboss/netty/channel/ChannelFuture;
    const/16 v10, 0xc8

    :try_start_0
    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 161
    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/octet-stream"

    invoke-interface {p2, v10, v11}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v10, "Content-Transfer-Encoding"

    const-string/jumbo v11, "binary"

    invoke-interface {p2, v10, v11}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Ljavax/servlet/ServletOutputStream;->flush()V

    .line 167
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v6, "in":Ljava/io/PushbackInputStream;
    :goto_1
    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    .line 172
    :try_start_1
    invoke-static {v6}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->read(Ljava/io/PushbackInputStream;)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 176
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_3

    .line 182
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2
    :goto_2
    if-nez v7, :cond_4

    .line 183
    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/io/EOFException;
    goto :goto_2

    .line 179
    .end local v3    # "e":Ljava/io/EOFException;
    .restart local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_3
    :try_start_2
    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 180
    goto :goto_1

    .line 185
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_4
    sget-object v10, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v7, v10}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto/16 :goto_0

    .line 182
    .end local v6    # "in":Ljava/io/PushbackInputStream;
    :catchall_0
    move-exception v10

    if-nez v7, :cond_5

    .line 183
    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 185
    :goto_3
    throw v10

    :cond_5
    sget-object v11, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v7, v11}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_3
.end method
