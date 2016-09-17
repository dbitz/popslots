.class public Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "FixedLengthFrameDecoder.java"


# instance fields
.field private final frameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "frameLength"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 53
    if-gtz p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "frameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    .line 58
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    if-ge v0, v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method
