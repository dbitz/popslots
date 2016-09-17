.class public Lcom/helpshift/network/util/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PoolingByteArrayOutputStream.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x100


# instance fields
.field private final pool:Lcom/helpshift/network/util/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/helpshift/network/util/ByteArrayPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/helpshift/network/util/ByteArrayPool;

    .prologue
    .line 24
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;-><init>(Lcom/helpshift/network/util/ByteArrayPool;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/helpshift/network/util/ByteArrayPool;I)V
    .locals 2
    .param p1, "pool"    # Lcom/helpshift/network/util/ByteArrayPool;
    .param p2, "size"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    .line 37
    iget-object v0, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/network/util/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    .line 38
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    iget v1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    iget v2, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/helpshift/network/util/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 61
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    iget-object v2, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Lcom/helpshift/network/util/ByteArrayPool;->returnBuf([B)V

    .line 63
    iput-object v0, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    iget-object v1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/helpshift/network/util/ByteArrayPool;->returnBuf([B)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    .line 44
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 45
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    iget-object v1, p0, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/helpshift/network/util/ByteArrayPool;->returnBuf([B)V

    .line 50
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->expand(I)V

    .line 75
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->expand(I)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method