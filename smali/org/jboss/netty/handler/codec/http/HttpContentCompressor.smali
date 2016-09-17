.class public Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;
.super Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;
.source "HttpContentCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpContentCompressor$1;
    }
.end annotation


# instance fields
.field private final compressionLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "compressionLevel"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    .line 54
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    .line 60
    return-void
.end method

.method private determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .locals 1
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 92
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-string/jumbo v0, "deflate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 95
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "acceptEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v0

    .line 75
    .local v0, "wrapper":Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    .line 79
    :cond_0
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor$1;->$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 85
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 81
    :pswitch_0
    const-string/jumbo v1, "gzip"

    goto :goto_0

    .line 83
    :pswitch_1
    const-string/jumbo v1, "deflate"

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newContentEncoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .locals 6
    .param p1, "acceptEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v0

    .line 65
    .local v0, "wrapper":Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    const/4 v3, 0x0

    new-instance v4, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;

    iget v5, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    invoke-direct {v4, v0, v5}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelDownstreamHandler;)V

    goto :goto_0
.end method
