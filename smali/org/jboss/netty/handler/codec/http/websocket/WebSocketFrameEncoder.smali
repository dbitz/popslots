.class public Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "WebSocketFrameEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v9, p3, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    if-eqz v9, :cond_4

    move-object v7, p3

    .line 45
    check-cast v7, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    .line 46
    .local v7, "frame":Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->getType()I

    move-result v8

    .line 47
    .local v8, "type":I
    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->isText()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 49
    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 50
    .local v4, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v9

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-interface {v9, v10, v11}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 53
    .local v6, "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    int-to-byte v9, v8

    invoke-interface {v6, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 54
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v9

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v10

    invoke-interface {v6, v4, v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 55
    const/4 v9, -0x1

    invoke-interface {v6, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 98
    .end local v4    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v6    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "frame":Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .end local v8    # "type":I
    :goto_0
    return-object v6

    .line 59
    .restart local v7    # "frame":Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .restart local v8    # "type":I
    :cond_0
    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 60
    .restart local v4    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    .line 61
    .local v5, "dataLen":I
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v9

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    add-int/lit8 v11, v5, 0x5

    invoke-interface {v9, v10, v11}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 66
    .restart local v6    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    int-to-byte v9, v8

    invoke-interface {v6, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 69
    ushr-int/lit8 v9, v5, 0x1c

    and-int/lit8 v0, v9, 0x7f

    .line 70
    .local v0, "b1":I
    ushr-int/lit8 v9, v5, 0xe

    and-int/lit8 v1, v9, 0x7f

    .line 71
    .local v1, "b2":I
    ushr-int/lit8 v9, v5, 0x7

    and-int/lit8 v2, v9, 0x7f

    .line 72
    .local v2, "b3":I
    and-int/lit8 v3, v5, 0x7f

    .line 73
    .local v3, "b4":I
    if-nez v0, :cond_3

    .line 74
    if-nez v1, :cond_2

    .line 75
    if-nez v2, :cond_1

    .line 76
    invoke-interface {v6, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 94
    :goto_1
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v9

    invoke-interface {v6, v4, v9, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v6, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 79
    invoke-interface {v6, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 83
    invoke-interface {v6, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 84
    invoke-interface {v6, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-interface {v6, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 88
    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 89
    invoke-interface {v6, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 90
    invoke-interface {v6, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1

    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "dataLen":I
    .end local v6    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "frame":Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .end local v8    # "type":I
    :cond_4
    move-object v6, p3

    .line 98
    goto :goto_0
.end method
