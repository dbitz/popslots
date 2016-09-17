.class Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;
.super Ljava/lang/Object;
.source "ReplayingDecoderBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# static fields
.field private static final REPLAY:Ljava/lang/Error;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/ReplayError;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayError;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 47
    return-void
.end method

.method private checkIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 698
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 699
    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    .line 701
    :cond_0
    return-void
.end method

.method private checkIndex(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 704
    add-int v0, p1, p2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 705
    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    .line 707
    :cond_0
    return-void
.end method

.method private checkReadableBytes(I)V
    .locals 1
    .param p1, "readableBytes"    # I

    .prologue
    .line 710
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 711
    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    .line 713
    :cond_0
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bytesBefore(B)I
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 231
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(B)I

    move-result v0

    .line 232
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 233
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 235
    :cond_0
    return v0
.end method

.method public bytesBefore(IB)I
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # B

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 248
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IB)I

    move-result v0

    .line 249
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 250
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 252
    :cond_0
    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .prologue
    .line 265
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    .line 266
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 267
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 269
    :cond_0
    return v0
.end method

.method public bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 274
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 275
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 276
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 278
    :cond_0
    return v0
.end method

.method public bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .param p1, "length"    # I
    .param p2, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 257
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 258
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 259
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 261
    :cond_0
    return v0
.end method

.method public bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .param p1, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 239
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 240
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 241
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 243
    :cond_0
    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 87
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 96
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public ensureWritableBytes(I)V
    .locals 1
    .param p1, "writableBytes"    # I

    .prologue
    .line 104
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 83
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(I)V

    .line 113
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

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
    .line 150
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
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
    .line 155
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 132
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 145
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .prologue
    .line 141
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 138
    return-void
.end method

.method public getBytes(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .prologue
    .line 127
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 128
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    .line 129
    return-void
.end method

.method public getBytes(I[BII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 124
    return-void
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 194
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 195
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 204
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 205
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 199
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 200
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 159
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 160
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 169
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 170
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 174
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 175
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 184
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 185
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(I)V

    .line 118
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 164
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 165
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 179
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 180
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 189
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 190
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public indexOf(IIB)I
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 214
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    .line 215
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 216
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 218
    :cond_0
    return v0
.end method

.method public indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 223
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 224
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 225
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 227
    :cond_0
    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public markReaderIndex()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 283
    return-void
.end method

.method public markWriterIndex()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 311
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 362
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 349
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 350
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 352
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 330
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 343
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .prologue
    .line 339
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 334
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 335
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 336
    return-void
.end method

.method public readBytes([B)V
    .locals 1
    .param p1, "dst"    # [B

    .prologue
    .line 325
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 326
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 327
    return-void
.end method

.method public readBytes([BII)V
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 320
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 321
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    .line 322
    return-void
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 429
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 438
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 439
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 434
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 394
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 403
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 404
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 409
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readMedium()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 419
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 377
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 369
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 370
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1

    .line 372
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method

.method public readUnsignedByte()S
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 316
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    .prologue
    .line 398
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 399
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 414
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 424
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readable()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readableBytes()I
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public readerIndex()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    return v0
.end method

.method public readerIndex(I)V
    .locals 1
    .param p1, "readerIndex"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 390
    return-void
.end method

.method public resetReaderIndex()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 444
    return-void
.end method

.method public resetWriterIndex()V
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setByte(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 451
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
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
    .line 480
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
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
    .line 489
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 463
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 475
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .prologue
    .line 471
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 467
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .prologue
    .line 459
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(I[BII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 455
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setChar(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 513
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setDouble(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 521
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 517
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setIndex(II)V
    .locals 1
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .prologue
    .line 493
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 497
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 501
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setMedium(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 505
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setShort(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 509
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setZero(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 484
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 4
    .param p1, "firstIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 527
    .local v1, "oldReaderIndex":I
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v3

    invoke-interface {v2, v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 528
    .local v0, "newReaderIndex":I
    if-gez v0, :cond_0

    .line 529
    sget-object v2, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v2

    .line 531
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 532
    sub-int v2, v0, v1

    return v2
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 537
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 538
    return-void
.end method

.method public slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 541
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 545
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 546
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method terminate()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    .line 51
    return-void
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 550
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 555
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 563
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 564
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 579
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .param p4, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 587
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 569
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 592
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charsetName"    # Ljava/nio/charset/Charset;

    .prologue
    .line 573
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writable()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public writableBytes()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 621
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 633
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 645
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .prologue
    .line 641
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 637
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes([B)V
    .locals 1
    .param p1, "src"    # [B

    .prologue
    .line 629
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes([BII)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 625
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 686
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 694
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 690
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 658
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 662
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeMedium(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 666
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 682
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeZero(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 670
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writerIndex()I
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    return v0
.end method

.method public writerIndex(I)V
    .locals 1
    .param p1, "writerIndex"    # I

    .prologue
    .line 678
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method
