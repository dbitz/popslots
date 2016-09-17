.class public Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;
.super Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.source "ObjectDecoder.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxObjectSize"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILjava/lang/ClassLoader;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/ClassLoader;)V
    .locals 6
    .param p1, "maxObjectSize"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 81
    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 82
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;->classLoader:Ljava/lang/ClassLoader;

    .line 83
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 90
    .local v0, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;

    new-instance v2, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    invoke-direct {v2, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v2, v3}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 100
    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
