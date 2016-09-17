.class final Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I

.field private static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field private final bb:[I

.field bitb:I

.field bitk:I

.field private blens:[I

.field private check:J

.field private final checkfn:Ljava/lang/Object;

.field private final codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

.field final end:I

.field private hufts:[I

.field private index:I

.field private final inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

.field private last:I

.field private left:I

.field private mode:I

.field read:I

.field private table:I

.field private final tb:[I

.field window:[B

.field write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    .line 60
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    return-void

    .line 54
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "checkfn"    # Ljava/lang/Object;
    .param p3, "w"    # I

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    .line 81
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    .line 93
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/InfTree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    .line 96
    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    .line 97
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    .line 98
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    .line 99
    iput-object p2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    .line 102
    return-void
.end method


# virtual methods
.method free(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V
    .locals 1
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    .line 616
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    .line 617
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    .line 619
    return-void
.end method

.method inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 9
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "r"    # I

    .prologue
    const/4 v8, -0x5

    .line 639
    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 640
    .local v1, "p":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 643
    .local v2, "q":I
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-gt v2, v3, :cond_8

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    :goto_0
    sub-int v0, v3, v2

    .line 644
    .local v0, "n":I
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v3, :cond_0

    .line 645
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 647
    :cond_0
    if-eqz v0, :cond_1

    if-ne p2, v8, :cond_1

    .line 648
    const/4 p2, 0x0

    .line 652
    :cond_1
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v0

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 653
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 656
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 657
    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v5, v3, v2, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 661
    :cond_2
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    add-int/2addr v1, v0

    .line 663
    add-int/2addr v2, v0

    .line 666
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v2, v3, :cond_7

    .line 668
    const/4 v2, 0x0

    .line 669
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v3, v4, :cond_3

    .line 670
    const/4 v3, 0x0

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 674
    :cond_3
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    sub-int v0, v3, v2

    .line 675
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v3, :cond_4

    .line 676
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 678
    :cond_4
    if-eqz v0, :cond_5

    if-ne p2, v8, :cond_5

    .line 679
    const/4 p2, 0x0

    .line 683
    :cond_5
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v0

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 684
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 687
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 688
    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v5, v3, v2, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 692
    :cond_6
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    add-int/2addr v1, v0

    .line 694
    add-int/2addr v2, v0

    .line 698
    :cond_7
    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 699
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 702
    return p2

    .line 643
    .end local v0    # "n":I
    :cond_8
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    goto :goto_0
.end method

.method proc(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 31
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "r"    # I

    .prologue
    .line 129
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v27, v0

    .line 130
    .local v27, "p":I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v26, v0

    .line 131
    .local v26, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move/from16 v19, v0

    .line 132
    .local v19, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move/from16 v24, v0

    .line 135
    .local v24, "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v29, v0

    .line 136
    .local v29, "q":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v29

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v29

    add-int/lit8 v25, v4, -0x1

    .line 141
    .local v25, "m":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    packed-switch v4, :pswitch_data_0

    .line 601
    const/16 p2, -0x2

    .line 603
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 604
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 605
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 606
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 607
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 608
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 609
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    :goto_1
    return v4

    .line 136
    .end local v25    # "m":I
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v25, v4, v29

    goto :goto_0

    .line 144
    .end local v27    # "p":I
    .restart local v25    # "m":I
    .local v28, "p":I
    :goto_2
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_3

    .line 145
    if-eqz v26, :cond_2

    .line 146
    const/16 p2, 0x0

    .line 156
    add-int/lit8 v26, v26, -0x1

    .line 157
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "p":I
    .restart local v27    # "p":I
    aget-byte v4, v4, v28

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    or-int v19, v19, v4

    .line 158
    add-int/lit8 v24, v24, 0x8

    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto :goto_2

    .line 148
    :cond_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 149
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 150
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 151
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 152
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 153
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 154
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto :goto_1

    .line 160
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_3
    and-int/lit8 v30, v19, 0x7

    .line 161
    .local v30, "t":I
    and-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    .line 163
    ushr-int/lit8 v4, v30, 0x1

    packed-switch v4, :pswitch_data_1

    :goto_3
    move/from16 v27, v28

    .line 222
    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_0

    .line 166
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :pswitch_0
    ushr-int/lit8 v19, v19, 0x3

    .line 167
    add-int/lit8 v24, v24, -0x3

    .line 169
    and-int/lit8 v30, v24, 0x7

    .line 172
    ushr-int v19, v19, v30

    .line 173
    sub-int v24, v24, v30

    .line 175
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto :goto_3

    .line 179
    :pswitch_1
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 180
    .local v8, "bl":[I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 181
    .local v9, "bd":[I
    const/4 v4, 0x1

    new-array v10, v4, [[I

    .line 182
    .local v10, "tl":[[I
    const/4 v4, 0x1

    new-array v11, v4, [[I

    .line 184
    .local v11, "td":[[I
    invoke-static {v8, v9, v10, v11}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[I)I

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    const/4 v5, 0x0

    aget v5, v8, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    const/4 v7, 0x0

    aget-object v7, v10, v7

    const/4 v8, 0x0

    const/4 v12, 0x0

    aget-object v9, v11, v12

    .end local v8    # "bl":[I
    .end local v9    # "bd":[I
    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->init(II[II[II)V

    .line 189
    .end local v10    # "tl":[[I
    ushr-int/lit8 v19, v19, 0x3

    .line 190
    add-int/lit8 v24, v24, -0x3

    .line 193
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto :goto_3

    .line 198
    .end local v11    # "td":[[I
    :pswitch_2
    ushr-int/lit8 v19, v19, 0x3

    .line 199
    add-int/lit8 v24, v24, -0x3

    .line 202
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto :goto_3

    .line 207
    :pswitch_3
    ushr-int/lit8 v19, v19, 0x3

    .line 208
    add-int/lit8 v24, v24, -0x3

    .line 210
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 211
    const-string/jumbo v4, "invalid block type"

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 212
    const/16 p2, -0x3

    .line 214
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 215
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 216
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 217
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 218
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 219
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 220
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 225
    .end local v27    # "p":I
    .end local v30    # "t":I
    .restart local v28    # "p":I
    :goto_4
    const/16 v4, 0x20

    move/from16 v0, v24

    if-ge v0, v4, :cond_5

    .line 226
    if-eqz v26, :cond_4

    .line 227
    const/16 p2, 0x0

    .line 237
    add-int/lit8 v26, v26, -0x1

    .line 238
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "p":I
    .restart local v27    # "p":I
    aget-byte v4, v4, v28

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    or-int v19, v19, v4

    .line 239
    add-int/lit8 v24, v24, 0x8

    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto :goto_4

    .line 229
    :cond_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 230
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 231
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 232
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 233
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 234
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 235
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 242
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_5
    xor-int/lit8 v4, v19, -0x1

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    const v5, 0xffff

    and-int v5, v5, v19

    if-eq v4, v5, :cond_6

    .line 243
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 244
    const-string/jumbo v4, "invalid stored block lengths"

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 245
    const/16 p2, -0x3

    .line 247
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 248
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 249
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 250
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 251
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 252
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 253
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 255
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_6
    const v4, 0xffff

    and-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    .line 256
    const/16 v24, 0x0

    move/from16 v19, v24

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    move/from16 v27, v28

    .line 258
    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_0

    .line 257
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-eqz v4, :cond_8

    const/4 v4, 0x7

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 260
    .end local v28    # "p":I
    .restart local v27    # "p":I
    :pswitch_4
    if-nez v26, :cond_9

    .line 261
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 262
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 263
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 264
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 265
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 266
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 267
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 270
    :cond_9
    if-nez v25, :cond_f

    .line 271
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v4, :cond_a

    .line 272
    const/16 v29, 0x0

    .line 273
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v29

    if-ge v0, v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v29

    add-int/lit8 v25, v4, -0x1

    .line 275
    :cond_a
    :goto_6
    if-nez v25, :cond_f

    .line 276
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 277
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p2

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v29, v0

    .line 279
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v29

    if-ge v0, v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v29

    add-int/lit8 v25, v4, -0x1

    .line 280
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v4, :cond_b

    .line 281
    const/16 v29, 0x0

    .line 282
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v29

    if-ge v0, v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v29

    add-int/lit8 v25, v4, -0x1

    .line 284
    :cond_b
    :goto_8
    if-nez v25, :cond_f

    .line 285
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 286
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 287
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 288
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 289
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 290
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 291
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v25, v4, v29

    goto :goto_6

    .line 279
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v25, v4, v29

    goto :goto_7

    .line 282
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v25, v4, v29

    goto :goto_8

    .line 295
    :cond_f
    const/16 p2, 0x0

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    move/from16 v30, v0

    .line 298
    .restart local v30    # "t":I
    move/from16 v0, v30

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 299
    move/from16 v30, v26

    .line 301
    :cond_10
    move/from16 v0, v30

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 302
    move/from16 v30, v25

    .line 304
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v4, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    add-int v27, v27, v30

    .line 306
    sub-int v26, v26, v30

    .line 307
    add-int v29, v29, v30

    .line 308
    sub-int v25, v25, v30

    .line 309
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    sub-int v4, v4, v30

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-nez v4, :cond_0

    .line 312
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-eqz v4, :cond_12

    const/4 v4, 0x7

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x0

    goto :goto_9

    .line 316
    .end local v27    # "p":I
    .end local v30    # "t":I
    .restart local v28    # "p":I
    :goto_a
    const/16 v4, 0xe

    move/from16 v0, v24

    if-ge v0, v4, :cond_14

    .line 317
    if-eqz v26, :cond_13

    .line 318
    const/16 p2, 0x0

    .line 328
    add-int/lit8 v26, v26, -0x1

    .line 329
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "p":I
    .restart local v27    # "p":I
    aget-byte v4, v4, v28

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    or-int v19, v19, v4

    .line 330
    add-int/lit8 v24, v24, 0x8

    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto :goto_a

    .line 320
    :cond_13
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 321
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 322
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 323
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 324
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 325
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 326
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 333
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_14
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x3fff

    move/from16 v30, v0

    .restart local v30    # "t":I
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    .line 334
    and-int/lit8 v4, v30, 0x1f

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_15

    shr-int/lit8 v4, v30, 0x5

    and-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x1d

    if-le v4, v5, :cond_16

    .line 335
    :cond_15
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 336
    const-string/jumbo v4, "too many length or distance symbols"

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 337
    const/16 p2, -0x3

    .line 339
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 340
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 341
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 342
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 343
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 344
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 345
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 347
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_16
    and-int/lit8 v4, v30, 0x1f

    add-int/lit16 v4, v4, 0x102

    shr-int/lit8 v5, v30, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int v30, v4, v5

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    array-length v4, v4

    move/from16 v0, v30

    if-ge v4, v0, :cond_19

    .line 349
    :cond_17
    move/from16 v0, v30

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 357
    :cond_18
    ushr-int/lit8 v19, v19, 0xe

    .line 358
    add-int/lit8 v24, v24, -0xe

    .line 361
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    .line 362
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    move/from16 v27, v28

    .line 364
    .end local v28    # "p":I
    .end local v30    # "t":I
    .restart local v27    # "p":I
    :goto_b
    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_1c

    move/from16 v28, v27

    .line 365
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :goto_c
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_1b

    .line 366
    if-eqz v26, :cond_1a

    .line 367
    const/16 p2, 0x0

    .line 377
    add-int/lit8 v26, v26, -0x1

    .line 378
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "p":I
    .restart local v27    # "p":I
    aget-byte v4, v4, v28

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    or-int v19, v19, v4

    .line 379
    add-int/lit8 v24, v24, 0x8

    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto :goto_c

    .line 351
    .restart local v30    # "t":I
    :cond_19
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_d
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    const/4 v5, 0x0

    aput v5, v4, v21

    .line 351
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 369
    .end local v21    # "i":I
    .end local v30    # "t":I
    :cond_1a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 370
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 371
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 372
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 373
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 374
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 375
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 382
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aget v5, v5, v6

    and-int/lit8 v6, v19, 0x7

    aput v6, v4, v5

    .line 385
    ushr-int/lit8 v19, v19, 0x3

    .line 386
    add-int/lit8 v24, v24, -0x3

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_b

    .line 390
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1d

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aget v5, v5, v6

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_e

    .line 394
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    const/4 v5, 0x0

    const/4 v6, 0x7

    aput v6, v4, v5

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v30

    .line 396
    .restart local v30    # "t":I
    if-eqz v30, :cond_1f

    .line 397
    move/from16 p2, v30

    .line 398
    const/4 v4, -0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_1e

    .line 399
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 400
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 403
    :cond_1e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 404
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 405
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 406
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 407
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 408
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 409
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 412
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    .line 413
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 416
    .end local v30    # "t":I
    :goto_f
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    move/from16 v30, v0

    .line 417
    .restart local v30    # "t":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    and-int/lit8 v5, v30, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v6, v30, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_21

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 510
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 511
    .restart local v8    # "bl":[I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 512
    .restart local v9    # "bd":[I
    const/4 v4, 0x1

    new-array v10, v4, [I

    .line 513
    .local v10, "tl":[I
    const/4 v4, 0x1

    new-array v11, v4, [I

    .line 514
    .local v11, "td":[I
    const/4 v4, 0x0

    const/16 v5, 0x9

    aput v5, v8, v4

    .line 515
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput v5, v9, v4

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    move/from16 v30, v0

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    and-int/lit8 v5, v30, 0x1f

    add-int/lit16 v5, v5, 0x101

    shr-int/lit8 v6, v30, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v13, p1

    invoke-virtual/range {v4 .. v13}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v30

    .line 522
    if-eqz v30, :cond_2d

    .line 523
    const/4 v4, -0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_20

    .line 524
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 525
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 527
    :cond_20
    move/from16 p2, v30

    .line 529
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 530
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 531
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 532
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 533
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 534
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 535
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 423
    .end local v8    # "bl":[I
    .end local v9    # "bd":[I
    .end local v10    # "tl":[I
    .end local v11    # "td":[I
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    const/4 v5, 0x0

    aget v30, v4, v5

    move/from16 v28, v27

    .line 425
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :goto_10
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_23

    .line 426
    if-eqz v26, :cond_22

    .line 427
    const/16 p2, 0x0

    .line 437
    add-int/lit8 v26, v26, -0x1

    .line 438
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "p":I
    .restart local v27    # "p":I
    aget-byte v4, v4, v28

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    or-int v19, v19, v4

    .line 439
    add-int/lit8 v24, v24, 0x8

    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto :goto_10

    .line 429
    :cond_22
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 430
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 431
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 432
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 433
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 434
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 435
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 442
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 446
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v6, v6, v30

    and-int v6, v6, v19

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v30, v4, v5

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v6, v6, v30

    and-int v6, v6, v19

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v20, v4, v5

    .line 449
    .local v20, "c":I
    const/16 v4, 0x10

    move/from16 v0, v20

    if-ge v0, v4, :cond_25

    .line 450
    ushr-int v19, v19, v30

    .line 451
    sub-int v24, v24, v30

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aput v20, v4, v5

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_f

    .line 454
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_25
    const/16 v4, 0x12

    move/from16 v0, v20

    if-ne v0, v4, :cond_26

    const/16 v21, 0x7

    .line 455
    .restart local v21    # "i":I
    :goto_11
    const/16 v4, 0x12

    move/from16 v0, v20

    if-ne v0, v4, :cond_27

    const/16 v23, 0xb

    .line 457
    .local v23, "j":I
    :goto_12
    add-int v4, v30, v21

    move/from16 v0, v24

    if-ge v0, v4, :cond_29

    .line 458
    if-eqz v26, :cond_28

    .line 459
    const/16 p2, 0x0

    .line 469
    add-int/lit8 v26, v26, -0x1

    .line 470
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "p":I
    .restart local v27    # "p":I
    aget-byte v4, v4, v28

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    or-int v19, v19, v4

    .line 471
    add-int/lit8 v24, v24, 0x8

    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto :goto_12

    .line 454
    .end local v21    # "i":I
    .end local v23    # "j":I
    :cond_26
    add-int/lit8 v21, v20, -0xe

    goto :goto_11

    .line 455
    .restart local v21    # "i":I
    :cond_27
    const/16 v23, 0x3

    goto :goto_12

    .line 461
    .restart local v23    # "j":I
    :cond_28
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 462
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 463
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 464
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 465
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 466
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 467
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 474
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_29
    ushr-int v19, v19, v30

    .line 475
    sub-int v24, v24, v30

    .line 477
    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v4, v4, v21

    and-int v4, v4, v19

    add-int v23, v23, v4

    .line 479
    ushr-int v19, v19, v21

    .line 480
    sub-int v24, v24, v21

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    move/from16 v21, v0

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    move/from16 v30, v0

    .line 484
    add-int v4, v21, v23

    and-int/lit8 v5, v30, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v6, v30, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_2a

    const/16 v4, 0x10

    move/from16 v0, v20

    if-ne v0, v4, :cond_2b

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ge v0, v4, :cond_2b

    .line 486
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 487
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 488
    const-string/jumbo v4, "invalid bit length repeat"

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 489
    const/16 p2, -0x3

    .line 491
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 492
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 493
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 494
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 495
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 496
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 497
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_1

    .line 500
    .end local v27    # "p":I
    .restart local v28    # "p":I
    :cond_2b
    const/16 v4, 0x10

    move/from16 v0, v20

    if-ne v0, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v5, v21, -0x1

    aget v20, v4, v5

    .line 502
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "i":I
    .local v22, "i":I
    aput v20, v4, v21

    .line 503
    add-int/lit8 v23, v23, -0x1

    if-nez v23, :cond_32

    .line 504
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    move/from16 v27, v28

    .end local v28    # "p":I
    .restart local v27    # "p":I
    goto/16 :goto_f

    .line 500
    .end local v22    # "i":I
    .end local v27    # "p":I
    .restart local v21    # "i":I
    .restart local v28    # "p":I
    :cond_2c
    const/16 v20, 0x0

    goto :goto_13

    .line 537
    .end local v20    # "c":I
    .end local v21    # "i":I
    .end local v23    # "j":I
    .end local v28    # "p":I
    .restart local v8    # "bl":[I
    .restart local v9    # "bd":[I
    .restart local v10    # "tl":[I
    .restart local v11    # "td":[I
    .restart local v27    # "p":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    const/4 v4, 0x0

    aget v13, v8, v4

    const/4 v4, 0x0

    aget v14, v9, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    const/4 v4, 0x0

    aget v16, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v17, v0

    const/4 v4, 0x0

    aget v18, v11, v4

    invoke-virtual/range {v12 .. v18}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->init(II[II[II)V

    .line 539
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 541
    .end local v8    # "bl":[I
    .end local v9    # "bd":[I
    .end local v10    # "tl":[I
    .end local v11    # "td":[I
    .end local v30    # "t":I
    :pswitch_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 542
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 543
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 544
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 545
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 546
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->proc(Lorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p2

    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_2e

    .line 549
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 551
    :cond_2e
    const/16 p2, 0x0

    .line 553
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v27, v0

    .line 554
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v26, v0

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move/from16 v19, v0

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move/from16 v24, v0

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v29, v0

    .line 558
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v29

    if-ge v0, v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v29

    add-int/lit8 v25, v4, -0x1

    .line 560
    :goto_14
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-nez v4, :cond_30

    .line 561
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto/16 :goto_0

    .line 558
    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v25, v4, v29

    goto :goto_14

    .line 564
    :cond_30
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 566
    :pswitch_8
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 567
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p2

    .line 568
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v29, v0

    .line 569
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-eq v4, v5, :cond_31

    .line 570
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 571
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 572
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 573
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 574
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 575
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 576
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 578
    :cond_31
    const/16 v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 580
    :pswitch_9
    const/16 p2, 0x1

    .line 582
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 583
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 584
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 585
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 586
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 587
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 588
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 590
    :pswitch_a
    const/16 p2, -0x3

    .line 592
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 593
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 594
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 595
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v27, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 596
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 597
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 598
    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .end local v27    # "p":I
    .restart local v20    # "c":I
    .restart local v22    # "i":I
    .restart local v23    # "j":I
    .restart local v28    # "p":I
    .restart local v30    # "t":I
    :cond_32
    move/from16 v21, v22

    .end local v22    # "i":I
    .restart local v21    # "i":I
    goto/16 :goto_13

    .end local v20    # "c":I
    .end local v21    # "i":I
    .end local v23    # "j":I
    .end local v28    # "p":I
    .end local v30    # "t":I
    .restart local v27    # "p":I
    :pswitch_b
    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_a

    .end local v28    # "p":I
    .restart local v27    # "p":I
    :pswitch_c
    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_4

    .end local v28    # "p":I
    .restart local v27    # "p":I
    :pswitch_d
    move/from16 v28, v27

    .end local v27    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 163
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    .locals 4
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "c"    # [J

    .prologue
    const/4 v3, 0x0

    .line 105
    if-eqz p2, :cond_0

    .line 106
    iget-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    aput-wide v0, p2, v3

    .line 108
    :cond_0
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 109
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 110
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 111
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 113
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 114
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 116
    :cond_1
    return-void
.end method

.method set_dictionary([BII)V
    .locals 2
    .param p1, "d"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 624
    return-void
.end method

.method sync_point()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 629
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
