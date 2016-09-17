.class public Lorg/jboss/netty/buffer/ChannelBufferInputStream;
.super Ljava/io/InputStream;
.source "ChannelBufferInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final endIndex:I

.field private final lineBuf:Ljava/lang/StringBuilder;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 55
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-gez p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 78
    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 79
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    .line 80
    iget v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->endIndex:I

    .line 81
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 82
    return-void
.end method

.method private checkAvailable(I)V
    .locals 1
    .param p1, "fieldSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-gez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 231
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->endIndex:I

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 99
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, -0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    .line 117
    .local v0, "available":I
    if-nez v0, :cond_0

    .line 118
    const/4 v1, -0x1

    .line 123
    :goto_0
    return v1

    .line 121
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 122
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    move v1, p3

    .line 123
    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 142
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->read()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readFully([BII)V

    .line 166
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 170
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    .line 171
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 175
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->read()I

    move-result v0

    .line 184
    .local v0, "b":I
    if-ltz v0, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 192
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 200
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 205
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 129
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 134
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public skipBytes(I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    .local v0, "nBytes":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 223
    return v0
.end method
