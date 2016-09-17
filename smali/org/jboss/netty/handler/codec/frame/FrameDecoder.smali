.class public abstract Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "FrameDecoder.java"


# instance fields
.field private cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final unfold:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    .line 189
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "unfold"    # Z

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 192
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    .line 193
    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "cumulation"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 282
    .local v1, "oldReaderIndex":I
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "frame":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 284
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 301
    .end local v0    # "frame":Ljava/lang/Object;
    .end local v1    # "oldReaderIndex":I
    :cond_1
    return-void

    .line 293
    .restart local v0    # "frame":Ljava/lang/Object;
    .restart local v1    # "oldReaderIndex":I
    :cond_2
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 294
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decode() method must read at least one byte if it returned a frame (caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_3
    invoke-direct {p0, p1, p4, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_0

    .line 344
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 346
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 331
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v0, v3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    .line 339
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 340
    .local v1, "partialFrame":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 341
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .end local v0    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "partialFrame":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v2
.end method

.method private cumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 349
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 350
    .local v0, "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_0

    .line 351
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 353
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 355
    :cond_0
    return-object v0
.end method

.method private unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 304
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    if-eqz v4, :cond_3

    .line 305
    instance-of v4, p3, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 306
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "result":Ljava/lang/Object;
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 307
    .local v3, "r":Ljava/lang/Object;
    invoke-static {p1, v3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Ljava/lang/Object;
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v4, p3, Ljava/lang/Iterable;

    if-eqz v4, :cond_1

    .line 310
    check-cast p3, Ljava/lang/Iterable;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 311
    .restart local v3    # "r":Ljava/lang/Object;
    invoke-static {p1, v3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 314
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Ljava/lang/Object;
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_1
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 319
    .end local p3    # "result":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 317
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_3
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 233
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 227
    return-void
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 239
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, "m":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_1

    .line 201
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 205
    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 206
    .local v1, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 211
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    .line 213
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 214
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-direct {p0, p1, v3, v0, v4}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-direct {p0, p1, v3, v1, v4}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    .line 217
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method
