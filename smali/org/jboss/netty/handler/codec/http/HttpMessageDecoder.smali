.class public abstract Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "HttpMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;,
        Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:J

.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private headerSize:I

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private final maxInitialLineLength:I

.field private message:Lorg/jboss/netty/handler/codec/http/HttpMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 148
    const/16 v0, 0x1000

    invoke-direct {p0, v0, v1, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;-><init>(III)V

    .line 149
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 3
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .prologue
    .line 157
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    .line 159
    if-gtz p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxInitialLineLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    if-gtz p2, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxHeaderSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    if-gez p3, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxChunkSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    .line 175
    iput p2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    .line 176
    iput p3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    .line 177
    return-void
.end method

.method private findEndOfString(Ljava/lang/String;)I
    .locals 2
    .param p1, "sb"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "result":I
    :goto_0
    if-lez v0, :cond_0

    .line 676
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    :cond_0
    return v0

    .line 675
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private findNonWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p1, "sb"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 655
    move v0, p2

    .local v0, "result":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    :cond_0
    return v0

    .line 655
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p1, "sb"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 665
    move v0, p2

    .local v0, "result":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    :cond_0
    return v0

    .line 665
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getChunkSize(Ljava/lang/String;)I
    .locals 3
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 556
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 557
    .local v0, "c":C
    const/16 v2, 0x3b

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 563
    .end local v0    # "c":C
    :cond_1
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 555
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readFixedLengthContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 417
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    .line 418
    .local v0, "length":J
    sget-boolean v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 420
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_1

    .line 421
    long-to-int v2, v0

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    long-to-int v3, v0

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method private readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 516
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 520
    .local v0, "headerSize":I
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    int-to-char v1, v3

    .line 521
    .local v1, "nextByte":C
    add-int/lit8 v0, v0, 0x1

    .line 523
    packed-switch v1, :pswitch_data_0

    .line 536
    :cond_0
    :pswitch_0
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    if-lt v0, v3, :cond_1

    .line 537
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HTTP header is larger than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :pswitch_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    int-to-char v1, v3

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 527
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 546
    :pswitch_2
    iput v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 543
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .locals 12
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 428
    iput v9, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 429
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 430
    .local v3, "message":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .line 432
    .local v4, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 433
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 434
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->clearHeaders()V

    .line 436
    :cond_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 437
    .local v0, "firstChar":C
    if-eqz v4, :cond_3

    if-eq v0, v10, :cond_1

    const/16 v7, 0x9

    if-ne v0, v7, :cond_3

    .line 438
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 448
    :goto_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 452
    if-eqz v4, :cond_2

    .line 453
    invoke-interface {v3, v4, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    .end local v0    # "firstChar":C
    :cond_2
    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 460
    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 474
    .local v5, "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    :goto_1
    return-object v5

    .line 440
    .end local v5    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .restart local v0    # "firstChar":C
    :cond_3
    if-eqz v4, :cond_4

    .line 441
    invoke-interface {v3, v4, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    :cond_4
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "header":[Ljava/lang/String;
    aget-object v4, v1, v9

    .line 445
    const/4 v7, 0x1

    aget-object v6, v1, v7

    goto :goto_0

    .line 461
    .end local v0    # "firstChar":C
    .end local v1    # "header":[Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 468
    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .restart local v5    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    goto :goto_1

    .line 469
    .end local v5    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    :cond_6
    const-wide/16 v8, -0x1

    invoke-static {v3, v8, v9}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    .line 470
    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .restart local v5    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    goto :goto_1

    .line 472
    .end local v5    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    :cond_7
    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .restart local v5    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    goto :goto_1
.end method

.method private readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "maxLineLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 568
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 570
    .local v0, "lineLength":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    .line 571
    .local v1, "nextByte":B
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 572
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    .line 573
    if-ne v1, v4, :cond_0

    .line 574
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    :goto_1
    return-object v3

    .line 577
    :cond_1
    if-ne v1, v4, :cond_2

    .line 578
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 581
    :cond_2
    if-lt v0, p2, :cond_3

    .line 582
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "An HTTP line is larger than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 587
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private readTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    .locals 12
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 478
    iput v11, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 479
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 481
    .local v3, "lastHeader":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 482
    new-instance v8, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;

    invoke-direct {v8}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;-><init>()V

    .line 484
    .local v8, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :cond_0
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 485
    .local v1, "firstChar":C
    if-eqz v3, :cond_3

    const/16 v9, 0x20

    if-eq v1, v9, :cond_1

    const/16 v9, 0x9

    if-ne v1, v9, :cond_3

    .line 486
    :cond_1
    invoke-interface {v8, v3}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_2

    .line 488
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 489
    .local v4, "lastPos":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 490
    .local v7, "newString":Ljava/lang/String;
    invoke-interface {v0, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 505
    .end local v0    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "lastPos":I
    .end local v7    # "newString":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 511
    .end local v1    # "firstChar":C
    .end local v8    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :goto_1
    return-object v8

    .line 495
    .restart local v1    # "firstChar":C
    .restart local v8    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :cond_3
    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "header":[Ljava/lang/String;
    aget-object v6, v2, v11

    .line 497
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v9, "Content-Length"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "Transfer-Encoding"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "Trailer"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 500
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-interface {v8, v6, v9}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    :cond_4
    move-object v3, v6

    goto :goto_0

    .line 511
    .end local v1    # "firstChar":C
    .end local v2    # "header":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :cond_5
    sget-object v8, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    goto :goto_1
.end method

.method private reset()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 393
    .local v1, "message":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 395
    .local v0, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 397
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 399
    :cond_0
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 401
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 402
    return-object v1
.end method

.method private skipControlCharacters(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 407
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v1

    int-to-char v0, v1

    .line 408
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 414
    return-void
.end method

.method private splitHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "sb"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x3a

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 616
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 623
    .local v2, "length":I
    invoke-direct {p0, p1, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    .line 624
    .local v4, "nameStart":I
    move v3, v4

    .local v3, "nameEnd":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 625
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 626
    .local v0, "ch":C
    if-eq v0, v11, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 631
    .end local v0    # "ch":C
    :cond_0
    move v1, v3

    .local v1, "colonEnd":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 632
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_3

    .line 633
    add-int/lit8 v1, v1, 0x1

    .line 638
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v6

    .line 639
    .local v6, "valueStart":I
    if-ne v6, v2, :cond_4

    .line 640
    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string/jumbo v8, ""

    aput-object v8, v7, v10

    .line 647
    :goto_2
    return-object v7

    .line 624
    .end local v1    # "colonEnd":I
    .end local v6    # "valueStart":I
    .restart local v0    # "ch":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "ch":C
    .restart local v1    # "colonEnd":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    .restart local v6    # "valueStart":I
    :cond_4
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findEndOfString(Ljava/lang/String;)I

    move-result v5

    .line 647
    .local v5, "valueEnd":I
    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    goto :goto_2
.end method

.method private splitInitialLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "sb"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 600
    invoke-direct {p0, p1, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 601
    .local v1, "aStart":I
    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 603
    .local v0, "aEnd":I
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 604
    .local v3, "bStart":I
    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 606
    .local v2, "bEnd":I
    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 607
    .local v5, "cStart":I
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findEndOfString(Ljava/lang/String;)I

    move-result v4

    .line 609
    .local v4, "cEnd":I
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x2

    if-ge v5, v4, :cond_0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v7, v8

    return-object v7

    :cond_0
    const-string/jumbo v6, ""

    goto :goto_0
.end method


# virtual methods
.method protected abstract createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    check-cast p4, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .end local p4    # "x3":Ljava/lang/Enum;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;
    .locals 16
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State:[I

    invoke-virtual/range {p4 .. p4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 370
    new-instance v12, Ljava/lang/Error;

    const-string/jumbo v13, "Shouldn\'t reach here."

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v12

    .line 184
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->skipControlCharacters(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 185
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint()V

    .line 191
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitInitialLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "initialLine":[Ljava/lang/String;
    array-length v12, v3

    const/4 v13, 0x3

    if-ge v12, v13, :cond_1

    .line 194
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 195
    const/4 v2, 0x0

    .line 366
    .end local v3    # "initialLine":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 187
    :catchall_0
    move-exception v12

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint()V

    throw v12

    .line 198
    .restart local v3    # "initialLine":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 199
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 202
    .end local v3    # "initialLine":[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-result-object v10

    .line 203
    .local v10, "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 204
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    if-ne v10, v12, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto :goto_0

    .line 209
    :cond_2
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    if-ne v10, v12, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-string/jumbo v13, "Transfer-Encoding"

    invoke-interface {v12, v13}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto :goto_0

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v14, -0x1

    invoke-static {v12, v14, v15}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v6

    .line 217
    .local v6, "contentLength":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_4

    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-nez v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->isDecodingRequest()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 218
    :cond_4
    sget-object v12, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 219
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 222
    :cond_5
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State:[I

    invoke-virtual {v10}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    .line 245
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 224
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v12, v12

    cmp-long v12, v6, v12

    if-lez v12, :cond_6

    .line 226
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v14, -0x1

    invoke-static {v12, v14, v15}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto/16 :goto_0

    .line 235
    :pswitch_4
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v12, v13, :cond_6

    .line 237
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto/16 :goto_0

    .line 248
    .end local v6    # "contentLength":J
    .end local v10    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v12, :cond_7

    .line 249
    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v12

    invoke-interface {v12}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v12

    invoke-static {v12}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 257
    :pswitch_6
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 258
    .local v4, "chunkSize":I
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 260
    .local v2, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v12

    if-nez v12, :cond_0

    .line 262
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    .line 263
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v12

    if-nez v12, :cond_0

    .line 265
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    aput-object v13, v11, v12

    move-object v2, v11

    goto/16 :goto_0

    .line 272
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v4    # "chunkSize":I
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readFixedLengthContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 273
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 276
    :pswitch_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 278
    .local v4, "chunkSize":J
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v12, v12

    cmp-long v12, v4, v12

    if-lez v12, :cond_8

    .line 279
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 280
    .restart local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v12, v12

    sub-long/2addr v4, v12

    .line 286
    :goto_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 288
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    .line 290
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    .line 291
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v12

    if-nez v12, :cond_0

    .line 293
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    aput-object v13, v11, v12

    move-object v2, v11

    goto/16 :goto_0

    .line 282
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_8
    sget-boolean v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v12, :cond_9

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v4, v12

    if-lez v12, :cond_9

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 283
    :cond_9
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    long-to-int v12, v4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 284
    .restart local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 303
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v4    # "chunkSize":J
    :pswitch_9
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "line":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->getChunkSize(Ljava/lang/String;)I

    move-result v4

    .line 305
    .local v4, "chunkSize":I
    int-to-long v12, v4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 306
    if-nez v4, :cond_a

    .line 307
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 308
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 309
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v4, v12, :cond_b

    .line 311
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 317
    .end local v4    # "chunkSize":I
    .end local v8    # "line":Ljava/lang/String;
    :goto_2
    :pswitch_a
    sget-boolean v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    const-wide/32 v14, 0x7fffffff

    cmp-long v12, v12, v14

    if-lez v12, :cond_c

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 313
    .restart local v4    # "chunkSize":I
    .restart local v8    # "line":Ljava/lang/String;
    :cond_b
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    goto :goto_2

    .line 318
    .end local v4    # "chunkSize":I
    .end local v8    # "line":Ljava/lang/String;
    :cond_c
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    long-to-int v12, v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 319
    .restart local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    goto/16 :goto_0

    .line 323
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :pswitch_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 325
    .local v4, "chunkSize":J
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v12, v12

    cmp-long v12, v4, v12

    if-lez v12, :cond_f

    .line 326
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 327
    .restart local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v12, v12

    sub-long/2addr v4, v12

    .line 333
    :goto_3
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 335
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_d

    .line 337
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 340
    :cond_d
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 346
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v4    # "chunkSize":J
    :cond_e
    :pswitch_c
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v9

    .line 347
    .local v9, "next":B
    const/16 v12, 0xd

    if-ne v9, v12, :cond_11

    .line 348
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_e

    .line 349
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 350
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 329
    .end local v9    # "next":B
    .restart local v4    # "chunkSize":J
    :cond_f
    sget-boolean v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v12, :cond_10

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v4, v12

    if-lez v12, :cond_10

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 330
    :cond_10
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    long-to-int v12, v4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    invoke-direct {v2, v12}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 331
    .restart local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 352
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v4    # "chunkSize":J
    .restart local v9    # "next":B
    :cond_11
    const/16 v12, 0xa

    if-ne v9, v12, :cond_e

    .line 353
    sget-object v12, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 354
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 359
    .end local v9    # "next":B
    :pswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    move-result-object v11

    .line 360
    .local v11, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-nez v12, :cond_12

    .line 362
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 364
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-object v2, v11

    .line 366
    goto/16 :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p1, "msg"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v2, 0x1

    .line 377
    instance-of v3, p1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 378
    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 379
    .local v1, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    .line 380
    .local v0, "code":I
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_0

    .line 388
    .end local v0    # "code":I
    .end local v1    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :goto_0
    :sswitch_0
    return v2

    .line 383
    .restart local v0    # "code":I
    .restart local v1    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 388
    .end local v0    # "code":I
    .end local v1    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method
