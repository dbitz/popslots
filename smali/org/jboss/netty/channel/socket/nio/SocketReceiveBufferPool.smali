.class final Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;
.super Ljava/lang/Object;
.source "SocketReceiveBufferPool.java"


# static fields
.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private final pool:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->pool:[Ljava/lang/ref/SoftReference;

    .line 35
    return-void
.end method

.method private static final normalizeCapacity(I)I
    .locals 3
    .param p0, "capacity"    # I

    .prologue
    .line 95
    ushr-int/lit8 v0, p0, 0xa

    .line 96
    .local v0, "q":I
    and-int/lit16 v1, p0, 0x3ff

    .line 97
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 100
    :cond_0
    shl-int/lit8 v2, v0, 0xa

    return v2
.end method


# virtual methods
.method final acquire(I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->pool:[Ljava/lang/ref/SoftReference;

    .line 39
    .local v2, "pool":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_3

    .line 40
    aget-object v3, v2, v1

    .line 41
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    if-nez v3, :cond_1

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 46
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_2

    .line 47
    aput-object v5, v2, v1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, p1, :cond_0

    .line 55
    aput-object v5, v2, v1

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :goto_2
    return-object v0

    .line 61
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->normalizeCapacity(I)I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2
.end method

.method final release(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v6, 0x8

    .line 67
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->pool:[Ljava/lang/ref/SoftReference;

    .line 68
    .local v2, "pool":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 69
    aget-object v4, v2, v1

    .line 70
    .local v4, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 71
    :cond_0
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v1

    .line 91
    .end local v4    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_1
    :goto_1
    return-void

    .line 68
    .restart local v4    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 78
    .local v0, "capacity":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    .line 79
    aget-object v4, v2, v1

    .line 80
    .restart local v4    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 81
    .local v3, "pooled":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_5

    .line 82
    const/4 v5, 0x0

    aput-object v5, v2, v1

    .line 78
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v5, v0, :cond_4

    .line 87
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v1

    goto :goto_1
.end method
