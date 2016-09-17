.class public Lorg/jboss/netty/handler/codec/base64/Base64Decoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "Base64Decoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final dialect:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/base64/Base64Decoder;-><init>(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)V
    .locals 2
    .param p1, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/base64/Base64Decoder;->dialect:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 68
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 74
    check-cast p3, Ljava/lang/String;

    .end local p3    # "msg":Ljava/lang/Object;
    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 79
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 80
    .local v0, "src":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/base64/Base64Decoder;->dialect:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    .end local v0    # "src":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_0
    return-object p3

    .line 75
    .restart local p3    # "msg":Ljava/lang/Object;
    :cond_1
    instance-of v1, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_0

    goto :goto_0
.end method
