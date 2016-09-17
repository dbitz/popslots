.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;
.super Ljava/lang/Object;
.source "DefaultHttpMessage.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpMessage;


# instance fields
.field private chunked:Z

.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

.field private version:Lorg/jboss/netty/handler/codec/http/HttpVersion;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .locals 1
    .param p1, "version"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    .line 38
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 45
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 46
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method appendHeaders(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->clearHeaders()V

    .line 96
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentLength(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->version:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->chunked:Z

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public isKeepAlive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setChunked(Z)V
    .locals 1
    .param p1, "chunked"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->chunked:Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 102
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "non-empty content disallowed if this.chunked == true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 107
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 58
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .locals 2
    .param p1, "version"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->version:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v1, "(version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v1, ", keepAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v1, ", chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isChunked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
