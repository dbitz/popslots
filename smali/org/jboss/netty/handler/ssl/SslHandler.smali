.class public Lorg/jboss/netty/handler/ssl/SslHandler;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "SslHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/ssl/SslHandler$3;,
        Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;,
        Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private volatile enableRenegotiation:Z

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private volatile handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field final handshakeLock:Ljava/lang/Object;

.field private volatile handshaken:Z

.field private handshaking:Z

.field ignoreClosedChannelException:I

.field final ignoreClosedChannelExceptionLock:Ljava/lang/Object;

.field private final pendingEncryptedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

.field private final pendingUnencryptedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private final sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final startTls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    .line 148
    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 151
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 153
    const-string/jumbo v0, "^.*(?:connection.*reset|connection.*closed|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 197
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 245
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;

    .prologue
    .line 208
    sget-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .param p3, "startTls"    # Z

    .prologue
    .line 232
    sget-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .param p3, "startTls"    # Z
    .param p4, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    .line 188
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    .line 189
    new-instance v0, Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    .line 296
    if-nez p1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "engine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    if-nez p2, :cond_1

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "bufferPool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    if-nez p4, :cond_2

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "delegatedTaskExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    .line 306
    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    .line 307
    iput-object p4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    .line 308
    iput-boolean p3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    .line 309
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z

    .prologue
    .line 219
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 277
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    .line 278
    return-void
.end method

.method private closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 7
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1026
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 1043
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 1032
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1033
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 1035
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    .line 1036
    .local v6, "closeNotifyFuture":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v0, Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v6, v0}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0

    .line 1042
    .end local v6    # "closeNotifyFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method private flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 760
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    :goto_0
    return-void

    .line 766
    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .local v0, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v0, :cond_1

    .line 767
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 770
    .end local v0    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v1

    .restart local v0    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .locals 2

    .prologue
    .line 164
    const-class v1, Lorg/jboss/netty/handler/ssl/SslHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    .line 167
    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 3
    .param p1, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .prologue
    .line 935
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_0

    .line 946
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    .line 962
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    .line 965
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string/jumbo v2, "renegotiation attempted by peer; closing the connection"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 971
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method

.method private offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 3
    .param p1, "encryptedWrite"    # Lorg/jboss/netty/channel/MessageEvent;

    .prologue
    .line 746
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v0

    .line 748
    .local v0, "locked":Z
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    if-eqz v0, :cond_0

    .line 751
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    .line 754
    :cond_0
    return-void

    .line 750
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 751
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_1
    throw v1
.end method

.method private runDelegatedTasks()V
    .locals 3

    .prologue
    .line 978
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 979
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 980
    .local v0, "task":Ljava/lang/Runnable;
    monitor-exit v2

    .line 982
    if-nez v0, :cond_0

    .line 994
    return-void

    .line 980
    .end local v0    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 986
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler$2;

    invoke-direct {v2, p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler$2;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "cause"    # Ljavax/net/ssl/SSLException;

    .prologue
    .line 1010
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v0, :cond_0

    .line 1012
    monitor-exit v1

    .line 1022
    :goto_0
    return-void

    .line 1014
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    .line 1017
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_1

    .line 1018
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 1020
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 997
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 998
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    .line 1001
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_0

    .line 1002
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 1004
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 1007
    return-void

    .line 1004
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 11
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-interface/range {p3 .. p5}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 853
    .local v3, "inNetBuf":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v7}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 856
    .local v5, "outAppBuf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 860
    .local v4, "needsWrap":Z
    :goto_0
    :try_start_0
    iget-object v8, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 861
    :try_start_1
    iget-boolean v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v7

    if-nez v7, :cond_0

    .line 864
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    :cond_0
    :try_start_2
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7, v3, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 873
    .local v6, "result":Ljavax/net/ssl/SSLEngineResult;
    :try_start_3
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    .line 874
    .local v2, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 875
    sget-object v7, Lorg/jboss/netty/handler/ssl/SslHandler$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 896
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown handshake status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 899
    .end local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_5
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    .line 928
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 930
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v8, v5}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    throw v7

    .line 869
    :catch_1
    move-exception v0

    .line 870
    .restart local v0    # "e":Ljavax/net/ssl/SSLException;
    :try_start_6
    throw v0

    .line 877
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v7

    if-nez v7, :cond_1

    .line 899
    :goto_1
    monitor-exit v8

    goto :goto_0

    .line 880
    :cond_1
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 902
    :goto_2
    if-eqz v4, :cond_2

    .line 911
    :try_start_7
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/NonReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    if-nez v7, :cond_2

    .line 913
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 917
    :cond_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 919
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 920
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 921
    .local v1, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v9

    invoke-interface {v1, v7, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 930
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v7, v5}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .end local v1    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_3
    return-object v1

    .line 883
    :pswitch_1
    :try_start_8
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    .line 886
    :pswitch_2
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_1

    .line 889
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    .line 890
    const/4 v4, 0x1

    .line 891
    monitor-exit v8

    goto :goto_2

    .line 893
    :pswitch_4
    const/4 v4, 0x1

    .line 894
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 924
    :cond_3
    const/4 v1, 0x0

    .line 930
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v7, v5}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 21
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 611
    const/4 v11, 0x0

    .line 613
    .local v11, "future":Lorg/jboss/netty/channel/ChannelFuture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 614
    .local v17, "outNetBuf":Ljava/nio/ByteBuffer;
    const/16 v20, 0x1

    .line 615
    .local v20, "success":Z
    const/4 v15, 0x0

    .line 616
    .local v15, "offered":Z
    const/4 v14, 0x0

    .line 623
    .local v14, "needsUnwrap":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 624
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    .line 625
    .local v18, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-nez v18, :cond_4

    .line 626
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 710
    if-eqz v15, :cond_0

    .line 711
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 714
    :cond_0
    if-nez v20, :cond_1

    .line 715
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SSLEngine already closed"

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 723
    .local v8, "cause":Ljava/lang/IllegalStateException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v3

    .line 724
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    move-object/from16 v18, v0

    .line 725
    if-nez v18, :cond_f

    .line 726
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 735
    .end local v8    # "cause":Ljava/lang/IllegalStateException;
    :cond_1
    if-eqz v14, :cond_2

    .line 736
    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 739
    :cond_2
    if-nez v11, :cond_3

    .line 740
    invoke-static/range {p2 .. p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v11

    .line 742
    :cond_3
    return-object v11

    .line 629
    :cond_4
    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    .line 630
    .local v16, "outAppBuf":Ljava/nio/ByteBuffer;
    if-nez v16, :cond_8

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 633
    new-instance v2, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v4, v5, v6}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V

    .line 638
    const/4 v15, 0x1

    .line 701
    :cond_5
    :goto_3
    monitor-exit v3

    goto :goto_0

    .end local v16    # "outAppBuf":Ljava/nio/ByteBuffer;
    .end local v18    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 703
    :catch_0
    move-exception v9

    .line 704
    .local v9, "e":Ljavax/net/ssl/SSLException;
    const/16 v20, 0x0

    .line 705
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    .line 706
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 708
    .end local v9    # "e":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 710
    if-eqz v15, :cond_6

    .line 711
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 714
    :cond_6
    if-nez v20, :cond_7

    .line 715
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SSLEngine already closed"

    invoke-direct {v8, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 723
    .restart local v8    # "cause":Ljava/lang/IllegalStateException;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v3

    .line 724
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    .line 725
    .restart local v18    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-nez v18, :cond_10

    .line 726
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 732
    .end local v8    # "cause":Ljava/lang/IllegalStateException;
    .end local v18    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_7
    throw v2

    .line 640
    .restart local v16    # "outAppBuf":Ljava/nio/ByteBuffer;
    .restart local v18    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_8
    const/16 v19, 0x0

    .line 642
    .local v19, "result":Ljavax/net/ssl/SSLEngineResult;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 643
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v19

    .line 644
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 646
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_9

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 651
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    if-lez v2, :cond_c

    .line 652
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 653
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v13

    .line 654
    .local v13, "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    invoke-interface {v13, v2, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 655
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 657
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 660
    invoke-static/range {p2 .. p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v11

    .line 665
    :goto_5
    new-instance v10, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v11, v13, v2}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 667
    .local v10, "encryptedWrite":Lorg/jboss/netty/channel/MessageEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 668
    const/4 v15, 0x1

    .line 669
    goto/16 :goto_3

    .line 644
    .end local v10    # "encryptedWrite":Lorg/jboss/netty/channel/MessageEvent;
    .end local v13    # "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 646
    :catchall_3
    move-exception v2

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_a

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_a
    throw v2

    .line 662
    .restart local v13    # "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_b
    move-object/from16 v0, v18

    iget-object v11, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_5

    .line 670
    .end local v13    # "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    .line 671
    .local v12, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 672
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 695
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown handshake status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :pswitch_0
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_5

    .line 677
    monitor-exit v3

    goto/16 :goto_1

    .line 680
    :pswitch_1
    const/4 v14, 0x1

    .line 681
    monitor-exit v3

    goto/16 :goto_1

    .line 683
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto/16 :goto_3

    .line 687
    :pswitch_3
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v2, :cond_d

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    .line 690
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v4, :cond_e

    .line 691
    const/16 v20, 0x0

    .line 693
    :cond_e
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 728
    .end local v12    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v16    # "outAppBuf":Ljava/nio/ByteBuffer;
    .end local v19    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v8    # "cause":Ljava/lang/IllegalStateException;
    :cond_f
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 730
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v8}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    .line 728
    :catchall_4
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v2

    :cond_10
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 730
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v3, v8}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_4

    .line 728
    .end local v18    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :catchall_5
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v2

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 775
    const/4 v7, 0x0

    .line 776
    .local v7, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 781
    .local v10, "outNetBuf":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v10}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11

    .line 783
    .local v11, "result":Ljavax/net/ssl/SSLEngineResult;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 785
    :try_start_2
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0

    if-lez v0, :cond_1

    .line 786
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 787
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    .line 788
    .local v9, "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-interface {v9, v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 789
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 791
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    .line 792
    new-instance v0, Lorg/jboss/netty/handler/ssl/SslHandler$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/ssl/SslHandler$1;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    invoke-interface {v7, v0}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 803
    invoke-static {p1, v7, v9}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 806
    .end local v9    # "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    .line 807
    .local v8, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0, v8}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 808
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 828
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected handshake status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 836
    .end local v8    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_0
    move-exception v6

    .line 837
    .local v6, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-direct {p0, p2, v6}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    .line 838
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 840
    .end local v6    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1, v10}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    throw v0

    .line 783
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 810
    .restart local v8    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    .line 811
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 832
    :cond_2
    :goto_0
    :pswitch_1
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0, v10}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 843
    if-nez v7, :cond_3

    .line 844
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    .line 847
    :cond_3
    return-object v7

    .line 814
    :pswitch_2
    :try_start_6
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_0

    .line 817
    :pswitch_3
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 821
    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 1079
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
    .line 1087
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
    .line 1074
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 1075
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
    .line 1083
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 455
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 459
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 464
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 465
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 466
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_1

    .line 468
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 459
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 469
    :catch_0
    move-exception v6

    .line 470
    .local v6, "ex":Ljavax/net/ssl/SSLException;
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v1, "Failed to clean up SSLEngine."

    invoke-interface {v0, v1, v6}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 464
    .end local v6    # "ex":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v7

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 465
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 466
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_2

    .line 468
    :try_start_4
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 471
    :cond_2
    :goto_1
    throw v7

    .line 469
    :catch_1
    move-exception v6

    .line 470
    .restart local v6    # "ex":Ljavax/net/ssl/SSLException;
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v1, "Failed to clean up SSLEngine."

    invoke-interface {v0, v1, v6}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    .prologue
    .line 368
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 369
    .local v1, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 371
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 372
    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 374
    :goto_0
    return-object v3

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljavax/net/ssl/SSLException;
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    goto :goto_0
.end method

.method public close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 11
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 517
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 605
    :goto_0
    return-object v0

    .line 521
    :cond_0
    const/4 v5, 0x0

    .line 525
    .local v5, "packetLength":I
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 534
    const/4 v10, 0x0

    .line 537
    .local v10, "tls":Z
    :goto_1
    if-eqz v10, :cond_1

    .line 539
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v8

    .line 540
    .local v8, "majorVersion":I
    const/4 v0, 0x3

    if-lt v8, v0, :cond_3

    const/16 v0, 0xa

    if-ge v8, v0, :cond_3

    .line 542
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x5

    .line 543
    const/4 v0, 0x5

    if-gt v5, v0, :cond_1

    .line 545
    const/4 v10, 0x0

    .line 553
    .end local v8    # "majorVersion":I
    :cond_1
    :goto_2
    if-nez v10, :cond_7

    .line 555
    const/4 v9, 0x1

    .line 556
    .local v9, "sslv2":Z
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v7, 0x2

    .line 558
    .local v7, "headerLength":I
    :goto_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v8

    .line 560
    .restart local v8    # "majorVersion":I
    const/4 v0, 0x2

    if-lt v8, v0, :cond_6

    const/16 v0, 0xa

    if-ge v8, v0, :cond_6

    .line 562
    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    .line 563
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x7fff

    add-int/lit8 v5, v0, 0x2

    .line 567
    :goto_4
    if-gt v5, v7, :cond_2

    .line 568
    const/4 v9, 0x0

    .line 574
    :cond_2
    :goto_5
    if-nez v9, :cond_7

    .line 576
    new-instance v6, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not an SSL/TLS record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 578
    .local v6, "e":Ljavax/net/ssl/SSLException;
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 579
    throw v6

    .line 530
    .end local v6    # "e":Ljavax/net/ssl/SSLException;
    .end local v7    # "headerLength":I
    .end local v8    # "majorVersion":I
    .end local v9    # "sslv2":Z
    .end local v10    # "tls":Z
    :pswitch_0
    const/4 v10, 0x1

    .line 531
    .restart local v10    # "tls":Z
    goto/16 :goto_1

    .line 549
    .restart local v8    # "majorVersion":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 556
    .end local v8    # "majorVersion":I
    .restart local v9    # "sslv2":Z
    :cond_4
    const/4 v7, 0x3

    goto :goto_3

    .line 565
    .restart local v7    # "headerLength":I
    .restart local v8    # "majorVersion":I
    :cond_5
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x3fff

    add-int/lit8 v5, v0, 0x3

    goto :goto_4

    .line 571
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 583
    .end local v7    # "headerLength":I
    .end local v8    # "majorVersion":I
    .end local v9    # "sslv2":Z
    :cond_7
    sget-boolean v0, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    if-gtz v5, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 585
    :cond_8
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_9

    .line 586
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 603
    :cond_9
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    .line 604
    .local v4, "packetOffset":I
    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 605
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto/16 :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 480
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 481
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 482
    instance-of v2, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v2, :cond_2

    .line 483
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 484
    :try_start_0
    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    if-lez v2, :cond_0

    .line 485
    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    .line 486
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v4, "Swallowing an exception raised while writing non-app data"

    invoke-interface {v2, v4, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    monitor-exit v3

    .line 511
    :goto_0
    return-void

    .line 491
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 492
    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "Swallowing a \'connection reset by peer / broken pipe\' error occurred while writing \'closure_notify\'"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 7
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 402
    instance-of v4, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v4, :cond_0

    move-object v0, p2

    .line 403
    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 404
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v4, Lorg/jboss/netty/handler/ssl/SslHandler$3;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 414
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_0
    instance-of v4, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v4, :cond_2

    .line 415
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 447
    :goto_0
    return-void

    .line 408
    .restart local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 409
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    goto :goto_0

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_2
    move-object v0, p2

    .line 419
    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 420
    .local v0, "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v4, :cond_3

    .line 421
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 427
    :cond_3
    iget-boolean v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 428
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    .line 433
    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 436
    .local v1, "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 437
    new-instance v3, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    invoke-interface {v1, v5, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    .line 441
    .local v3, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :goto_1
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v5

    .line 442
    :try_start_0
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 443
    .local v2, "offered":Z
    sget-boolean v4, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 444
    .end local v2    # "offered":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 439
    .end local v3    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_5
    new-instance v3, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    .restart local v3    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    goto :goto_1

    .line 444
    .restart local v2    # "offered":Z
    :cond_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handshake()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 6

    .prologue
    .line 325
    iget-boolean v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "renegotiation disabled"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 330
    .local v1, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 332
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 333
    :try_start_0
    iget-boolean v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v4, :cond_1

    .line 334
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    monitor-exit v5

    .line 352
    :goto_0
    return-object v3

    .line 336
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 339
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 340
    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .local v3, "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :try_start_3
    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljavax/net/ssl/SSLException;
    invoke-interface {v3, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 341
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    .end local v3    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :catch_1
    move-exception v2

    .line 342
    .restart local v2    # "e":Ljavax/net/ssl/SSLException;
    :try_start_4
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .restart local v3    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_1

    .line 345
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    .end local v3    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public isEnableRenegotiation()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    return v0
.end method

.method public setEnableRenegotiation(Z)V
    .locals 0
    .param p1, "enableRenegotiation"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    .line 398
    return-void
.end method
