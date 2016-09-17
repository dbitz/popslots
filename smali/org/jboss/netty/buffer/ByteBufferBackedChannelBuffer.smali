.class public Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "ByteBufferBackedChannelBuffer.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final capacity:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    .line 55
    iget v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->writerIndex(I)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 59
    iget-object v0, p1, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p1, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 61
    iget v0, p1, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    iput v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    .line 62
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setIndex(II)V

    .line 63
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 327
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    add-int v4, p1, p2

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .local v2, "src":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 333
    .local v0, "dst":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 334
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 336
    new-instance v3, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-direct {v3, v0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v3

    .line 328
    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .end local v2    # "src":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 332
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "src":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    if-nez p3, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    if-nez p3, :cond_0

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 213
    :cond_1
    new-array v0, p3, [B

    .line 214
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 144
    iget-object v3, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 145
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    .local v0, "bytesToCopy":I
    add-int v3, p1, v0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    return-void

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 120
    instance-of v2, p2, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 121
    check-cast v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    .line 122
    .local v0, "bbdst":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    iget-object v2, v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 124
    .local v1, "data":Ljava/nio/ByteBuffer;
    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 125
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 131
    .end local v0    # "bbdst":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {p2, p3, v2, v3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {p2, p3, p0, p1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0
.end method

.method public getBytes(I[BII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 134
    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    .local v0, "data":Ljava/nio/ByteBuffer;
    add-int v2, p1, p4

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 141
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 156
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "readBytes":I
    iget-object v5, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 233
    iget-object v5, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr p1, v5

    .line 235
    :cond_0
    iget-object v5, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p2, v5, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 236
    .local v1, "localReadBytes":I
    if-gez v1, :cond_2

    .line 237
    if-nez v2, :cond_3

    .line 265
    :cond_1
    :goto_0
    return v4

    .line 243
    :cond_2
    add-int/2addr v2, v1

    .line 244
    add-int/2addr p1, v1

    .line 245
    sub-int/2addr p3, v1

    .line 246
    if-gtz p3, :cond_0

    :cond_3
    :goto_1
    move v4, v2

    .line 265
    goto :goto_0

    .line 248
    .end local v1    # "localReadBytes":I
    :cond_4
    new-array v3, p3, [B

    .line 249
    .local v3, "tmp":[B
    const/4 v0, 0x0

    .line 251
    .local v0, "i":I
    :cond_5
    array-length v5, v3

    sub-int/2addr v5, v0

    invoke-virtual {p2, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 252
    .restart local v1    # "localReadBytes":I
    if-gez v1, :cond_6

    .line 253
    if-eqz v2, :cond_1

    .line 262
    :goto_2
    iget-object v4, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 259
    :cond_6
    add-int/2addr v2, v1

    .line 260
    add-int/2addr v0, v2

    .line 261
    array-length v5, v3

    if-lt v0, v5, :cond_5

    goto :goto_2
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v4, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int v5, p1, p3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 272
    .local v3, "slice":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 274
    .local v2, "readBytes":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 277
    :try_start_0
    invoke-interface {p2, v3}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    .local v1, "localReadBytes":I
    :goto_1
    if-gez v1, :cond_1

    .line 282
    if-nez v2, :cond_0

    .line 283
    const/4 v2, -0x1

    .line 293
    .end local v1    # "localReadBytes":I
    .end local v2    # "readBytes":I
    :cond_0
    return v2

    .line 278
    .restart local v2    # "readBytes":I
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, -0x1

    .restart local v1    # "localReadBytes":I
    goto :goto_1

    .line 287
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    :cond_1
    if-eqz v1, :cond_0

    .line 290
    add-int/2addr v2, v1

    .line 291
    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 197
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 199
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 200
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 177
    instance-of v2, p2, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 178
    check-cast v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    .line 179
    .local v0, "bbsrc":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    iget-object v2, v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 181
    .local v1, "data":Ljava/nio/ByteBuffer;
    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 182
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 188
    .end local v0    # "bbsrc":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {p2, p3, v2, v3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {p2, p3, p0, p1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0
.end method

.method public setBytes(I[BII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    .local v0, "data":Ljava/nio/ByteBuffer;
    add-int v1, p1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 194
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 170
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 174
    return-void
.end method

.method public setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 163
    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setByte(II)V

    .line 164
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setByte(II)V

    .line 165
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setByte(II)V

    .line 166
    return-void
.end method

.method public setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 160
    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 306
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 308
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 314
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_0
    return-object v0

    .line 311
    :cond_0
    if-ltz p1, :cond_1

    if-nez p2, :cond_1

    .line 312
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 297
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
