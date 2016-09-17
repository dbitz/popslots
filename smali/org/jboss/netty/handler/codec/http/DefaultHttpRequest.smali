.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;
.super Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;
.source "DefaultHttpRequest.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpRequest;


# instance fields
.field private method:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpVersion"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->setMethod(Lorg/jboss/netty/handler/codec/http/HttpMethod;)V

    .line 43
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->setUri(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->method:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Lorg/jboss/netty/handler/codec/http/HttpMethod;)V
    .locals 2
    .param p1, "method"    # Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->method:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 55
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "(chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->isChunked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
