.class public Lorg/jboss/netty/buffer/TruncatedChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "TruncatedChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/WrappedChannelBuffer;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final length:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 45
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 50
    iput p2, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->length:I

    .line 51
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->writerIndex(I)V

    .line 52
    return-void
.end method

.method private checkIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 215
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 218
    :cond_1
    return-void
.end method

.method private checkIndex(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 221
    if-gez p2, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 228
    :cond_1
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->length:I

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 119
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->length:I

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 113
    .local v0, "duplicate":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 114
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(I)V

    .line 88
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 194
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 188
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 189
    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 141
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 142
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 143
    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 132
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 133
    return-void
.end method

.method public getBytes(I[BII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 138
    return-void
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 103
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 107
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 108
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 93
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 98
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(I)V

    .line 147
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 148
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 200
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 206
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 181
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 182
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 183
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 177
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 178
    return-void
.end method

.method public setBytes(I[BII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 172
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    .line 173
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 161
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    .line 163
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 166
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 167
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    .line 168
    return-void
.end method

.method public setMedium(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 156
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 157
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    .line 158
    return-void
.end method

.method public setShort(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 152
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    .line 153
    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 124
    if-nez p2, :cond_0

    .line 125
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 211
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method
