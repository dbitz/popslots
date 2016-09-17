.class public Lorg/jboss/netty/handler/stream/ChunkedStream;
.super Ljava/lang/Object;
.source "ChunkedStream.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# static fields
.field static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I

.field private final in:Ljava/io/PushbackInputStream;

.field private volatile offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedStream;-><init>(Ljava/io/InputStream;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "chunkSize"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-gtz p2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "chunkSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_2

    .line 63
    check-cast p1, Ljava/io/PushbackInputStream;

    .end local p1    # "in":Ljava/io/InputStream;
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    .line 67
    :goto_0
    iput p2, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    .line 68
    return-void

    .line 65
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 93
    return-void
.end method

.method public getTransferredBytes()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 79
    .local v0, "b":I
    if-gez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 83
    :goto_0
    return v1

    .line 82
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 83
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedStream;->hasNextChunk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextChunk()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedStream;->hasNextChunk()Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    const/4 v5, 0x0

    .line 122
    :goto_0
    return-object v5

    .line 100
    :cond_0
    iget-object v5, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    .line 102
    .local v0, "availableBytes":I
    if-gtz v0, :cond_2

    .line 103
    iget v2, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    .line 107
    .local v2, "chunkSize":I
    :goto_1
    new-array v1, v2, [B

    .line 108
    .local v1, "chunk":[B
    const/4 v4, 0x0

    .line 110
    .local v4, "readBytes":I
    :cond_1
    iget-object v5, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    sub-int v6, v2, v4

    invoke-virtual {v5, v1, v4, v6}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v3

    .line 111
    .local v3, "localReadBytes":I
    if-gez v3, :cond_3

    .line 122
    :goto_2
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    goto :goto_0

    .line 105
    .end local v1    # "chunk":[B
    .end local v2    # "chunkSize":I
    .end local v3    # "localReadBytes":I
    .end local v4    # "readBytes":I
    :cond_2
    iget v5, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    iget-object v6, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->available()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "chunkSize":I
    goto :goto_1

    .line 114
    .restart local v1    # "chunk":[B
    .restart local v3    # "localReadBytes":I
    .restart local v4    # "readBytes":I
    :cond_3
    add-int/2addr v4, v3

    .line 115
    iget-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    .line 117
    if-ne v4, v2, :cond_1

    goto :goto_2
.end method
