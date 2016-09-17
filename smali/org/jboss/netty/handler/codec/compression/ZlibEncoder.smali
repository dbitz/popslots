.class public Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "ZlibEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$2;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[B


# instance fields
.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->EMPTY_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "compressionLevel"    # I

    .prologue
    .line 75
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 4
    .param p1, "compressionLevel"    # I
    .param p2, "dictionary"    # [B

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 49
    new-instance v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    if-ltz p1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "compressionLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (expected: 0-9)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    if-nez p2, :cond_2

    .line 150
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dictionary"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v1, p1, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(ILjava/lang/Enum;)I

    move-result v0

    .line 156
    .local v0, "resultCode":I
    if-eqz v0, :cond_4

    .line 157
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v3, "initialization failure"

    invoke-static {v1, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 164
    :cond_3
    :goto_0
    monitor-exit v2

    .line 165
    return-void

    .line 159
    :cond_4
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v3, p2

    invoke-virtual {v1, p2, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateSetDictionary([BI)I

    move-result v0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v3, "failed to set the dictionary"

    invoke-static {v1, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 164
    .end local v0    # "resultCode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 1
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    .prologue
    .line 85
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 4
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 49
    new-instance v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    if-ltz p2, :cond_0

    const/16 v1, 0x9

    if-le p2, v1, :cond_1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "compressionLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (expected: 0-9)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    if-nez p1, :cond_2

    .line 105
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "wrapper"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(ILjava/lang/Enum;)I

    move-result v0

    .line 110
    .local v0, "resultCode":I
    if-eqz v0, :cond_3

    .line 111
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v3, "initialization failure"

    invoke-static {v1, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 113
    :cond_3
    monitor-exit v2

    .line 114
    return-void

    .line 113
    .end local v0    # "resultCode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "dictionary"    # [B

    .prologue
    .line 127
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(I[B)V

    .line 128
    return-void
.end method

.method private finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 247
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 248
    if-eqz p2, :cond_0

    .line 249
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 251
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 312
    :cond_1
    :goto_0
    return-object v1

    .line 256
    :cond_2
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v5

    .line 259
    :try_start_0
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v6, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->EMPTY_ARRAY:[B

    iput-object v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 260
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x0

    iput v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 261
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x0

    iput v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 264
    const/16 v4, 0x20

    new-array v2, v4, [B

    .line 265
    .local v2, "out":[B
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v2, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 266
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x0

    iput v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 267
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v6, v2

    iput v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 270
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v3

    .line 271
    .local v3, "resultCode":I
    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_4

    .line 272
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v7, "compression failure"

    invoke-static {v6, v7, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->exception(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)Lorg/jboss/netty/handler/codec/compression/CompressionException;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 275
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const/4 v0, 0x0

    .line 289
    .local v0, "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateEnd()I

    .line 295
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x0

    iput-object v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 296
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v6, 0x0

    iput-object v6, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 298
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    if-eqz v0, :cond_3

    .line 301
    invoke-static {p1, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 304
    :cond_3
    if-eqz p2, :cond_1

    .line 305
    new-instance v4, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;

    invoke-direct {v4, p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {v1, v4}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0

    .line 276
    .end local v0    # "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-eqz v4, :cond_5

    .line 277
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 278
    .restart local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v7, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {v4, v2, v6, v7}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .restart local v0    # "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1

    .line 285
    .end local v0    # "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_5
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 286
    .restart local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1

    .line 289
    .end local v0    # "footer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v2    # "out":[B
    .end local v3    # "resultCode":I
    :catchall_0
    move-exception v4

    :try_start_3
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateEnd()I

    .line 295
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 296
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v4

    .line 298
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 317
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 325
    return-void
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 169
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    move-object/from16 v0, p3

    instance-of v7, v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object/from16 v4, p3

    .line 224
    :goto_0
    return-object v4

    .line 186
    :cond_1
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v8

    .line 189
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v6, v0

    .line 190
    .local v6, "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    new-array v2, v7, [B

    .line 191
    .local v2, "in":[B
    invoke-interface {v6, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 192
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v2, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 193
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput v9, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 194
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v9, v2

    iput v9, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 197
    array-length v7, v2

    int-to-double v10, v7

    const-wide v12, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    add-int/lit8 v7, v7, 0xc

    new-array v3, v7, [B

    .line 198
    .local v3, "out":[B
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 199
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput v9, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 200
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v9, v3

    iput v9, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 203
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v5

    .line 204
    .local v5, "resultCode":I
    if-eqz v5, :cond_2

    .line 205
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v9, "compression failure"

    invoke-static {v7, v9, v5}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 208
    :cond_2
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v7, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-eqz v7, :cond_3

    .line 209
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v11, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {v7, v9, v3, v10, v11}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 219
    .local v4, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_1
    :try_start_1
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput-object v9, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 220
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput-object v9, v7, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 222
    monitor-exit v8

    goto :goto_0

    .end local v2    # "in":[B
    .end local v3    # "out":[B
    .end local v4    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "resultCode":I
    .end local v6    # "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 212
    .restart local v2    # "in":[B
    .restart local v3    # "out":[B
    .restart local v5    # "resultCode":I
    .restart local v6    # "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_3
    :try_start_2
    sget-object v4, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v4    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1

    .line 219
    .end local v2    # "in":[B
    .end local v3    # "out":[B
    .end local v4    # "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "resultCode":I
    .end local v6    # "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_1
    move-exception v7

    :try_start_3
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 220
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 231
    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 232
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 243
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 244
    :goto_0
    return-void

    .line 236
    .restart local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
