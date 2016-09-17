.class public abstract Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.super Ljava/lang/Object;
.source "AbstractChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# instance fields
.field private markedReaderIndex:I

.field private markedWriterIndex:I

.field private readerIndex:I

.field private writerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesBefore(B)I
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 590
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "value"    # B

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 599
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .prologue
    .line 608
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IIB)I

    move-result v0

    .line 609
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 610
    const/4 v1, -0x1

    .line 612
    :goto_0
    return v1

    :cond_0
    sub-int v1, v0, p1

    goto :goto_0
.end method

.method public bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 617
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 618
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 619
    const/4 v1, -0x1

    .line 621
    :goto_0
    return v1

    :cond_0
    sub-int v1, v0, p1

    goto :goto_0
.end method

.method public bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 604
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method public bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .param p1, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 594
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method protected checkReadableBytes(I)V
    .locals 1
    .param p1, "minimumReadableBytes"    # I

    .prologue
    .line 656
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 659
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 75
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 1
    .param p1, "that"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 638
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->compare(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    .prologue
    .line 518
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 114
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 115
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    .line 116
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    .line 117
    iput v3, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    goto :goto_0
.end method

.method public ensureWritableBytes(I)V
    .locals 1
    .param p1, "writableBytes"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 631
    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 634
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->equals(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 163
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 164
    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .prologue
    .line 167
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 170
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 171
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 172
    return-void
.end method

.method public getBytes(I[B)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .prologue
    .line 159
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(I[BII)V

    .line 160
    return-void
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    .line 136
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 137
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 139
    :cond_0
    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 626
    invoke-static {p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->hashCode(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 582
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    return v0
.end method

.method public indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .prologue
    .line 586
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method public markReaderIndex()V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    .line 95
    return-void
.end method

.method public markWriterIndex()V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    .line 103
    return-void
.end method

.method public readByte()B
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-ne v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 238
    :cond_0
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 374
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    .line 375
    .local v0, "readBytes":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 376
    return v0
.end method

.method public readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 303
    if-nez p1, :cond_0

    .line 304
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 307
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-interface {v0, p0, v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 308
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    goto :goto_0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 315
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 316
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 318
    :cond_0
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

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
    .line 380
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 381
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 382
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 383
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 366
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 367
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 368
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 369
    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 347
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 348
    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .prologue
    .line 351
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 354
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 355
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 356
    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 359
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 360
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 361
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 362
    return-void
.end method

.method public readBytes([B)V
    .locals 2
    .param p1, "dst"    # [B

    .prologue
    .line 343
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes([BII)V

    .line 344
    return-void
.end method

.method public readBytes([BII)V
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 337
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 338
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(I[BII)V

    .line 339
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 340
    return-void
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 272
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 273
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    .line 274
    .local v0, "v":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 275
    return v0
.end method

.method public readLong()J
    .locals 3

    .prologue
    .line 283
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 284
    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getLong(I)J

    move-result-wide v0

    .line 285
    .local v0, "v":J
    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 286
    return-wide v0
.end method

.method public readMedium()I
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readUnsignedMedium()I

    move-result v0

    .line 258
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 259
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 261
    :cond_0
    return v0
.end method

.method public readShort()S
    .locals 2

    .prologue
    .line 246
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 247
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    .line 248
    .local v0, "v":S
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 249
    return v0
.end method

.method public readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 322
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 323
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 324
    return-object v0
.end method

.method public readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 330
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 331
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 333
    :cond_0
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method

.method public readUnsignedByte()S
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 2

    .prologue
    .line 265
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 266
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    .line 267
    .local v0, "v":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 268
    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readable()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readableBytes()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readerIndex(I)V
    .locals 1
    .param p1, "readerIndex"    # I

    .prologue
    .line 48
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-le p1, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 51
    :cond_1
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 52
    return-void
.end method

.method public resetReaderIndex()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex(I)V

    .line 99
    return-void
.end method

.method public resetWriterIndex()V
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 107
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 191
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 192
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .prologue
    .line 195
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 198
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 199
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 200
    return-void
.end method

.method public setBytes(I[B)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .prologue
    .line 187
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(I[BII)V

    .line 188
    return-void
.end method

.method public setChar(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setShort(II)V

    .line 176
    return-void
.end method

.method public setDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 183
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    .line 184
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 179
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    .line 180
    return-void
.end method

.method public setIndex(II)V
    .locals 1
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .prologue
    .line 66
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 69
    :cond_1
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 70
    iput p2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 71
    return-void
.end method

.method public setZero(II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 203
    if-nez p2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-gez p2, :cond_2

    .line 207
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "length must be 0 or greater than 0."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_2
    ushr-int/lit8 v2, p2, 0x3

    .line 212
    .local v2, "nLong":I
    and-int/lit8 v1, p2, 0x7

    .line 213
    .local v1, "nBytes":I
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_3

    .line 214
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    .line 215
    add-int/lit8 p1, p1, 0x8

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 217
    :cond_3
    if-ne v1, v6, :cond_4

    .line 218
    invoke-virtual {p0, p1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    goto :goto_0

    .line 219
    :cond_4
    if-ge v1, v6, :cond_5

    .line 220
    move v0, v1

    :goto_2
    if-lez v0, :cond_0

    .line 221
    invoke-virtual {p0, p1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    .line 222
    add-int/lit8 p1, p1, 0x1

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 225
    :cond_5
    invoke-virtual {p0, p1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    .line 226
    add-int/lit8 p1, p1, 0x4

    .line 227
    add-int/lit8 v0, v1, -0x4

    :goto_3
    if-lez v0, :cond_0

    .line 228
    invoke-virtual {p0, p1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    .line 229
    add-int/lit8 p1, p1, 0x1

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 3
    .param p1, "firstIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 396
    .local v1, "oldReaderIndex":I
    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 397
    .local v0, "newReaderIndex":I
    if-gez v0, :cond_0

    .line 398
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 400
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex(I)V

    .line 401
    sub-int v2, v0, v1

    return v2
.end method

.method public skipBytes(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 386
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int v0, v1, p1

    .line 387
    .local v0, "newReaderIndex":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-le v0, v1, :cond_0

    .line 388
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 390
    :cond_0
    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 391
    return-void
.end method

.method public slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 526
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 530
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 534
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
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

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

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
    .line 567
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .param p4, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    if-nez p4, :cond_0

    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    :goto_0
    return-object v1

    .line 557
    :cond_0
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1, p4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 558
    .local v0, "terminatorIndex":I
    if-gez v0, :cond_1

    .line 559
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 562
    :cond_1
    sub-int v1, v0, p1

    invoke-virtual {p0, p1, v1, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 542
    if-nez p2, :cond_0

    .line 543
    const-string/jumbo v0, ""

    .line 546
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->decodeString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 2
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 538
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writable()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writableBytes()I
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 405
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    .line 406
    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    .line 475
    .local v0, "writtenBytes":I
    if-lez v0, :cond_0

    .line 476
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 478
    :cond_0
    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    .line 484
    .local v0, "writtenBytes":I
    if-lez v0, :cond_0

    .line 485
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 487
    :cond_0
    return v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 468
    .local v0, "length":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 469
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 470
    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 450
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 451
    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .prologue
    .line 454
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 457
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 458
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 459
    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 462
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 463
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 464
    return-void
.end method

.method public writeBytes([B)V
    .locals 2
    .param p1, "src"    # [B

    .prologue
    .line 446
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes([BII)V

    .line 447
    return-void
.end method

.method public writeBytes([BII)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 441
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(I[BII)V

    .line 442
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 443
    return-void
.end method

.method public writeChar(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeShort(I)V

    .line 430
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 437
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    .line 438
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 433
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    .line 434
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 419
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    .line 420
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 421
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 424
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    .line 425
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 426
    return-void
.end method

.method public writeMedium(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 414
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setMedium(II)V

    .line 415
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 416
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 409
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setShort(II)V

    .line 410
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 411
    return-void
.end method

.method public writeZero(I)V
    .locals 7
    .param p1, "length"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    if-gez p1, :cond_2

    .line 495
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "length must be 0 or greater than 0."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :cond_2
    ushr-int/lit8 v2, p1, 0x3

    .line 499
    .local v2, "nLong":I
    and-int/lit8 v1, p1, 0x7

    .line 500
    .local v1, "nBytes":I
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_3

    .line 501
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    .line 500
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 503
    :cond_3
    if-ne v1, v6, :cond_4

    .line 504
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    goto :goto_0

    .line 505
    :cond_4
    if-ge v1, v6, :cond_5

    .line 506
    move v0, v1

    :goto_2
    if-lez v0, :cond_0

    .line 507
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    .line 506
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 510
    :cond_5
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    .line 511
    add-int/lit8 v0, v1, -0x4

    :goto_3
    if-lez v0, :cond_0

    .line 512
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    .line 511
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public writerIndex()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return v0
.end method

.method public writerIndex(I)V
    .locals 1
    .param p1, "writerIndex"    # I

    .prologue
    .line 59
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 62
    :cond_1
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 63
    return-void
.end method
