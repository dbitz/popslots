.class public Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;
.super Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
.source "HttpResponseDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;-><init>(III)V

    .line 106
    return-void
.end method


# virtual methods
.method protected createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .locals 5
    .param p1, "initialLine"    # [Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-direct {v2, v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    return-object v0
.end method

.method protected isDecodingRequest()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
