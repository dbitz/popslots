.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "ProtobufEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    instance-of v0, p3, Lcom/google/protobuf/MessageLite;

    if-nez v0, :cond_0

    .line 84
    .end local p3    # "msg":Ljava/lang/Object;
    :goto_0
    return-object p3

    .restart local p3    # "msg":Ljava/lang/Object;
    :cond_0
    check-cast p3, Lcom/google/protobuf/MessageLite;

    .end local p3    # "msg":Ljava/lang/Object;
    invoke-interface {p3}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto :goto_0
.end method
