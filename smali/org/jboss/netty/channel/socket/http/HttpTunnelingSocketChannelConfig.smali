.class public final Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;
.super Ljava/lang/Object;
.source "HttpTunnelingSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

.field private volatile enableSslSessionCreation:Z

.field private volatile enabledSslCipherSuites:[Ljava/lang/String;

.field private volatile enabledSslProtocols:[Ljava/lang/String;

.field private volatile serverName:Ljava/lang/String;

.field private volatile serverPath:Ljava/lang/String;

.field private volatile sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;)V
    .locals 1
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, "/netty-tunnel"

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    .line 79
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    .line 80
    return-void
.end method


# virtual methods
.method public getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public getEnabledSslCipherSuites()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    .line 141
    .local v0, "suites":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getEnabledSslProtocols()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    .line 169
    .local v0, "protocols":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getTrafficClass()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isEnableSslSessionCreation()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isKeepAlive()Z

    move-result v0

    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isReuseAddress()Z

    move-result v0

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .locals 1
    .param p1, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .prologue
    .line 314
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 315
    return-void
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 1
    .param p1, "connectTimeoutMillis"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setConnectTimeoutMillis(I)V

    .line 319
    return-void
.end method

.method public setEnableSslSessionCreation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    .line 207
    return-void
.end method

.method public setEnabledSslCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setEnabledSslProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "keepAlive"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setKeepAlive(Z)V

    .line 269
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 220
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "serverName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setServerName(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    const-string/jumbo v1, "serverPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setServerPath(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v1, "sslContext"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    check-cast p2, Ljavax/net/ssl/SSLContext;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    goto :goto_0

    .line 226
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v1, "enabledSslCipherSuites"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnabledSslCipherSuites([Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_4
    const-string/jumbo v1, "enabledSslProtocols"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnabledSslProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_5
    const-string/jumbo v1, "enableSslSessionCreation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnableSslSessionCreation(Z)V

    goto :goto_0

    .line 233
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setPerformancePreferences(III)V

    .line 274
    return-void
.end method

.method public setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
    .locals 1
    .param p1, "pipelineFactory"    # Lorg/jboss/netty/channel/ChannelPipelineFactory;

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 323
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setReceiveBufferSize(I)V

    .line 278
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setReuseAddress(Z)V

    .line 282
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .param p1, "sendBufferSize"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setSendBufferSize(I)V

    .line 287
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setServerPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverPath"    # Ljava/lang/String;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serverPath"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSoLinger(I)V
    .locals 1
    .param p1, "soLinger"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setSoLinger(I)V

    .line 291
    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 131
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setTcpNoDelay(Z)V

    .line 295
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "trafficClass"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setTrafficClass(I)V

    .line 299
    return-void
.end method
