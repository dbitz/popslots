.class public abstract Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "HttpContentDecoder.java"


# instance fields
.field private decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 58
    return-void
.end method

.method private decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->offer(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private finishDecode()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->finish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 170
    .local v0, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    .line 171
    return-object v0

    .line 168
    .end local v0    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .restart local v0    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_0
.end method


# virtual methods
.method protected getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "identity"

    return-object v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 11
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v6

    .line 63
    .local v6, "msg":Ljava/lang/Object;
    instance-of v9, v6, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v9, :cond_5

    move-object v5, v6

    .line 64
    check-cast v5, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 66
    .local v5, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    .line 69
    const-string/jumbo v9, "Content-Encoding"

    invoke-interface {v5, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_0
    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_0
    move v3, v8

    .line 77
    .local v3, "hasContent":Z
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->newContentDecoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    move-result-object v9

    iput-object v9, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    if-eqz v9, :cond_1

    .line 80
    const-string/jumbo v9, "Content-Encoding"

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v9

    if-nez v9, :cond_1

    .line 85
    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 87
    .local v1, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v9, 0x2

    new-array v9, v9, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->finishDecode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 91
    invoke-interface {v5, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 92
    const-string/jumbo v7, "Content-Length"

    invoke-interface {v5, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    const-string/jumbo v7, "Content-Length"

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .end local v1    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 133
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "hasContent":Z
    .end local v5    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_2
    :goto_2
    return-void

    .line 73
    .restart local v2    # "contentEncoding":Ljava/lang/String;
    .restart local v5    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_3
    const-string/jumbo v2, "identity"

    goto :goto_0

    :cond_4
    move v3, v7

    .line 76
    goto :goto_1

    .line 102
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v5    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_5
    instance-of v7, v6, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v7, :cond_9

    move-object v0, v6

    .line 103
    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 104
    .local v0, "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 107
    .restart local v1    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    if-eqz v7, :cond_8

    .line 108
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v7

    if-nez v7, :cond_6

    .line 109
    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 112
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_2

    .line 115
    :cond_6
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->finishDecode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 119
    .local v4, "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 120
    new-instance v7, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v7, v4}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 125
    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_2

    .line 128
    .end local v4    # "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_8
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_2

    .line 131
    .end local v0    # "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v1    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_9
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_2
.end method

.method protected abstract newContentDecoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
