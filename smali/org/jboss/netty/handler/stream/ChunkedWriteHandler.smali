.class public Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
.super Ljava/lang/Object;
.source "ChunkedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$2;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private currentEvent:Lorg/jboss/netty/channel/MessageEvent;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->$assertionsDisabled:Z

    .line 79
    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    .line 93
    return-void
.end method

.method static closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    .locals 3
    .param p0, "chunks"    # Lorg/jboss/netty/handler/stream/ChunkedInput;

    .prologue
    .line 266
    :try_start_0
    invoke-interface {p0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v2, "Failed to close a chunked input."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized discard(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 149
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 153
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 174
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 158
    .local v0, "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 160
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "m":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v2, :cond_2

    .line 162
    check-cast v1, Lorg/jboss/netty/handler/stream/ChunkedInput;

    .end local v1    # "m":Ljava/lang/Object;
    invoke-static {v1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    .line 165
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 170
    .restart local v0    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v1    # "m":Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized flush(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 11
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 178
    .local v1, "channel":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v10

    if-nez v10, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 182
    :cond_0
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 183
    iget-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v10, :cond_1

    .line 184
    iget-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jboss/netty/channel/MessageEvent;

    iput-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 187
    :cond_1
    iget-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_3

    .line 262
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_3
    :try_start_1
    iget-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v10}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v10

    invoke-interface {v10}, Lorg/jboss/netty/channel/ChannelFuture;->isDone()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 194
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 257
    :cond_4
    :goto_1
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v10

    if-nez v10, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v1    # "channel":Lorg/jboss/netty/channel/Channel;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 196
    .restart local v1    # "channel":Lorg/jboss/netty/channel/Channel;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v10}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v7

    .line 197
    .local v7, "m":Ljava/lang/Object;
    instance-of v10, v7, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v10, :cond_8

    .line 198
    move-object v0, v7

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    move-object v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .local v3, "chunks":Lorg/jboss/netty/handler/stream/ChunkedInput;
    :try_start_3
    invoke-interface {v3}, Lorg/jboss/netty/handler/stream/ChunkedInput;->nextChunk()Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "chunk":Ljava/lang/Object;
    if-nez v2, :cond_6

    .line 205
    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 206
    .local v2, "chunk":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v6, 0x1

    .line 210
    .end local v2    # "chunk":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v6, "later":Z
    :goto_2
    invoke-interface {v3}, Lorg/jboss/netty/handler/stream/ChunkedInput;->isEndOfInput()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    .line 223
    .local v5, "endOfInput":Z
    :try_start_4
    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 224
    .local v4, "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v5, :cond_7

    .line 225
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 226
    invoke-static {v3}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    .line 227
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v9

    .line 241
    .local v9, "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_3
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-static {p1, v9, v2, v10}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 245
    if-eqz v6, :cond_4

    goto :goto_0

    .line 208
    .end local v4    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    .end local v5    # "endOfInput":Z
    .end local v6    # "later":Z
    .end local v9    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    .local v2, "chunk":Ljava/lang/Object;
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "later":Z
    goto :goto_2

    .line 211
    .end local v2    # "chunk":Ljava/lang/Object;
    .end local v6    # "later":Z
    :catch_0
    move-exception v8

    .line 212
    .local v8, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 213
    .restart local v4    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 215
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 216
    invoke-static {p1, v8}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 218
    invoke-static {v3}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    goto :goto_0

    .line 229
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v5    # "endOfInput":Z
    .restart local v6    # "later":Z
    :cond_7
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v9

    .line 230
    .restart local v9    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v10, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;

    invoke-direct {v10, p0, v4}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/channel/MessageEvent;)V

    invoke-interface {v9, v10}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_3

    .line 251
    .end local v3    # "chunks":Lorg/jboss/netty/handler/stream/ChunkedInput;
    .end local v4    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    .end local v5    # "endOfInput":Z
    .end local v6    # "later":Z
    .end local v9    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_8
    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 252
    .restart local v4    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 253
    invoke-interface {p1, v4}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    instance-of v1, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v1, :cond_1

    .line 114
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 125
    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    .end local p2    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    .local v0, "offered":Z
    sget-boolean v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 121
    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 123
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 130
    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 131
    .local v0, "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 145
    return-void

    .line 134
    .restart local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 137
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resumeTransfer()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 100
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "Unexpected exception while sending chunks."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
