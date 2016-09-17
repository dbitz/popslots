.class public Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "CompatibleObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bin:Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;

.field private oin:Ljava/io/ObjectInputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_HEADER:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    .line 61
    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->bin:Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;

    .line 69
    return-void
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    check-cast p4, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    .end local p4    # "x3":Ljava/lang/Enum;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->bin:Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;

    new-instance v1, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    invoke-direct {v1, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;->switchStream(Ljava/io/InputStream;)V

    .line 84
    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->bin:Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->newObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    .line 87
    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;->READ_OBJECT:Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 89
    :pswitch_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    check-cast p4, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;

    .end local p4    # "x3":Ljava/lang/Enum;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoderState;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "decoded":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 113
    .end local v0    # "decoded":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-object v0

    .line 104
    :pswitch_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_0

    .line 105
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 106
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
