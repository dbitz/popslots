.class public Lorg/jboss/netty/handler/codec/rtsp/RtspRequestEncoder;
.super Lorg/jboss/netty/handler/codec/rtsp/RtspMessageEncoder;
.source "RtspRequestEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/rtsp/RtspMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 4
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 36
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 37
    .local v0, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 38
    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 39
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 40
    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 41
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 42
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 43
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 44
    return-void
.end method
