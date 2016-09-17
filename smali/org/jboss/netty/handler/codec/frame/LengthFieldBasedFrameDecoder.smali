.class public Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "LengthFieldBasedFrameDecoder.java"


# instance fields
.field private bytesToDiscard:J

.field private discardingTooLongFrame:Z

.field private final initialBytesToStrip:I

.field private final lengthAdjustment:I

.field private final lengthFieldEndOffset:I

.field private final lengthFieldLength:I

.field private final lengthFieldOffset:I

.field private final maxFrameLength:I

.field private tooLongFrameLength:J


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 218
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 219
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I
    .param p4, "lengthAdjustment"    # I
    .param p5, "initialBytesToStrip"    # I

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 241
    if-gtz p1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxFrameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    if-gez p2, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lengthFieldOffset must be a non-negative integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    if-gez p5, :cond_2

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialBytesToStrip must be a non-negative integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lengthFieldLength must be either 1, 2, 3, 4, or 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_3
    sub-int v0, p1, p3

    if-le p2, v0, :cond_4

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxFrameLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "must be equal to or greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lengthFieldOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lengthFieldLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    .line 276
    iput p2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    .line 277
    iput p3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    .line 278
    iput p4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    .line 279
    add-int v0, p2, p3

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    .line 280
    iput p5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    .line 281
    return-void
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .locals 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "frameLength"    # J

    .prologue
    .line 400
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 401
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjusted frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - discarded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 413
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjusted frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - discarding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 17
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v14, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 289
    .local v4, "bytesToDiscard":J
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v10, v14

    .line 290
    .local v10, "localBytesToDiscard":I
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 291
    int-to-long v14, v10

    sub-long/2addr v4, v14

    .line 292
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 293
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-nez v14, :cond_0

    .line 298
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 299
    .local v12, "tooLongFrameLength":J
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 304
    .end local v12    # "tooLongFrameLength":J
    :cond_0
    const/4 v6, 0x0

    .line 375
    .end local v4    # "bytesToDiscard":J
    .end local v10    # "localBytesToDiscard":I
    :goto_0
    return-object v6

    .line 307
    :cond_1
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    if-ge v14, v15, :cond_2

    .line 308
    const/4 v6, 0x0

    goto :goto_0

    .line 311
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    add-int v3, v14, v15

    .line 313
    .local v3, "actualLengthFieldOffset":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    packed-switch v14, :pswitch_data_0

    .line 330
    :pswitch_0
    new-instance v14, Ljava/lang/Error;

    const-string/jumbo v15, "should not reach here"

    invoke-direct {v14, v15}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v14

    .line 315
    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v14

    int-to-long v8, v14

    .line 333
    .local v8, "frameLength":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gez v14, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 335
    new-instance v14, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "negative pre-adjustment length field: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 318
    .end local v8    # "frameLength":J
    :pswitch_2
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v14

    int-to-long v8, v14

    .line 319
    .restart local v8    # "frameLength":J
    goto :goto_1

    .line 321
    .end local v8    # "frameLength":J
    :pswitch_3
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v14

    int-to-long v8, v14

    .line 322
    .restart local v8    # "frameLength":J
    goto :goto_1

    .line 324
    .end local v8    # "frameLength":J
    :pswitch_4
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v8

    .line 325
    .restart local v8    # "frameLength":J
    goto :goto_1

    .line 327
    .end local v8    # "frameLength":J
    :pswitch_5
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v8

    .line 328
    .restart local v8    # "frameLength":J
    goto :goto_1

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    add-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v8, v14

    .line 340
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-gez v14, :cond_4

    .line 341
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 342
    new-instance v14, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Adjusted frame length ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ") is less "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "than lengthFieldEndOffset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 347
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-lez v14, :cond_5

    .line 349
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 350
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 351
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v14

    int-to-long v14, v14

    sub-long v14, v8, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 352
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 353
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 357
    :cond_5
    long-to-int v7, v8

    .line 358
    .local v7, "frameLengthInt":I
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v14

    if-ge v14, v7, :cond_6

    .line 359
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 362
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    if-le v14, v7, :cond_7

    .line 363
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 364
    new-instance v14, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Adjusted frame length ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ") is less "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "than initialBytesToStrip: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 368
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 371
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v11

    .line 372
    .local v11, "readerIndex":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    sub-int v2, v7, v14

    .line 373
    .local v2, "actualFrameLength":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v11, v2}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 374
    .local v6, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    add-int v14, v11, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 394
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 395
    .local v0, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 396
    return-object v0
.end method
