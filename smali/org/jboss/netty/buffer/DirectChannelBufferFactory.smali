.class public Lorg/jboss/netty/buffer/DirectChannelBufferFactory;
.super Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;
.source "DirectChannelBufferFactory.java"


# static fields
.field private static final INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

.field private static final INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;


# instance fields
.field private final bigEndianLock:Ljava/lang/Object;

.field private final littleEndianLock:Ljava/lang/Object;

.field private preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private preallocatedBigEndianBufferPosition:I

.field private final preallocatedBufferCapacity:I

.field private preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private preallocatedLittleEndianBufferPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    .line 42
    new-instance v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "preallocatedBufferCapacity"    # I

    .prologue
    .line 82
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "defaultOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 91
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 3
    .param p1, "defaultOrder"    # Ljava/nio/ByteOrder;
    .param p2, "preallocatedBufferCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->bigEndianLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->littleEndianLock:Ljava/lang/Object;

    .line 64
    iput-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 66
    iput-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 101
    if-gtz p2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preallocatedBufferCapacity must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput p2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufferCapacity:I

    .line 107
    return-void
.end method

.method private allocateBigEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    .line 166
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->bigEndianLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_0

    .line 168
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufferCapacity:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 169
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 170
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBufferPosition:I

    .line 179
    :goto_0
    monitor-exit v2

    .line 180
    return-object v0

    .line 171
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBufferPosition:I

    sub-int/2addr v1, v3

    if-lt v1, p1, :cond_1

    .line 172
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBufferPosition:I

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 173
    .restart local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBufferPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBufferPosition:I

    goto :goto_0

    .line 179
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 175
    :cond_1
    :try_start_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufferCapacity:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 176
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 177
    .restart local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBigEndianBufferPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private allocateLittleEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    .line 185
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->littleEndianLock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_0

    .line 187
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufferCapacity:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 188
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 189
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBufferPosition:I

    .line 198
    :goto_0
    monitor-exit v2

    .line 199
    return-object v0

    .line 190
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBufferPosition:I

    sub-int/2addr v1, v3

    if-lt v1, p1, :cond_1

    .line 191
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBufferPosition:I

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 192
    .restart local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBufferPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBufferPosition:I

    goto :goto_0

    .line 198
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 194
    :cond_1
    :try_start_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufferCapacity:I

    invoke-static {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 195
    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 196
    .restart local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLittleEndianBufferPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 2
    .param p0, "defaultEndianness"    # Ljava/nio/ByteOrder;

    .prologue
    .line 50
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    .line 51
    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    .line 53
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    .line 53
    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    goto :goto_0

    .line 54
    :cond_1
    if-nez p0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "defaultEndianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-static {p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 158
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 159
    .local v1, "pos":I
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .param p2, "capacity"    # I

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "order"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    if-gez p2, :cond_1

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    if-nez p2, :cond_2

    .line 117
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 130
    :goto_0
    return-object v0

    .line 119
    :cond_2
    iget v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufferCapacity:I

    if-lt p2, v1, :cond_3

    .line 120
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v1, :cond_4

    .line 125
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->allocateBigEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 129
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_1
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    goto :goto_0

    .line 127
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_4
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->allocateLittleEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .restart local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_1
.end method

.method public getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "array"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    if-gez p3, :cond_1

    .line 138
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1
    if-nez p4, :cond_2

    .line 141
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 149
    :goto_0
    return-object v0

    .line 143
    :cond_2
    add-int v1, p3, p4

    array-length v2, p2

    if-le v1, v2, :cond_3

    .line 144
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_3
    invoke-virtual {p0, p1, p4}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 148
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    goto :goto_0
.end method
