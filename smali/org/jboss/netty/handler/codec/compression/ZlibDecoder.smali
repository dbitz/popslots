.class public Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "ZlibDecoder.java"


# instance fields
.field private volatile finished:Z

.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 39
    new-instance v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "wrapper"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(Ljava/lang/Enum;)I

    move-result v0

    .line 63
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v3, "initialization failure"

    invoke-static {v1, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 66
    :cond_1
    monitor-exit v2

    .line 67
    return-void

    .line 66
    .end local v0    # "resultCode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "dictionary"    # [B

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 39
    new-instance v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dictionary"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v1, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(Ljava/lang/Enum;)I

    move-result v0

    .line 84
    .local v0, "resultCode":I
    if-eqz v0, :cond_2

    .line 85
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v3, "initialization failure"

    invoke-static {v1, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 92
    :cond_1
    :goto_0
    monitor-exit v2

    .line 93
    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v3, p1

    invoke-virtual {v1, p1, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateSetDictionary([BI)I

    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v3, "failed to set the dictionary"

    invoke-static {v1, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    .end local v0    # "resultCode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 105
    instance-of v7, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    if-eqz v7, :cond_1

    :cond_0
    move-object v2, p3

    .line 159
    :goto_0
    return-object v2

    .line 109
    :cond_1
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v7

    .line 112
    :try_start_0
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v1, v0

    .line 113
    .local v1, "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    new-array v3, v8, [B

    .line 114
    .local v3, "in":[B
    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 115
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v3, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 116
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 117
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v9, v3

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 120
    array-length v8, v3

    shl-int/lit8 v8, v8, 0x1

    new-array v4, v8, [B

    .line 121
    .local v4, "out":[B
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    array-length v9, v4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v10

    invoke-interface {v10}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v10

    invoke-interface {v10}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 124
    .local v2, "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 125
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 126
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v9, v4

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 130
    :cond_2
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflate(I)I

    move-result v5

    .line 131
    .local v5, "resultCode":I
    sparse-switch v5, :sswitch_data_0

    .line 144
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string/jumbo v9, "decompression failure"

    invoke-static {v8, v9, v5}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    .line 146
    :cond_3
    :goto_1
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v8, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-gtz v8, :cond_2

    .line 148
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    if-eqz v8, :cond_4

    .line 158
    :try_start_1
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v8, 0x0

    iput-object v8, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 159
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v8, 0x0

    iput-object v8, v6, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    monitor-exit v7

    goto :goto_0

    .line 161
    .end local v1    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "in":[B
    .end local v4    # "out":[B
    .end local v5    # "resultCode":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 135
    .restart local v1    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v2    # "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v3    # "in":[B
    .restart local v4    # "out":[B
    .restart local v5    # "resultCode":I
    :sswitch_0
    const/4 v8, 0x0

    :try_start_2
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {v2, v4, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 136
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 137
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v9, v4

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 138
    if-ne v5, v11, :cond_3

    .line 139
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    .line 140
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v8}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateEnd()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 158
    .end local v1    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "in":[B
    .end local v4    # "out":[B
    .end local v5    # "resultCode":I
    :catchall_1
    move-exception v6

    :try_start_3
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 159
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v6

    .line 158
    .restart local v1    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v2    # "decompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v3    # "in":[B
    .restart local v4    # "out":[B
    .restart local v5    # "resultCode":I
    :cond_4
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 159
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v6

    goto/16 :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    return v0
.end method
