.class public abstract Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "HttpMessageEncoder.java"


# static fields
.field private static final LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;


# instance fields
.field private volatile chunked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "0\r\n\r\n"

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 63
    return-void
.end method

.method private encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 156
    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 157
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 158
    const-string/jumbo v0, "ASCII"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 159
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 160
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 161
    return-void
.end method

.method private encodeHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 5
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 135
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    .local v1, "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 141
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private encodeTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;)V
    .locals 5
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "trailer"    # Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    .prologue
    .line 145
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 146
    .local v1, "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 151
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    instance-of v7, p3, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v7, :cond_2

    move-object v5, p3

    .line 68
    check-cast v5, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 69
    .local v5, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    invoke-static {v5}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    .line 70
    .local v1, "chunked":Z
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 72
    .local v4, "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 73
    invoke-direct {p0, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 74
    const/16 v7, 0xd

    invoke-interface {v4, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 75
    const/16 v7, 0xa

    invoke-interface {v4, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 77
    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 78
    .local v2, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 130
    .end local v1    # "chunked":Z
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :goto_0
    return-object v4

    .line 80
    .restart local v1    # "chunked":Z
    .restart local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v4    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v5    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_0
    if-eqz v1, :cond_1

    .line 81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "HttpMessage.content must be empty if Transfer-Encoding is chunked."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 85
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    goto :goto_0

    .line 89
    .end local v1    # "chunked":Z
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :cond_2
    instance-of v7, p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v7, :cond_7

    move-object v0, p3

    .line 90
    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 91
    .local v0, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    iget-boolean v7, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    if-eqz v7, :cond_5

    .line 92
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->chunked:Z

    .line 94
    instance-of v7, v0, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v7, :cond_3

    .line 95
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 97
    .local v6, "trailer":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/16 v7, 0x30

    invoke-interface {v6, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 98
    const/16 v7, 0xd

    invoke-interface {v6, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 99
    const/16 v7, 0xa

    invoke-interface {v6, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 100
    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    .end local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-direct {p0, v6, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;)V

    .line 101
    const/16 v7, 0xd

    invoke-interface {v6, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 102
    const/16 v7, 0xa

    invoke-interface {v6, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    move-object v4, v6

    .line 103
    goto :goto_0

    .line 105
    .end local v6    # "trailer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_3
    sget-object v7, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    goto :goto_0

    .line 108
    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 109
    .restart local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    .line 111
    .local v3, "contentLength":I
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->CRLF:[B

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v9

    invoke-interface {v2, v9, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->CRLF:[B

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    goto/16 :goto_0

    .line 120
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "contentLength":I
    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 121
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    goto/16 :goto_0

    .end local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_7
    move-object v4, p3

    .line 130
    goto/16 :goto_0
.end method

.method protected abstract encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
