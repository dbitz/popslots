.class public abstract Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "ReplayingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;"
    }
.end annotation


# instance fields
.field private checkpoint:I

.field private final cumulation:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

.field private state:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final unfold:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    .line 311
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "initialState":Ljava/lang/Enum;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    .line 322
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Enum;Z)V
    .locals 1
    .param p2, "unfold"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "initialState":Ljava/lang/Enum;, "TT;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 299
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    .line 325
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 326
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfold:Z

    .line 327
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "unfold"    # Z

    .prologue
    .line 314
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    .line 315
    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    .locals 8
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
    .line 466
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    .line 468
    .local v1, "oldReaderIndex":I
    const/4 v4, 0x0

    .line 469
    .local v4, "result":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 471
    .local v2, "oldState":Ljava/lang/Enum;, "TT;"
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, v5, v6}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v4

    .line 472
    if-nez v4, :cond_1

    .line 473
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    if-ne v1, v5, :cond_0

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    if-ne v2, v5, :cond_0

    .line 474
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "null cannot be returned if no data is consumed and state didn\'t change."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 484
    .local v3, "replay":Lorg/jboss/netty/handler/codec/replay/ReplayError;
    iget v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    .line 485
    .local v0, "checkpoint":I
    if-ltz v0, :cond_1

    .line 486
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 493
    .end local v0    # "checkpoint":I
    .end local v3    # "replay":Lorg/jboss/netty/handler/codec/replay/ReplayError;
    :cond_1
    if-nez v4, :cond_3

    .line 509
    .end local v1    # "oldReaderIndex":I
    .end local v2    # "oldState":Ljava/lang/Enum;, "TT;"
    :cond_2
    return-void

    .line 499
    .restart local v1    # "oldReaderIndex":I
    .restart local v2    # "oldState":Ljava/lang/Enum;, "TT;"
    :cond_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    if-ne v2, v5, :cond_4

    .line 500
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "decode() method must consume at least one byte if it returned a decoded message (caused by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 507
    :cond_4
    invoke-direct {p0, p1, v4, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfoldAndfireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_0
.end method

.method private cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_0

    .line 555
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 557
    .end local v0    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_0
    return-void

    .line 538
    .restart local v0    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminate()V

    .line 540
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v0, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    .line 548
    :cond_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v1

    .line 549
    .local v1, "partiallyDecoded":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 550
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfoldAndfireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 552
    .end local v0    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "partiallyDecoded":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 555
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v2
.end method

.method private cumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 560
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 561
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_0

    .line 562
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    .line 563
    .local v1, "factory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;

    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 564
    .restart local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    new-instance v2, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    .line 570
    .end local v1    # "factory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    :cond_0
    :goto_0
    return-object v0

    .line 567
    .restart local v1    # "factory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .restart local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_0
.end method

.method private unfoldAndfireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 513
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfold:Z

    if-eqz v4, :cond_3

    .line 514
    instance-of v4, p2, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 515
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "result":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 516
    .local v3, "r":Ljava/lang/Object;
    invoke-static {p1, v3, p3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Ljava/lang/Object;
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v4, p2, Ljava/lang/Iterable;

    if-eqz v4, :cond_1

    .line 519
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 520
    .restart local v3    # "r":Ljava/lang/Object;
    invoke-static {p1, v3, p3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 523
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Ljava/lang/Object;
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 528
    .end local p2    # "result":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 526
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2
.end method


# virtual methods
.method protected actualReadableBytes()I
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

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
    .line 456
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 457
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
    .line 450
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 451
    return-void
.end method

.method protected checkpoint()V
    .locals 2

    .prologue
    .line 333
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 334
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    goto :goto_0
.end method

.method protected checkpoint(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "state":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint()V

    .line 347
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->setState(Ljava/lang/Enum;)Ljava/lang/Enum;

    .line 348
    return-void
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p4, "state":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

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
    .line 462
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 463
    return-void
.end method

.method protected getState()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    return-object v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    .prologue
    .line 384
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 385
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_0

    .line 386
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 388
    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    return-object v0
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
    .line 430
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 431
    .local v2, "m":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_1

    .line 432
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 445
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 436
    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 437
    .local v1, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 442
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    .line 443
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 444
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-direct {p0, p1, v3, v0, v4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    goto :goto_0
.end method

.method protected setState(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "newState":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 364
    .local v0, "oldState":Ljava/lang/Enum;, "TT;"
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 365
    return-object v0
.end method
