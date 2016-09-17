.class public Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "HttpChunkAggregator.java"


# instance fields
.field private currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

.field private final maxContentLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxContentLength"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 68
    if-gtz p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxContentLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    .line 74
    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 13
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 80
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v7

    .line 81
    .local v7, "msg":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 83
    .local v2, "currentMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    instance-of v9, v7, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v9, :cond_3

    move-object v6, v7

    .line 84
    check-cast v6, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 85
    .local v6, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 88
    const-string/jumbo v9, "Transfer-Encoding"

    invoke-interface {v6, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "chunked"

    invoke-interface {v3, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    const-string/jumbo v9, "Transfer-Encoding"

    invoke-interface {v6, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 93
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 94
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v9

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 95
    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 143
    .end local v3    # "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v6    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_2
    iput-object v12, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 99
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 101
    .end local v6    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_3
    instance-of v9, v7, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v9, :cond_7

    .line 103
    if-nez v2, :cond_4

    .line 104
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "received "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " without "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    move-object v0, v7

    .line 110
    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 111
    .local v0, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 113
    .local v1, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v9

    iget v10, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v11

    invoke-interface {v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_5

    .line 114
    new-instance v9, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP content length exceeded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " bytes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 119
    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 120
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 121
    iput-object v12, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 124
    instance-of v9, v0, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v9, :cond_6

    move-object v8, v0

    .line 125
    check-cast v8, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    .line 126
    .local v8, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    invoke-interface {v8}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 127
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :cond_6
    const-string/jumbo v9, "Content-Length"

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-static {p1, v2, v9}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v1    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0
.end method
