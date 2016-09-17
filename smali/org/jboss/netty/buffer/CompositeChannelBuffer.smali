.class public Lorg/jboss/netty/buffer/CompositeChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "CompositeChannelBuffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private components:[Lorg/jboss/netty/buffer/ChannelBuffer;

.field private indices:[I

.field private lastAccessedComponentId:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;)V
    .locals 0
    .param p1, "endianness"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 51
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setComponents(Ljava/util/List;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/CompositeChannelBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 137
    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 138
    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0}, [Lorg/jboss/netty/buffer/ChannelBuffer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 139
    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    .line 140
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 141
    return-void
.end method

.method private componentId(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 593
    iget v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    .line 594
    .local v1, "lastComponentId":I
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_2

    .line 595
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_0

    move v0, v1

    .line 611
    :goto_0
    return v0

    .line 600
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 601
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_1

    .line 602
    iput v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    goto :goto_0

    .line 600
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 608
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 609
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_3

    .line 610
    iput v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    goto :goto_0

    .line 608
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 616
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private copyTo(IIILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "componentId"    # I
    .param p4, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "dstIndex":I
    move v2, p3

    .line 519
    .local v2, "i":I
    :goto_0
    if-lez p2, :cond_0

    .line 520
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v5, v2

    .line 521
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v5, v2

    .line 522
    .local v0, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 523
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-interface {v4, v5, p4, v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 524
    add-int/2addr p1, v3

    .line 525
    add-int/2addr v1, v3

    .line 526
    sub-int/2addr p2, v3

    .line 527
    add-int/lit8 v2, v2, 0x1

    .line 528
    goto :goto_0

    .line 530
    .end local v0    # "adjustment":I
    .end local v3    # "localLength":I
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_0
    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    invoke-interface {p4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 531
    return-void
.end method

.method private setComponents(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newComponents":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    const/4 v6, 0x0

    .line 105
    sget-boolean v2, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 108
    :cond_0
    iput v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 113
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 114
    .local v0, "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "All buffers must have the same endianness."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    sget-boolean v2, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 120
    :cond_2
    sget-boolean v2, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 122
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v0, v2, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_4
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    .line 127
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aput v6, v2, v6

    .line 128
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    if-gt v1, v2, :cond_5

    .line 129
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v6, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 134
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 506
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, p2

    if-le p1, v2, :cond_0

    .line 507
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 510
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 511
    .local v1, "dst":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copyTo(IIILorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 512
    return-object v1
.end method

.method public decompose(II)Ljava/util/List;
    .locals 9
    .param p1, "index"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    if-nez p2, :cond_1

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 98
    :cond_0
    return-object v6

    .line 62
    :cond_1
    add-int v7, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 63
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 66
    :cond_2
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v2

    .line 67
    .local v2, "componentId":I
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v7, v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v6, "slice":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 71
    .local v3, "first":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v7, v7, v2

    sub-int v7, p1, v7

    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 73
    move-object v0, v3

    .line 74
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    move v1, p2

    .line 76
    .local v1, "bytesToSlice":I
    :cond_3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    .line 77
    .local v5, "readableBytes":I
    if-gt v1, v5, :cond_4

    .line 79
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/2addr v7, v1

    invoke-interface {v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 80
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 95
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sub-int/2addr v1, v5

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 89
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 91
    if-gtz v1, :cond_3

    goto :goto_0
.end method

.method public discardReadBytes()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 625
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v4

    .line 626
    .local v4, "localReaderIndex":I
    if-nez v4, :cond_0

    .line 668
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v5

    .line 631
    .local v5, "localWriterIndex":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v7

    sub-int v0, v7, v4

    .line 632
    .local v0, "bytesToMove":I
    invoke-virtual {p0, v4, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v1

    .line 637
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 638
    .local v6, "padding":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v6, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 639
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    move v2, v4

    .line 644
    .local v2, "localMarkedReaderIndex":I
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->resetReaderIndex()V

    .line 645
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 649
    :goto_1
    move v3, v5

    .line 651
    .local v3, "localMarkedWriterIndex":I
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->resetWriterIndex()V

    .line 652
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 657
    :goto_2
    invoke-direct {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setComponents(Ljava/util/List;)V

    .line 660
    sub-int v7, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 661
    sub-int v7, v3, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 662
    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 663
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->markReaderIndex()V

    .line 664
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->markWriterIndex()V

    .line 666
    sub-int v7, v5, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 667
    invoke-virtual {p0, v8, v5}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    goto :goto_0

    .line 653
    :catch_0
    move-exception v7

    goto :goto_2

    .line 646
    .end local v3    # "localMarkedWriterIndex":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    .prologue
    .line 499
    new-instance v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Lorg/jboss/netty/buffer/CompositeChannelBuffer;)V

    .line 500
    .local v0, "duplicate":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 501
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 173
    .local v0, "componentId":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    return v1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 294
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p3

    if-le p1, v5, :cond_0

    .line 295
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 298
    :cond_0
    move v2, v1

    .line 299
    .local v2, "i":I
    :goto_0
    if-lez p3, :cond_1

    .line 300
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v5, v2

    .line 301
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v5, v2

    .line 302
    .local v0, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 303
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-interface {v4, v5, p2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 304
    add-int/2addr p1, v3

    .line 305
    sub-int/2addr p3, v3

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    goto :goto_0

    .line 308
    .end local v0    # "adjustment":I
    .end local v3    # "localLength":I
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 241
    .local v1, "componentId":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 242
    .local v4, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 243
    .local v3, "length":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v7

    sub-int/2addr v7, v3

    if-le p1, v7, :cond_0

    .line 244
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 247
    :cond_0
    move v2, v1

    .line 249
    .local v2, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 250
    :try_start_0
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v6, v7, v2

    .line 251
    .local v6, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v7, v2

    .line 252
    .local v0, "adjustment":I
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 253
    .local v5, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 254
    sub-int v7, p1, v0

    invoke-interface {v6, v7, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    add-int/2addr p1, v5

    .line 256
    sub-int/2addr v3, v5

    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 258
    goto :goto_0

    .line 260
    .end local v0    # "adjustment":I
    .end local v5    # "localLength":I
    .end local v6    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v7

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v7
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 266
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p4

    if-gt p1, v5, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p4

    if-le p3, v5, :cond_1

    .line 267
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 270
    :cond_1
    move v2, v1

    .line 271
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_2

    .line 272
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v5, v2

    .line 273
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v5, v2

    .line 274
    .local v0, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 275
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-interface {v4, v5, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 276
    add-int/2addr p1, v3

    .line 277
    add-int/2addr p3, v3

    .line 278
    sub-int/2addr p4, v3

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 280
    goto :goto_0

    .line 281
    .end local v0    # "adjustment":I
    .end local v3    # "localLength":I
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2
    return-void
.end method

.method public getBytes(I[BII)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 222
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p4

    if-gt p1, v5, :cond_0

    array-length v5, p2

    sub-int/2addr v5, p4

    if-le p3, v5, :cond_1

    .line 223
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 226
    :cond_1
    move v2, v1

    .line 227
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_2

    .line 228
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v5, v2

    .line 229
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v5, v2

    .line 230
    .local v0, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-interface {v4, v5, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 232
    add-int/2addr p1, v3

    .line 233
    add-int/2addr p3, v3

    .line 234
    sub-int/2addr p4, v3

    .line 235
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto :goto_0

    .line 237
    .end local v0    # "adjustment":I
    .end local v3    # "localLength":I
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2
    return-void
.end method

.method public getInt(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v4, 0xffff

    .line 199
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 200
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 201
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v1

    .line 205
    :goto_0
    return v1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 203
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v2

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v4

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v2

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 210
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 211
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v2

    .line 216
    :goto_0
    return-wide v2

    .line 213
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 214
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    shl-long/2addr v2, v8

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 178
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 181
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0
.end method

.method public getUnsignedMedium(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v4, 0xffff

    .line 188
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 189
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v4

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 312
    .local v0, "componentId":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 313
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 433
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v7

    sub-int/2addr v7, p3

    if-le p1, v7, :cond_0

    .line 434
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 437
    :cond_0
    move v2, v1

    .line 438
    .local v2, "i":I
    const/4 v5, 0x0

    .line 441
    .local v5, "readBytes":I
    :cond_1
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v6, v7, v2

    .line 442
    .local v6, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v7, v2

    .line 443
    .local v0, "adjustment":I
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 444
    .local v3, "localLength":I
    sub-int v7, p1, v0

    invoke-interface {v6, v7, p2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v4

    .line 445
    .local v4, "localReadBytes":I
    if-gez v4, :cond_2

    .line 446
    if-nez v5, :cond_3

    .line 447
    const/4 v7, -0x1

    .line 465
    :goto_0
    return v7

    .line 453
    :cond_2
    if-ne v4, v3, :cond_4

    .line 454
    add-int/2addr p1, v3

    .line 455
    sub-int/2addr p3, v3

    .line 456
    add-int/2addr v5, v3

    .line 457
    add-int/lit8 v2, v2, 0x1

    .line 463
    :goto_1
    if-gtz p3, :cond_1

    :cond_3
    move v7, v5

    .line 465
    goto :goto_0

    .line 459
    :cond_4
    add-int/2addr p1, v4

    .line 460
    sub-int/2addr p3, v4

    .line 461
    add-int/2addr v5, v4

    goto :goto_1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 471
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v7

    sub-int/2addr v7, p3

    if-le p1, v7, :cond_0

    .line 472
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 475
    :cond_0
    move v2, v1

    .line 476
    .local v2, "i":I
    const/4 v5, 0x0

    .line 478
    .local v5, "readBytes":I
    :cond_1
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v6, v7, v2

    .line 479
    .local v6, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v7, v2

    .line 480
    .local v0, "adjustment":I
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 481
    .local v3, "localLength":I
    sub-int v7, p1, v0

    invoke-interface {v6, v7, p2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v4

    .line 483
    .local v4, "localReadBytes":I
    if-ne v4, v3, :cond_2

    .line 484
    add-int/2addr p1, v3

    .line 485
    sub-int/2addr p3, v3

    .line 486
    add-int/2addr v5, v3

    .line 487
    add-int/lit8 v2, v2, 0x1

    .line 493
    :goto_0
    if-gtz p3, :cond_1

    .line 495
    return v5

    .line 489
    :cond_2
    add-int/2addr p1, v4

    .line 490
    sub-int/2addr p3, v4

    .line 491
    add-int/2addr v5, v4

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 388
    .local v1, "componentId":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 389
    .local v4, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 390
    .local v3, "length":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v7

    sub-int/2addr v7, v3

    if-le p1, v7, :cond_0

    .line 391
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 394
    :cond_0
    move v2, v1

    .line 396
    .local v2, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 397
    :try_start_0
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v6, v7, v2

    .line 398
    .local v6, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v7, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v7, v2

    .line 399
    .local v0, "adjustment":I
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 400
    .local v5, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 401
    sub-int v7, p1, v0

    invoke-interface {v6, v7, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    add-int/2addr p1, v5

    .line 403
    sub-int/2addr v3, v5

    .line 404
    add-int/lit8 v2, v2, 0x1

    .line 405
    goto :goto_0

    .line 407
    .end local v0    # "adjustment":I
    .end local v5    # "localLength":I
    .end local v6    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v7

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v7
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 413
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p4

    if-gt p1, v5, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p4

    if-le p3, v5, :cond_1

    .line 414
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 417
    :cond_1
    move v2, v1

    .line 418
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_2

    .line 419
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v5, v2

    .line 420
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v5, v2

    .line 421
    .local v0, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 422
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-interface {v4, v5, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 423
    add-int/2addr p1, v3

    .line 424
    add-int/2addr p3, v3

    .line 425
    sub-int/2addr p4, v3

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 427
    goto :goto_0

    .line 428
    .end local v0    # "adjustment":I
    .end local v3    # "localLength":I
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2
    return-void
.end method

.method public setBytes(I[BII)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    .line 369
    .local v1, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, p4

    if-gt p1, v5, :cond_0

    array-length v5, p2

    sub-int/2addr v5, p4

    if-le p3, v5, :cond_1

    .line 370
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 373
    :cond_1
    move v2, v1

    .line 374
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_2

    .line 375
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v5, v2

    .line 376
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v5, v2

    .line 377
    .local v0, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 378
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-interface {v4, v5, p2, p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    .line 379
    add-int/2addr p1, v3

    .line 380
    add-int/2addr p3, v3

    .line 381
    sub-int/2addr p4, v3

    .line 382
    add-int/lit8 v2, v2, 0x1

    .line 383
    goto :goto_0

    .line 384
    .end local v0    # "adjustment":I
    .end local v3    # "localLength":I
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2
    return-void
.end method

.method public setInt(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 343
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 344
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 346
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 347
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    goto :goto_0

    .line 349
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 350
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    goto :goto_0
.end method

.method public setLong(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    const/16 v4, 0x20

    .line 355
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 356
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 357
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 359
    ushr-long v2, p2, v4

    long-to-int v1, v2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    .line 360
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    goto :goto_0

    .line 362
    :cond_1
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    .line 363
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v4

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    goto :goto_0
.end method

.method public setMedium(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 330
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 331
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    .line 339
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 333
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 334
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0

    .line 336
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 337
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0
.end method

.method public setShort(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 317
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 318
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 320
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    .line 321
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0

    .line 323
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    .line 324
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_0
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    if-nez p2, :cond_3

    .line 536
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 551
    :goto_0
    return-object v1

    .line 538
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    if-le p1, v1, :cond_2

    .line 539
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 540
    :cond_2
    if-nez p2, :cond_3

    .line 541
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    .line 544
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 551
    new-instance v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;)V

    goto :goto_0

    .line 547
    :pswitch_0
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    .line 549
    :pswitch_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 556
    iget-object v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 557
    iget-object v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 566
    :goto_0
    return-object v5

    .line 560
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 561
    .local v2, "buffers":[Ljava/nio/ByteBuffer;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 562
    .local v5, "merged":Ljava/nio/ByteBuffer;
    move-object v0, v2

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 563
    .local v1, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 565
    .end local v1    # "b":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v2

    .line 572
    .local v2, "componentId":I
    add-int v6, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 573
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 576
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v6, v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    move v3, v2

    .line 579
    .local v3, "i":I
    :goto_0
    if-lez p2, :cond_1

    .line 580
    iget-object v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v5, v6, v3

    .line 581
    .local v5, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v0, v6, v3

    .line 582
    .local v0, "adjustment":I
    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v6

    sub-int v7, p1, v0

    sub-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 583
    .local v4, "localLength":I
    sub-int v6, p1, v0

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/2addr p1, v4

    .line 585
    sub-int/2addr p2, v4

    .line 586
    add-int/lit8 v3, v3, 0x1

    .line 587
    goto :goto_0

    .line 589
    .end local v0    # "adjustment":I
    .end local v4    # "localLength":I
    .end local v5    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/nio/ByteBuffer;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/ByteBuffer;

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 672
    invoke-super {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
