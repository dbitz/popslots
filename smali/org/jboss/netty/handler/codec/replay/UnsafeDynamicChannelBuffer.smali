.class Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;
.super Lorg/jboss/netty/buffer/DynamicChannelBuffer;
.source "UnsafeDynamicChannelBuffer.java"


# direct methods
.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .prologue
    .line 31
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected checkReadableBytes(I)V
    .locals 0
    .param p1, "minReaderRemaining"    # I

    .prologue
    .line 37
    return-void
.end method
