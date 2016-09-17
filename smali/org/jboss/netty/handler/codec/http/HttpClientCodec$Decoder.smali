.class final Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;
.super Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;
.source "HttpClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpClientCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Decoder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;III)V
    .locals 0
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I

    .prologue
    .line 103
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    .line 104
    invoke-direct {p0, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;-><init>(III)V

    .line 105
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
    .line 101
    check-cast p4, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .end local p4    # "x3":Ljava/lang/Enum;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-boolean v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 5
    .param p1, "msg"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 121
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v4, v4, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 123
    .local v1, "method":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 124
    .local v0, "firstChar":C
    sparse-switch v0, :sswitch_data_0

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 130
    :sswitch_0
    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpMethod;->HEAD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v4, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_1
    move-object v2, p1

    .line 140
    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 141
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMethod;->CONNECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iput-boolean v3, v2, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    .line 144
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v2, v2, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    move v2, v3

    .line 145
    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method
