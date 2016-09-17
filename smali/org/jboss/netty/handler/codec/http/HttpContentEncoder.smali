.class public abstract Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "HttpContentEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptEncodingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 56
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    .line 64
    return-void
.end method

.method private encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->offer(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->finish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 192
    .local v0, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    .line 193
    return-object v0

    .line 190
    .end local v0    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .restart local v0    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_0
.end method


# virtual methods
.method protected abstract getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "msg":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-nez v4, :cond_0

    .line 71
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 84
    :goto_0
    return-void

    :cond_0
    move-object v1, v2

    .line 75
    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 76
    .local v1, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    const-string/jumbo v4, "Accept-Encoding"

    invoke-interface {v1, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "acceptedEncoding":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 78
    const-string/jumbo v0, "identity"

    .line 80
    :cond_1
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 81
    .local v3, "offered":Z
    sget-boolean v4, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 83
    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method protected abstract newContentEncoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder",
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

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 9
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v5

    .line 91
    .local v5, "msg":Ljava/lang/Object;
    instance-of v6, v5, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v6, :cond_3

    move-object v4, v5

    .line 92
    check-cast v4, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 94
    .local v4, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    .line 97
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "acceptEncoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 99
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "cannot send more responses than requests"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->newContentEncoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    move-result-object v6

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-eqz v6, :cond_1

    .line 105
    const-string/jumbo v6, "Content-Encoding"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 112
    .local v2, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v6, 0x2

    new-array v6, v6, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v7, 0x0

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 116
    invoke-interface {v4, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 117
    const-string/jumbo v6, "Content-Length"

    invoke-interface {v4, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    const-string/jumbo v6, "Content-Length"

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 158
    .end local v0    # "acceptEncoding":Ljava/lang/String;
    .end local v4    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_2
    :goto_0
    return-void

    .line 127
    :cond_3
    instance-of v6, v5, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v6, :cond_7

    move-object v1, v5

    .line 128
    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 129
    .local v1, "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 132
    .restart local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-eqz v6, :cond_6

    .line 133
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v6

    if-nez v6, :cond_4

    .line 134
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 135
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 137
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 140
    :cond_4
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 144
    .local v3, "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    invoke-static {v6}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v7, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v7, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 150
    :cond_5
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 153
    .end local v3    # "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_6
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 156
    .end local v1    # "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
