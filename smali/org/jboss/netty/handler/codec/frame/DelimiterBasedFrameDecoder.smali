.class public Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "DelimiterBasedFrameDecoder.java"


# instance fields
.field private final delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

.field private discardingTooLongFrame:Z

.field private final maxFrameLength:I

.field private final stripDelimiter:Z

.field private tooLongFrameLength:I


# direct methods
.method public constructor <init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "maxFrameLength"    # I
    .param p2, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZLorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 83
    return-void
.end method

.method public constructor <init>(IZLorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 4
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 97
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateMaxFrameLength(I)V

    .line 98
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-interface {p3, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 103
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    .line 104
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    .line 105
    return-void
.end method

.method public varargs constructor <init>(IZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 5
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "delimiters"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 131
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateMaxFrameLength(I)V

    .line 132
    if-nez p3, :cond_0

    .line 133
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "delimiters"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    array-length v2, p3

    if-nez v2, :cond_1

    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "empty delimiters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    array-length v2, p3

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 140
    aget-object v0, p3, v1

    .line 141
    .local v0, "d":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 142
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "d":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    .line 145
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    .line 146
    return-void
.end method

.method public varargs constructor <init>(I[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "maxFrameLength"    # I
    .param p2, "delimiters"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 117
    return-void
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "frameLength"    # J

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 214
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - discarded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - discarding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 6
    .param p0, "haystack"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "needle"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    const/4 v3, -0x1

    .line 234
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 235
    move v0, v1

    .line 237
    .local v0, "haystackIndex":I
    const/4 v2, 0x0

    .local v2, "needleIndex":I
    :goto_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 238
    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v4

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_2

    .line 249
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 251
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    sub-int v3, v1, v3

    .line 254
    .end local v0    # "haystackIndex":I
    .end local v2    # "needleIndex":I
    :cond_1
    return v3

    .line 241
    .restart local v0    # "haystackIndex":I
    .restart local v2    # "needleIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 242
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1

    .line 237
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2
    .param p0, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "delimiter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    return-void
.end method

.method private static validateMaxFrameLength(I)V
    .locals 3
    .param p0, "maxFrameLength"    # I

    .prologue
    .line 267
    if-gtz p0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxFrameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 152
    const v8, 0x7fffffff

    .line 153
    .local v8, "minFrameLength":I
    const/4 v6, 0x0

    .line 154
    .local v6, "minDelim":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .local v0, "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 155
    .local v1, "delim":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {p3, v1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v3

    .line 156
    .local v3, "frameLength":I
    if-ltz v3, :cond_0

    if-ge v3, v8, :cond_0

    .line 157
    move v8, v3

    .line 158
    move-object v6, v1

    .line 154
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "delim":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "frameLength":I
    :cond_1
    if-eqz v6, :cond_6

    .line 163
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v7

    .line 166
    .local v7, "minDelimLength":I
    iget-boolean v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v10, :cond_3

    .line 169
    iput-boolean v11, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 170
    add-int v10, v8, v7

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 174
    iget v9, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 175
    .local v9, "tooLongFrameLength":I
    iput v11, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 176
    int-to-long v10, v9

    invoke-direct {p0, p1, v10, v11}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 208
    .end local v7    # "minDelimLength":I
    .end local v9    # "tooLongFrameLength":I
    :cond_2
    :goto_1
    return-object v2

    .line 180
    .restart local v7    # "minDelimLength":I
    :cond_3
    iget v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v8, v10, :cond_4

    .line 182
    add-int v10, v8, v7

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 183
    int-to-long v10, v8

    invoke-direct {p0, p1, v10, v11}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    goto :goto_1

    .line 187
    :cond_4
    iget-boolean v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    if-eqz v10, :cond_5

    .line 188
    invoke-interface {p3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 189
    .local v2, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_1

    .line 191
    .end local v2    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_5
    add-int v10, v8, v7

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .restart local v2    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1

    .line 196
    .end local v2    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "minDelimLength":I
    :cond_6
    iget-boolean v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-nez v10, :cond_7

    .line 197
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v10

    iget v11, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v10, v11, :cond_2

    .line 199
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v10

    iput v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 200
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v10

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 201
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    goto :goto_1

    .line 205
    :cond_7
    iget v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 206
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v10

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_1
.end method
