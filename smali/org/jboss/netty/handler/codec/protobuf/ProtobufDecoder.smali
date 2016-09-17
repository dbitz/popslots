.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "ProtobufDecoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

.field private final prototype:Lcom/google/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "prototype"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;-><init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistry;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 2
    .param p1, "prototype"    # Lcom/google/protobuf/MessageLite;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "prototype"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    .line 90
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    .line 91
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    instance-of v1, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_0

    .line 114
    .end local p3    # "msg":Ljava/lang/Object;
    :goto_0
    return-object p3

    .restart local p3    # "msg":Ljava/lang/Object;
    :cond_0
    move-object v0, p3

    .line 100
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 101
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    .end local p3    # "msg":Ljava/lang/Object;
    invoke-direct {v2, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v1, v2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    .line 114
    .restart local p3    # "msg":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    .end local p3    # "msg":Ljava/lang/Object;
    invoke-direct {v2, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {v1, v2, v3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0
.end method
