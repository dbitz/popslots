.class public Lorg/jboss/netty/handler/ssl/SslBufferPool;
.super Ljava/lang/Object;
.source "SslBufferPool.java"


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x1146400

.field private static final MAX_PACKET_SIZE:I = 0x4519


# instance fields
.field private index:I

.field private final maxBufferCount:I

.field private final pool:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x1146400

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-gtz p1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxPoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    div-int/lit16 v0, p1, 0x4519

    .line 70
    .local v0, "maxBufferCount":I
    rem-int/lit16 v1, p1, 0x4519

    if-eqz v1, :cond_1

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_1
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    .line 75
    iput v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    .line 76
    return-void
.end method


# virtual methods
.method declared-synchronized acquire()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    if-nez v0, :cond_0

    .line 99
    const/16 v0, 0x4519

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    mul-int/lit16 v0, v0, 0x4519

    return v0
.end method

.method public declared-synchronized getUnacquiredPoolSize()I
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit16 v0, v0, 0x4519

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
