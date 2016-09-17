.class public Lsfs2x/client/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private buffer:[B

.field private compressed:Z

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lsfs2x/client/util/ByteArray;->position:I

    .line 18
    iput-boolean v0, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lsfs2x/client/util/ByteArray;->position:I

    .line 18
    iput-boolean v0, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    .line 62
    iput-object p1, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    .line 63
    return-void
.end method

.method private checkCompressedRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 130
    iget-boolean v0, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v1, "Only raw bytes can be read from a compressed array."

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method private checkCompressedWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v1, "Only raw bytes can be written a compressed array. Call Uncompress first."

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public compress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v5, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    if-eqz v5, :cond_0

    .line 67
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v6, "Buffer is already compressed"

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 72
    .local v2, "compressor":Ljava/util/zip/Deflater;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 73
    iget-object v5, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    invoke-virtual {v2, v5}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 74
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 79
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    .line 86
    const/4 v5, 0x0

    iput v5, p0, Lsfs2x/client/util/ByteArray;->position:I

    .line 87
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    .line 92
    return-void

    .line 80
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 81
    .local v3, "count":I
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "compressor":Ljava/util/zip/Deflater;
    .end local v3    # "count":I
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v6, "Error compressing data"

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    return-object v0
.end method

.method public getBytesAvailable()I
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lsfs2x/client/util/ByteArray;->position:I

    sub-int v0, v1, v2

    .line 43
    .local v0, "val":I
    iget-object v1, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :cond_1
    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lsfs2x/client/util/ByteArray;->position:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    return v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 317
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 318
    iget-object v1, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    iget v2, p0, Lsfs2x/client/util/ByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsfs2x/client/util/ByteArray;->position:I

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 304
    iget-object v0, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    iget v1, p0, Lsfs2x/client/util/ByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsfs2x/client/util/ByteArray;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readBytes(I)[B
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 308
    new-array v1, p1, [B

    .line 309
    .local v1, "res":[B
    iget-object v2, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v2, p0, Lsfs2x/client/util/ByteArray;->position:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 312
    iget v2, p0, Lsfs2x/client/util/ByteArray;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lsfs2x/client/util/ByteArray;->position:I

    .line 313
    return-object v1
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 394
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v1

    .line 395
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 396
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 398
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 400
    :catch_0
    move-exception v3

    .line 401
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "Error reading from data buffer"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 381
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v1

    .line 382
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 383
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 385
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 387
    :catch_0
    move-exception v3

    .line 388
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "Error reading from data buffer"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 323
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v1

    .line 324
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 325
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 327
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 329
    :catch_0
    move-exception v3

    .line 330
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "Error reading from data buffer"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 368
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v1

    .line 369
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 370
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 372
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "Error reading from data buffer"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 336
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v1

    .line 337
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 338
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 340
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "Error reading from data buffer"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readUShort()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 349
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v0

    .line 351
    .local v0, "data":[B
    new-instance v3, Ljava/lang/Integer;

    aget-byte v4, v0, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 352
    .local v1, "ib1":I
    if-gez v1, :cond_0

    .line 353
    aget-byte v3, v0, v5

    and-int/lit16 v1, v3, 0x80

    .line 354
    aget-byte v3, v0, v5

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v1, v3

    .line 357
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    aget-byte v4, v0, v6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 358
    .local v2, "ib2":I
    if-gez v2, :cond_1

    .line 359
    aget-byte v3, v0, v6

    and-int/lit16 v2, v3, 0x80

    .line 360
    aget-byte v3, v0, v6

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v2, v3

    .line 363
    :cond_1
    mul-int/lit16 v3, v1, 0x100

    add-int/2addr v3, v2

    return v3
.end method

.method public readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 407
    :try_start_0
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedRead()V

    .line 408
    invoke-virtual {p0}, Lsfs2x/client/util/ByteArray;->readShort()S

    move-result v2

    .line 409
    .local v2, "size":S
    invoke-virtual {p0, v2}, Lsfs2x/client/util/ByteArray;->readBytes(I)[B

    move-result-object v0

    .line 410
    .local v0, "data":[B
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 412
    .end local v0    # "data":[B
    .end local v2    # "size":S
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error reading from data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public reverseOrder([B)[B
    .locals 0
    .param p1, "dt"    # [B

    .prologue
    .line 138
    return-object p1
.end method

.method public setBuffer([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 25
    iput-object p1, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    .line 27
    return-void
.end method

.method public setCompressed(Z)V
    .locals 0
    .param p1, "compressed"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    .line 55
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 38
    iput p1, p0, Lsfs2x/client/util/ByteArray;->position:I

    .line 39
    return-void
.end method

.method public uncompress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 99
    .local v3, "decompressor":Ljava/util/zip/Inflater;
    iget-object v5, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    invoke-virtual {v3, v5}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 104
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    .line 111
    const/4 v5, 0x0

    iput v5, p0, Lsfs2x/client/util/ByteArray;->position:I

    .line 112
    const/4 v5, 0x0

    iput-boolean v5, p0, Lsfs2x/client/util/ByteArray;->compressed:Z

    .line 120
    return-void

    .line 105
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 106
    .local v2, "count":I
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    .end local v3    # "decompressor":Ljava/util/zip/Inflater;
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/util/zip/DataFormatException;
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v6, "Data format exception decompressing buffer"

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    .end local v4    # "e":Ljava/util/zip/DataFormatException;
    :catch_1
    move-exception v4

    .line 118
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v6, "Error decompressing data"

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public writeBool(Z)V
    .locals 5
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v1, "dos":Ljava/io/DataOutputStream;
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-void

    .line 181
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 184
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error writing to data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 158
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 159
    .local v0, "buf":[B
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 160
    invoke-virtual {p0, v0}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V

    .line 161
    return-void
.end method

.method public writeByte(Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V
    .locals 1
    .param p1, "tp"    # Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsfs2x/client/util/ByteArray;->writeByte(B)V

    .line 155
    return-void
.end method

.method public writeBytes([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 164
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/util/ByteArray;->writeBytes([BI)V

    .line 165
    return-void
.end method

.method public writeBytes([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "count"    # I

    .prologue
    .line 168
    iget-object v2, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    array-length v2, v2

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 169
    .local v1, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    new-array v0, p2, [B

    .line 171
    .local v0, "addBuffer":[B
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, p0, Lsfs2x/client/util/ByteArray;->buffer:[B

    .line 174
    return-void
.end method

.method public writeDouble(D)V
    .locals 5
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 261
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 263
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 264
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 266
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error writing to data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeFloat(F)V
    .locals 5
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 247
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 250
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    return-void

    .line 252
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error writing to data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 192
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 194
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 197
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error writing to data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeLong(J)V
    .locals 5
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 234
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 236
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    return-void

    .line 239
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error writing to data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeShort(S)V
    .locals 5
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->reverseOrder([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 210
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v4, "Error writing to data buffer"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeUShort(I)V
    .locals 7
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 218
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 220
    .local v3, "dos":Ljava/io/DataOutputStream;
    const v5, 0xff00

    and-int/2addr v5, p1

    shr-int/lit8 v0, v5, 0x8

    .line 221
    .local v0, "b1":I
    and-int/lit16 v1, p1, 0xff

    .line 222
    .local v1, "b2":I
    int-to-byte v5, v0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 223
    int-to-byte v5, v1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-void

    .line 226
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 227
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v6, "Error writing to data buffer"

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lsfs2x/client/util/ByteArray;->checkCompressedWrite()V

    .line 274
    const/4 v3, 0x0

    .line 275
    .local v3, "utfLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 288
    const v4, 0x8000

    if-le v3, v4, :cond_3

    .line 289
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "String length cannot be greater then 32768 !"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 277
    .local v0, "c":I
    const/4 v4, 0x1

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_1

    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 275
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const/16 v4, 0x7ff

    if-le v0, v4, :cond_2

    .line 281
    add-int/lit8 v3, v3, 0x3

    .line 282
    goto :goto_1

    .line 284
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 293
    .end local v0    # "c":I
    :cond_3
    int-to-short v4, v3

    :try_start_0
    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->writeShort(S)V

    .line 294
    const-string/jumbo v4, "UTF8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v5, "Error writing to data buffer"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
