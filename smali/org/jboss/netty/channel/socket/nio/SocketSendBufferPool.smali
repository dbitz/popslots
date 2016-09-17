.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    }
.end annotation


# static fields
.field private static final ALIGN_MASK:I = 0xf

.field private static final ALIGN_SHIFT:I = 0x4

.field private static final DEFAULT_PREALLOCATION_SIZE:I = 0x10000

.field private static final EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# instance fields
.field current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

.field poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 46
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    const/high16 v1, 0x10000

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 50
    return-void
.end method

.method private final acquire(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 10
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 71
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    .line 72
    .local v6, "size":I
    if-nez v6, :cond_0

    .line 73
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 113
    :goto_0
    return-object v2

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    const/high16 v9, 0x10000

    if-le v8, v9, :cond_2

    .line 80
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 84
    .local v1, "current":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget-object v0, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    .line 85
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 88
    .local v5, "remaining":I
    if-ge v6, v5, :cond_3

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int v4, v8, v6

    .line 90
    .local v4, "nextPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 91
    .local v7, "slice":Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->align(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    iget v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    .line 94
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    invoke-direct {v2, p0, v1, v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    .line 109
    .end local v4    # "nextPos":I
    .end local v7    # "slice":Ljava/nio/ByteBuffer;
    .local v2, "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    :goto_1
    iget-object v3, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 110
    .local v3, "dstbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 111
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    invoke-interface {p1, v8, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 112
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    .line 95
    .end local v2    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    .end local v3    # "dstbuf":Ljava/nio/ByteBuffer;
    :cond_3
    if-le v6, v5, :cond_4

    .line 96
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 97
    iget-object v0, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 99
    .restart local v7    # "slice":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->align(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 101
    iget v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    .line 102
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    invoke-direct {v2, p0, v1, v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    .line 103
    .restart local v2    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    goto :goto_1

    .line 104
    .end local v2    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    .end local v7    # "slice":Ljava/nio/ByteBuffer;
    :cond_4
    iget v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    .line 105
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v8

    iput-object v8, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 106
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    iget-object v8, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {v2, p0, v1, v8}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    .restart local v2    # "dst":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
    goto :goto_1
.end method

.method private final acquire(Lorg/jboss/netty/channel/FileRegion;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 4
    .param p1, "src"    # Lorg/jboss/netty/channel/FileRegion;

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/FileRegion;)V

    goto :goto_0
.end method

.method private static final align(I)I
    .locals 3
    .param p0, "pos"    # I

    .prologue
    .line 146
    ushr-int/lit8 v0, p0, 0x4

    .line 147
    .local v0, "q":I
    and-int/lit8 v1, p0, 0xf

    .line 148
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 151
    :cond_0
    shl-int/lit8 v2, v0, 0x4

    return v2
.end method

.method private final getPreallocation()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 118
    .local v0, "current":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    if-nez v1, :cond_0

    .line 119
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 123
    .end local v0    # "current":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    :goto_0
    return-object v0

    .restart local v0    # "current":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v0

    goto :goto_0
.end method

.method private final getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 128
    .local v1, "ref":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;
    if-eqz v1, :cond_2

    .line 130
    :cond_0
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 131
    .local v0, "p":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;->next:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 142
    .end local v0    # "p":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    :goto_0
    return-object v0

    .line 137
    .restart local v0    # "p":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    :cond_1
    if-nez v1, :cond_0

    .line 139
    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 142
    .end local v0    # "p":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    :cond_2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    const/high16 v2, 0x10000

    invoke-direct {v0, p0, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V

    goto :goto_0
.end method


# virtual methods
.method final acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 55
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lorg/jboss/netty/channel/FileRegion;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Lorg/jboss/netty/channel/FileRegion;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v0

    goto :goto_0

    .line 59
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
