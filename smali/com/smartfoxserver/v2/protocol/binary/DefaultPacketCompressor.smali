.class public final Lcom/smartfoxserver/v2/protocol/binary/DefaultPacketCompressor;
.super Ljava/lang/Object;
.source "DefaultPacketCompressor.java"

# interfaces
.implements Lcom/smartfoxserver/v2/protocol/binary/IPacketCompressor;


# instance fields
.field public final MAX_SIZE_FOR_COMPRESSION:I

.field private final compressionBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const v0, 0xf4240

    iput v0, p0, Lcom/smartfoxserver/v2/protocol/binary/DefaultPacketCompressor;->MAX_SIZE_FOR_COMPRESSION:I

    .line 11
    const/16 v0, 0x100

    iput v0, p0, Lcom/smartfoxserver/v2/protocol/binary/DefaultPacketCompressor;->compressionBufferSize:I

    .line 18
    return-void
.end method


# virtual methods
.method public compress([B)[B
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    array-length v4, p1

    const v5, 0xf4240

    if-le v4, v5, :cond_0

    .line 72
    .end local p1    # "data":[B
    :goto_0
    return-object p1

    .line 38
    .restart local p1    # "data":[B
    :cond_0
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 52
    .local v2, "compressor":Ljava/util/zip/Deflater;
    invoke-virtual {v2, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 53
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, p1

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 62
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x100

    new-array v1, v4, [B

    .line 63
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 66
    .local v3, "count":I
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public uncompress([B)[B
    .locals 5
    .param p1, "zipData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 81
    .local v3, "unzipper":Ljava/util/zip/Inflater;
    invoke-virtual {v3, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, p1

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 87
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x100

    new-array v1, v4, [B

    .line 90
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 92
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 93
    .local v2, "count":I
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
