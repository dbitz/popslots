.class final Lorg/jboss/netty/util/internal/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final inflate_mask:[I


# instance fields
.field private dbits:B

.field private dist:I

.field private dtree:[I

.field private dtree_index:I

.field private get:I

.field private lbits:B

.field private len:I

.field private lit:I

.field private ltree:[I

.field private ltree_index:I

.field private mode:I

.field private need:I

.field private tree:[I

.field private tree_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    return-void

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
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 90
    return-void
.end method


# virtual methods
.method inflate_fast(II[II[IILorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 30
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I
    .param p7, "s"    # Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
    .param p8, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    .line 485
    move-object/from16 v0, p8

    iget v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 486
    .local v15, "p":I
    move-object/from16 v0, p8

    iget v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 487
    .local v14, "n":I
    move-object/from16 v0, p7

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 488
    .local v6, "b":I
    move-object/from16 v0, p7

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 489
    .local v10, "k":I
    move-object/from16 v0, p7

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v17, v0

    .line 490
    .local v17, "q":I
    move-object/from16 v0, p7

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p7

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v25, v0

    sub-int v25, v25, v17

    add-int/lit8 v11, v25, -0x1

    .line 493
    .local v11, "m":I
    :goto_0
    sget-object v25, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v13, v25, p1

    .line 494
    .local v13, "ml":I
    sget-object v25, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v12, v25, p2

    .local v12, "md":I
    move/from16 v18, v17

    .end local v17    # "q":I
    .local v18, "q":I
    move/from16 v16, v15

    .line 499
    .end local v15    # "p":I
    .local v16, "p":I
    :goto_1
    const/16 v25, 0x14

    move/from16 v0, v25

    if-ge v10, v0, :cond_1

    .line 500
    add-int/lit8 v14, v14, -0x1

    .line 501
    move-object/from16 v0, p8

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v10

    or-int v6, v6, v25

    .line 502
    add-int/lit8 v10, v10, 0x8

    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_1

    .line 490
    .end local v11    # "m":I
    .end local v12    # "md":I
    .end local v13    # "ml":I
    .end local v16    # "p":I
    .end local v18    # "q":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_0
    move-object/from16 v0, p7

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v25, v0

    sub-int v11, v25, v17

    goto :goto_0

    .line 505
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v11    # "m":I
    .restart local v12    # "md":I
    .restart local v13    # "ml":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_1
    and-int v21, v6, v13

    .line 506
    .local v21, "t":I
    move-object/from16 v22, p3

    .line 507
    .local v22, "tp":[I
    move/from16 v23, p4

    .line 508
    .local v23, "tp_index":I
    add-int v25, v23, v21

    mul-int/lit8 v24, v25, 0x3

    .line 509
    .local v24, "tp_index_t_3":I
    aget v9, v22, v24

    .local v9, "e":I
    if-nez v9, :cond_4

    .line 510
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    .line 511
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 513
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int/lit8 v26, v24, 0x2

    aget v26, v22, v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v25, v18

    .line 514
    add-int/lit8 v11, v11, -0x1

    move/from16 v15, v16

    .line 688
    .end local v16    # "p":I
    .restart local v15    # "p":I
    :goto_2
    const/16 v25, 0x102

    move/from16 v0, v25

    if-lt v11, v0, :cond_2

    const/16 v25, 0xa

    move/from16 v0, v25

    if-ge v14, v0, :cond_14

    .line 691
    :cond_2
    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .line 692
    .local v7, "c":I
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_3

    shr-int/lit8 v7, v10, 0x3

    .line 693
    :cond_3
    add-int/2addr v14, v7

    .line 694
    sub-int/2addr v15, v7

    .line 695
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 697
    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 698
    move-object/from16 v0, p7

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 699
    move-object/from16 v0, p8

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 700
    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p8

    iput-wide v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 701
    move-object/from16 v0, p8

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 702
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 704
    const/16 v25, 0x0

    :goto_3
    return v25

    .line 519
    .end local v7    # "c":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_4
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    .line 520
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 522
    and-int/lit8 v25, v9, 0x10

    if-eqz v25, :cond_f

    .line 523
    and-int/lit8 v9, v9, 0xf

    .line 524
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    sget-object v26, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v26, v26, v9

    and-int v26, v26, v6

    add-int v7, v25, v26

    .line 526
    .restart local v7    # "c":I
    shr-int/2addr v6, v9

    .line 527
    sub-int/2addr v10, v9

    .line 530
    :goto_4
    const/16 v25, 0xf

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    .line 531
    add-int/lit8 v14, v14, -0x1

    .line 532
    move-object/from16 v0, p8

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v10

    or-int v6, v6, v25

    .line 533
    add-int/lit8 v10, v10, 0x8

    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_4

    .line 536
    :cond_5
    and-int v21, v6, v12

    .line 537
    move-object/from16 v22, p5

    .line 538
    move/from16 v23, p6

    .line 539
    add-int v25, v23, v21

    mul-int/lit8 v24, v25, 0x3

    .line 540
    aget v9, v22, v24

    .line 544
    :goto_5
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    .line 545
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 547
    and-int/lit8 v25, v9, 0x10

    if-eqz v25, :cond_c

    .line 549
    and-int/lit8 v9, v9, 0xf

    .line 550
    :goto_6
    if-ge v10, v9, :cond_6

    .line 551
    add-int/lit8 v14, v14, -0x1

    .line 552
    move-object/from16 v0, p8

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v10

    or-int v6, v6, v25

    .line 553
    add-int/lit8 v10, v10, 0x8

    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_6

    .line 556
    :cond_6
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    sget-object v26, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v26, v26, v9

    and-int v26, v26, v6

    add-int v8, v25, v26

    .line 558
    .local v8, "d":I
    shr-int/2addr v6, v9

    .line 559
    sub-int/2addr v10, v9

    .line 562
    sub-int/2addr v11, v7

    .line 563
    move/from16 v0, v18

    if-lt v0, v8, :cond_8

    .line 565
    sub-int v19, v18, v8

    .line 566
    .local v19, "r":I
    sub-int v25, v18, v19

    if-lez v25, :cond_7

    const/16 v25, 0x2

    sub-int v26, v18, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 567
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "q":I
    .restart local v17    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "r":I
    .local v20, "r":I
    aget-byte v26, v26, v19

    aput-byte v26, v25, v18

    .line 568
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "r":I
    .restart local v19    # "r":I
    aget-byte v26, v26, v20

    aput-byte v26, v25, v17

    .line 569
    add-int/lit8 v7, v7, -0x2

    move/from16 v17, v18

    .line 602
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_7
    sub-int v25, v17, v19

    if-lez v25, :cond_b

    sub-int v25, v17, v19

    move/from16 v0, v25

    if-le v7, v0, :cond_b

    .line 604
    :goto_8
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "r":I
    .restart local v20    # "r":I
    aget-byte v26, v26, v19

    aput-byte v26, v25, v17

    .line 605
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_15

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    move/from16 v15, v16

    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_2

    .line 571
    .end local v15    # "p":I
    .end local v17    # "q":I
    .end local v20    # "r":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    .restart local v19    # "r":I
    :cond_7
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v18

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    add-int/lit8 v17, v18, 0x2

    .line 574
    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int/lit8 v19, v19, 0x2

    .line 575
    add-int/lit8 v7, v7, -0x2

    goto :goto_7

    .line 578
    .end local v17    # "q":I
    .end local v19    # "r":I
    .restart local v18    # "q":I
    :cond_8
    sub-int v19, v18, v8

    .line 580
    .restart local v19    # "r":I
    :cond_9
    move-object/from16 v0, p7

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v25, v0

    add-int v19, v19, v25

    .line 581
    if-ltz v19, :cond_9

    .line 582
    move-object/from16 v0, p7

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v25, v0

    sub-int v9, v25, v19

    .line 583
    if-le v7, v9, :cond_17

    .line 584
    sub-int/2addr v7, v9

    .line 585
    sub-int v25, v18, v19

    if-lez v25, :cond_a

    sub-int v25, v18, v19

    move/from16 v0, v25

    if-le v9, v0, :cond_a

    move/from16 v17, v18

    .line 587
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_9
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "r":I
    .restart local v20    # "r":I
    aget-byte v26, v26, v19

    aput-byte v26, v25, v17

    .line 588
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_16

    move/from16 v19, v20

    .end local v20    # "r":I
    .restart local v19    # "r":I
    move/from16 v17, v18

    .line 596
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_a
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 590
    .end local v17    # "q":I
    .restart local v18    # "q":I
    :cond_a
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    add-int v17, v18, v9

    .line 593
    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int v19, v19, v9

    .line 594
    const/4 v9, 0x0

    goto :goto_a

    .line 607
    :cond_b
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    add-int v17, v17, v7

    .line 609
    add-int v19, v19, v7

    .line 610
    const/4 v7, 0x0

    move/from16 v15, v16

    .line 612
    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_2

    .line 613
    .end local v8    # "d":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .end local v19    # "r":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_c
    and-int/lit8 v25, v9, 0x40

    if-nez v25, :cond_d

    .line 614
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    add-int v21, v21, v25

    .line 615
    sget-object v25, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v25, v25, v9

    and-int v25, v25, v6

    add-int v21, v21, v25

    .line 616
    add-int v25, v23, v21

    mul-int/lit8 v24, v25, 0x3

    .line 617
    aget v9, v22, v24

    goto/16 :goto_5

    .line 619
    :cond_d
    const-string/jumbo v25, "invalid distance code"

    move-object/from16 v0, v25

    move-object/from16 v1, p8

    iput-object v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 621
    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .line 622
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_e

    shr-int/lit8 v7, v10, 0x3

    .line 623
    :cond_e
    add-int/2addr v14, v7

    .line 624
    sub-int v15, v16, v7

    .line 625
    .end local v16    # "p":I
    .restart local v15    # "p":I
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 627
    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 628
    move-object/from16 v0, p7

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 629
    move-object/from16 v0, p8

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 630
    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p8

    iput-wide v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 631
    move-object/from16 v0, p8

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 632
    move/from16 v0, v18

    move-object/from16 v1, p7

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 634
    const/16 v25, -0x3

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_3

    .line 640
    .end local v7    # "c":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_f
    and-int/lit8 v25, v9, 0x40

    if-nez v25, :cond_10

    .line 641
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    add-int v21, v21, v25

    .line 642
    sget-object v25, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v25, v25, v9

    and-int v25, v25, v6

    add-int v21, v21, v25

    .line 643
    add-int v25, v23, v21

    mul-int/lit8 v24, v25, 0x3

    .line 644
    aget v9, v22, v24

    if-nez v9, :cond_4

    .line 646
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    .line 647
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 649
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v25, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int/lit8 v26, v24, 0x2

    aget v26, v22, v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v25, v18

    .line 650
    add-int/lit8 v11, v11, -0x1

    move/from16 v15, v16

    .line 651
    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_2

    .line 653
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_10
    and-int/lit8 v25, v9, 0x20

    if-eqz v25, :cond_12

    .line 655
    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .line 656
    .restart local v7    # "c":I
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_11

    shr-int/lit8 v7, v10, 0x3

    .line 657
    :cond_11
    add-int/2addr v14, v7

    .line 658
    sub-int v15, v16, v7

    .line 659
    .end local v16    # "p":I
    .restart local v15    # "p":I
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 661
    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 662
    move-object/from16 v0, p7

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 663
    move-object/from16 v0, p8

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 664
    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p8

    iput-wide v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 665
    move-object/from16 v0, p8

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 666
    move/from16 v0, v18

    move-object/from16 v1, p7

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 668
    const/16 v25, 0x1

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_3

    .line 670
    .end local v7    # "c":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_12
    const-string/jumbo v25, "invalid literal/length code"

    move-object/from16 v0, v25

    move-object/from16 v1, p8

    iput-object v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 672
    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .line 673
    .restart local v7    # "c":I
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_13

    shr-int/lit8 v7, v10, 0x3

    .line 674
    :cond_13
    add-int/2addr v14, v7

    .line 675
    sub-int v15, v16, v7

    .line 676
    .end local v16    # "p":I
    .restart local v15    # "p":I
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 678
    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 679
    move-object/from16 v0, p7

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 680
    move-object/from16 v0, p8

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 681
    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p8

    iput-wide v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 682
    move-object/from16 v0, p8

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 683
    move/from16 v0, v18

    move-object/from16 v1, p7

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 685
    const/16 v25, -0x3

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_3

    .end local v7    # "c":I
    :cond_14
    move/from16 v18, v17

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto/16 :goto_1

    .restart local v7    # "c":I
    .restart local v8    # "d":I
    .restart local v20    # "r":I
    :cond_15
    move/from16 v19, v20

    .end local v20    # "r":I
    .restart local v19    # "r":I
    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_8

    .end local v17    # "q":I
    .end local v19    # "r":I
    .restart local v18    # "q":I
    .restart local v20    # "r":I
    :cond_16
    move/from16 v19, v20

    .end local v20    # "r":I
    .restart local v19    # "r":I
    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_9

    .end local v17    # "q":I
    .restart local v18    # "q":I
    :cond_17
    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_7
.end method

.method init(II[II[II)V
    .locals 1
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 94
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    .line 95
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    .line 96
    iput-object p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    .line 97
    iput p4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    .line 98
    iput-object p5, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    .line 99
    iput p6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    .line 101
    return-void
.end method

.method proc(Lorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 24
    .param p1, "s"    # Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
    .param p2, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p3, "r"    # I

    .prologue
    .line 107
    const/4 v11, 0x0

    .line 108
    .local v11, "b":I
    const/16 v16, 0x0

    .line 109
    .local v16, "k":I
    const/16 v19, 0x0

    .line 116
    .local v19, "p":I
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    .line 117
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v18, v0

    .line 118
    .local v18, "n":I
    move-object/from16 v0, p1

    iget v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 119
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move/from16 v16, v0

    .line 120
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    .line 121
    .local v21, "q":I
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 125
    .local v17, "m":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 446
    const/16 p3, -0x2

    .line 448
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 449
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 450
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 451
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 452
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 453
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 454
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    :goto_1
    return v2

    .line 121
    .end local v17    # "m":I
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_0

    .line 128
    .restart local v17    # "m":I
    :pswitch_0
    const/16 v2, 0x102

    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    const/16 v2, 0xa

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    .line 130
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 131
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 132
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 133
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 134
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 135
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 136
    move-object/from16 v0, p0

    iget-byte v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v2 .. v10}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_fast(II[II[IILorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result p3

    .line 139
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    .line 140
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move/from16 v18, v0

    .line 141
    move-object/from16 v0, p1

    iget v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 142
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move/from16 v16, v0

    .line 143
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    .line 144
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 146
    :goto_2
    if-eqz p3, :cond_3

    .line 147
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    const/4 v2, 0x7

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 144
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_2

    .line 147
    :cond_2
    const/16 v2, 0x9

    goto :goto_3

    .line 151
    :cond_3
    move-object/from16 v0, p0

    iget-byte v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    .line 153
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 155
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 157
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .local v15, "j":I
    move/from16 v20, v19

    .line 159
    .end local v19    # "p":I
    .local v20, "p":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v15, :cond_5

    .line 160
    if-eqz v18, :cond_4

    .line 161
    const/16 p3, 0x0

    .line 172
    add-int/lit8 v18, v18, -0x1

    .line 173
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 174
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_4

    .line 164
    :cond_4
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 165
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 166
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 167
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 168
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 169
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 170
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_1

    .line 177
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    mul-int/lit8 v23, v2, 0x3

    .line 179
    .local v23, "tindex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    ushr-int/2addr v11, v2

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    sub-int v16, v16, v2

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    aget v12, v2, v23

    .line 184
    .local v12, "e":I
    if-nez v12, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lit:I

    .line 186
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 187
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_0

    .line 189
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_6
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_7

    .line 190
    and-int/lit8 v2, v12, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    .line 192
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 193
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_0

    .line 195
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_7
    and-int/lit8 v2, v12, 0x40

    if-nez v2, :cond_8

    .line 196
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 197
    div-int/lit8 v2, v23, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v23, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    move/from16 v19, v20

    .line 198
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_0

    .line 200
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_8
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_9

    .line 201
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 202
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_0

    .line 204
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_9
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 205
    const-string/jumbo v2, "invalid literal/length code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 206
    const/16 p3, -0x3

    .line 208
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 209
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 210
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 211
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 212
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 213
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 214
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_1

    .line 217
    .end local v12    # "e":I
    .end local v15    # "j":I
    .end local v23    # "tindex":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .restart local v15    # "j":I
    move/from16 v20, v19

    .line 219
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v15, :cond_b

    .line 220
    if-eqz v18, :cond_a

    .line 221
    const/16 p3, 0x0

    .line 232
    add-int/lit8 v18, v18, -0x1

    .line 233
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 234
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_5

    .line 224
    :cond_a
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 225
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 226
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 227
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 228
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 229
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 230
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_1

    .line 237
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    .line 239
    shr-int/2addr v11, v15

    .line 240
    sub-int v16, v16, v15

    .line 242
    move-object/from16 v0, p0

    iget-byte v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    .line 244
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 245
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 247
    .end local v15    # "j":I
    .end local v20    # "p":I
    .restart local v19    # "p":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .restart local v15    # "j":I
    move/from16 v20, v19

    .line 249
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v15, :cond_d

    .line 250
    if-eqz v18, :cond_c

    .line 251
    const/16 p3, 0x0

    .line 262
    add-int/lit8 v18, v18, -0x1

    .line 263
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 264
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 254
    :cond_c
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 255
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 256
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 257
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 258
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 259
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 260
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_1

    .line 267
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    mul-int/lit8 v23, v2, 0x3

    .line 269
    .restart local v23    # "tindex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    shr-int/2addr v11, v2

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    sub-int v16, v16, v2

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    aget v12, v2, v23

    .line 273
    .restart local v12    # "e":I
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_e

    .line 274
    and-int/lit8 v2, v12, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v23, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    .line 276
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 277
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_0

    .line 279
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_e
    and-int/lit8 v2, v12, 0x40

    if-nez v2, :cond_f

    .line 280
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 281
    div-int/lit8 v2, v23, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v23, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    move/from16 v19, v20

    .line 282
    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_0

    .line 284
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_f
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 285
    const-string/jumbo v2, "invalid distance code"

    move-object/from16 v0, p2

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 286
    const/16 p3, -0x3

    .line 288
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 289
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 290
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 291
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 292
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 293
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 294
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_1

    .line 297
    .end local v12    # "e":I
    .end local v15    # "j":I
    .end local v23    # "tindex":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .restart local v15    # "j":I
    move/from16 v20, v19

    .line 299
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v15, :cond_11

    .line 300
    if-eqz v18, :cond_10

    .line 301
    const/16 p3, 0x0

    .line 312
    add-int/lit8 v18, v18, -0x1

    .line 313
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    aget-byte v2, v2, v20

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v11, v2

    .line 314
    add-int/lit8 v16, v16, 0x8

    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_7

    .line 304
    :cond_10
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 305
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 306
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 307
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v20, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 308
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 309
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 310
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto/16 :goto_1

    .line 317
    .end local v19    # "p":I
    .restart local v20    # "p":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v15

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    .line 319
    shr-int/2addr v11, v15

    .line 320
    sub-int v16, v16, v15

    .line 322
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v19, v20

    .line 324
    .end local v15    # "j":I
    .end local v20    # "p":I
    .restart local v19    # "p":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    sub-int v13, v21, v2

    .line 325
    .local v13, "f":I
    :goto_8
    if-gez v13, :cond_13

    .line 326
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    add-int/2addr v13, v2

    goto :goto_8

    .line 358
    :cond_12
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "q":I
    .local v22, "q":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "f":I
    .local v14, "f":I
    aget-byte v3, v3, v13

    aput-byte v3, v2, v21

    .line 359
    add-int/lit8 v17, v17, -0x1

    .line 361
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v14, v2, :cond_22

    .line 362
    const/4 v13, 0x0

    .line 364
    .end local v14    # "f":I
    .restart local v13    # "f":I
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    move/from16 v21, v22

    .line 328
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    if-eqz v2, :cond_19

    .line 330
    if-nez v17, :cond_12

    .line 331
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_14

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_14

    .line 332
    const/16 v21, 0x0

    .line 333
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_16

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 335
    :cond_14
    :goto_a
    if-nez v17, :cond_12

    .line 336
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 337
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p3

    .line 338
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    .line 339
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_17

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 341
    :goto_b
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_15

    .line 342
    const/16 v21, 0x0

    .line 343
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_18

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 346
    :cond_15
    :goto_c
    if-nez v17, :cond_12

    .line 347
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 348
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 349
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 350
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 351
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 352
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 353
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 333
    :cond_16
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_a

    .line 339
    :cond_17
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_b

    .line 343
    :cond_18
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_c

    .line 366
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 369
    .end local v13    # "f":I
    :pswitch_6
    if-nez v17, :cond_1f

    .line 370
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_1a

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_1a

    .line 371
    const/16 v21, 0x0

    .line 372
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1c

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 374
    :cond_1a
    :goto_d
    if-nez v17, :cond_1f

    .line 375
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 376
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p3

    .line 377
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    .line 378
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1d

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 380
    :goto_e
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_1b

    .line 381
    const/16 v21, 0x0

    .line 382
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1e

    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int v2, v2, v21

    add-int/lit8 v17, v2, -0x1

    .line 384
    :cond_1b
    :goto_f
    if-nez v17, :cond_1f

    .line 385
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 386
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 387
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 388
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 389
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 390
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 391
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 372
    :cond_1c
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_d

    .line 378
    :cond_1d
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_e

    .line 382
    :cond_1e
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int v17, v2, v21

    goto :goto_f

    .line 395
    :cond_1f
    const/16 p3, 0x0

    .line 397
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lit:I

    int-to-byte v3, v3

    aput-byte v3, v2, v21

    .line 398
    add-int/lit8 v17, v17, -0x1

    .line 400
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    move/from16 v21, v22

    .line 401
    .end local v22    # "q":I
    .restart local v21    # "q":I
    goto/16 :goto_0

    .line 403
    :pswitch_7
    const/4 v2, 0x7

    move/from16 v0, v16

    if-le v0, v2, :cond_20

    .line 404
    add-int/lit8 v16, v16, -0x8

    .line 405
    add-int/lit8 v18, v18, 0x1

    .line 406
    add-int/lit8 v19, v19, -0x1

    .line 409
    :cond_20
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 410
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p3

    .line 411
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move/from16 v21, v0

    .line 413
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-eq v2, v3, :cond_21

    .line 414
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 415
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 416
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 417
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 418
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 419
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 420
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 422
    :cond_21
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 424
    :pswitch_8
    const/16 p3, 0x1

    .line 425
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 426
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 427
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 428
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 429
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 430
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 431
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .line 435
    :pswitch_9
    const/16 p3, -0x3

    .line 437
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 438
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 439
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 440
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v19, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 441
    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 442
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 443
    invoke-virtual/range {p1 .. p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    goto/16 :goto_1

    .end local v21    # "q":I
    .restart local v14    # "f":I
    .restart local v22    # "q":I
    :cond_22
    move v13, v14

    .end local v14    # "f":I
    .restart local v13    # "f":I
    goto/16 :goto_9

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
