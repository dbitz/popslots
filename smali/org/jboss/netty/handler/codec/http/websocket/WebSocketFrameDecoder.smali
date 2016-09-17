.class public Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "WebSocketFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FRAME_SIZE:I = 0x4000


# instance fields
.field private final maxFrameSize:I

.field private receivedClosingHandshake:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxFrameSize"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    .line 58
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    .line 59
    return-void
.end method

.method private decodeBinaryFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .locals 6
    .param p1, "type"    # I
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .prologue
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "frameSize":J
    const/4 v1, 0x0

    .line 87
    .local v1, "lengthFieldSize":I
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 88
    .local v0, "b":B
    const/4 v4, 0x7

    shl-long/2addr v2, v4

    .line 89
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 90
    iget v4, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 91
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4

    .line 93
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    const/16 v4, 0x8

    if-le v1, v4, :cond_2

    .line 96
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4

    .line 98
    :cond_2
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    .line 100
    const/16 v4, 0xff

    if-ne p1, v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->receivedClosingHandshake:Z

    .line 104
    :cond_3
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;

    long-to-int v5, v2

    invoke-interface {p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4
.end method

.method private decodeTextFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .locals 7
    .param p1, "type"    # I
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 109
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    .line 110
    .local v4, "ridx":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->actualReadableBytes()I

    move-result v3

    .line 111
    .local v3, "rbytes":I
    add-int v5, v4, v3

    invoke-interface {p2, v4, v5, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v1

    .line 112
    .local v1, "delimPos":I
    if-ne v1, v6, :cond_1

    .line 114
    iget v5, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    if-le v3, v5, :cond_0

    .line 116
    new-instance v5, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v5}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v5

    .line 119
    :cond_0
    const/4 v5, 0x0

    .line 130
    :goto_0
    return-object v5

    .line 123
    :cond_1
    sub-int v2, v1, v4

    .line 124
    .local v2, "frameSize":I
    iget v5, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    if-le v2, v5, :cond_2

    .line 125
    new-instance v5, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v5}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v5

    .line 128
    :cond_2
    invoke-interface {p2, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 129
    .local v0, "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 130
    new-instance v5, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;

    invoke-direct {v5, p1, v0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
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
    .line 40
    check-cast p4, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    .end local p4    # "x3":Ljava/lang/Enum;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/replay/VoidEnum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->receivedClosingHandshake:Z

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->actualReadableBytes()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 68
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    .line 72
    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 73
    .local v0, "type":B
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 75
    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->decodeBinaryFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->decodeTextFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    move-result-object v1

    goto :goto_0
.end method
