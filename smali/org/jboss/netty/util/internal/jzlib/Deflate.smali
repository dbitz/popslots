.class final Lorg/jboss/netty/util/internal/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/Deflate$1;,
        Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DYN_TREES:I = 0x2

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final INIT_STATE:I = 0x2a

.field private static final MAX_MATCH:I = 0x102

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_UNKNOWN:I = 0x2

.field private static final config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field bl_count:[S

.field bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field bl_tree:[S

.field block_start:I

.field d_buf:I

.field d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field data_type:B

.field depth:[B

.field dyn_dtree:[S

.field dyn_ltree:[S

.field good_match:I

.field private gzipUncompressedBytes:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:I

.field l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field nice_match:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I

.field wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

.field private wroteTrailer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x4

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    .line 79
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v0, v6, v1

    .line 80
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x1

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v7, 0x1

    move v3, v9

    move v4, v9

    move v5, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 81
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/4 v7, 0x1

    move v3, v9

    move v6, v11

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v10

    .line 82
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x3

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v4, 0x6

    const/4 v7, 0x1

    move v3, v9

    move v5, v12

    move v6, v12

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 84
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v5, 0x10

    const/16 v6, 0x10

    move v3, v9

    move v4, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v9

    .line 85
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x5

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x10

    move v3, v11

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 86
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x6

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x10

    const/16 v5, 0x80

    const/16 v6, 0x80

    move v3, v11

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 87
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x7

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v5, 0x80

    const/16 v6, 0x100

    move v3, v11

    move v4, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 88
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x80

    const/16 v5, 0x102

    const/16 v6, 0x400

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v11

    .line 89
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v8, 0x9

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x102

    const/16 v5, 0x102

    const/16 v6, 0x1000

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "need dictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "stream end"

    aput-object v2, v0, v1

    const-string/jumbo v1, ""

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string/jumbo v2, "file error"

    aput-object v2, v0, v1

    const-string/jumbo v1, "stream error"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string/jumbo v2, "data error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "insufficient memory"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "buffer error"

    aput-object v2, v0, v1

    const-string/jumbo v1, "incompatible version"

    aput-object v1, v0, v11

    const/16 v1, 0x9

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x23d

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    .line 202
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    .line 203
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    .line 205
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    .line 207
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    .line 213
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    .line 251
    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    .line 252
    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    .line 253
    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    .line 254
    return-void
.end method

.method private _tr_align()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 547
    invoke-direct {p0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 548
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 550
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_flush()V

    .line 556
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 557
    invoke-direct {p0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 558
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 559
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_flush()V

    .line 561
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 562
    return-void
.end method

.method private _tr_flush_block(IIZ)V
    .locals 8
    .param p1, "buf"    # I
    .param p2, "stored_len"    # I
    .param p3, "eof"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 811
    const/4 v0, 0x0

    .line 814
    .local v0, "max_blindex":I
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    if-lez v5, :cond_3

    .line 816
    iget-byte v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->data_type:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 817
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->set_data_type()V

    .line 821
    :cond_0
    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v5, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 823
    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v5, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 830
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->build_bl_tree()I

    move-result v0

    .line 833
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v1, v5, 0x3

    .line 834
    .local v1, "opt_lenb":I
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v2, v5, 0x3

    .line 836
    .local v2, "static_lenb":I
    if-gt v2, v1, :cond_1

    .line 837
    move v1, v2

    .line 843
    :cond_1
    :goto_0
    add-int/lit8 v5, p2, 0x4

    if-gt v5, v1, :cond_4

    const/4 v5, -0x1

    if-eq p1, v5, :cond_4

    .line 850
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 864
    :goto_1
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->init_block()V

    .line 866
    if-eqz p3, :cond_2

    .line 867
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_windup()V

    .line 869
    :cond_2
    return-void

    .line 840
    .end local v1    # "opt_lenb":I
    .end local v2    # "static_lenb":I
    :cond_3
    add-int/lit8 v2, p2, 0x5

    .restart local v2    # "static_lenb":I
    move v1, v2

    .restart local v1    # "opt_lenb":I
    goto :goto_0

    .line 851
    :cond_4
    if-ne v2, v1, :cond_6

    .line 852
    if-eqz p3, :cond_5

    :goto_2
    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 853
    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_dtree:[S

    invoke-direct {p0, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 852
    goto :goto_2

    .line 855
    :cond_6
    if-eqz p3, :cond_7

    :goto_3
    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v3, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 856
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, v3, v4, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_all_trees(III)V

    .line 858
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    invoke-direct {p0, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_7
    move v3, v4

    .line 855
    goto :goto_3
.end method

.method private _tr_stored_block(IIZ)V
    .locals 3
    .param p1, "buf"    # I
    .param p2, "stored_len"    # I
    .param p3, "eof"    # Z

    .prologue
    const/4 v1, 0x1

    .line 800
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 801
    invoke-direct {p0, p1, p2, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->copy_block(IIZ)V

    .line 802
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _tr_tally(II)Z
    .locals 12
    .param p1, "dist"    # I
    .param p2, "lc"    # I

    .prologue
    const/4 v3, 0x1

    .line 570
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    ushr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 571
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 573
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    add-int/2addr v5, v6

    int-to-byte v6, p2

    aput-byte v6, v4, v5

    .line 574
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    .line 576
    if-nez p1, :cond_0

    .line 578
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, p2, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 587
    :goto_0
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    and-int/lit16 v4, v4, 0x1fff

    if-nez v4, :cond_3

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 589
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v2, v4, 0x8

    .line 590
    .local v2, "out_length":I
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int v1, v4, v5

    .line 592
    .local v1, "in_length":I
    const/4 v0, 0x0

    .local v0, "dcode":I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 593
    int-to-long v4, v2

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v7, v0, 0x2

    aget-short v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    sget-object v10, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    aget v10, v10, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    .end local v0    # "dcode":I
    .end local v1    # "in_length":I
    .end local v2    # "out_length":I
    :cond_0
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    .line 582
    add-int/lit8 p1, p1, -0x1

    .line 583
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    aget-byte v5, v5, p2

    add-int/lit16 v5, v5, 0x100

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 584
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {p1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->d_code(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    goto :goto_0

    .line 596
    .restart local v0    # "dcode":I
    .restart local v1    # "in_length":I
    .restart local v2    # "out_length":I
    :cond_1
    ushr-int/lit8 v2, v2, 0x3

    .line 597
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_3

    div-int/lit8 v4, v1, 0x2

    if-ge v2, v4, :cond_3

    .line 602
    .end local v0    # "dcode":I
    .end local v1    # "in_length":I
    .end local v2    # "out_length":I
    :cond_2
    :goto_2
    return v3

    :cond_3
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_2
.end method

.method private bi_flush()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 680
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 681
    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 682
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 684
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 685
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    ushr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 686
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method private bi_windup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 693
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 697
    :cond_0
    :goto_0
    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 698
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 699
    return-void

    .line 694
    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    if-lez v0, :cond_0

    .line 695
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_0
.end method

.method private build_bl_tree()I
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->scan_tree([SI)V

    .line 402
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->scan_tree([SI)V

    .line 405
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v1, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 412
    const/16 v0, 0x12

    .local v0, "max_blindex":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 413
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    if-eqz v1, :cond_1

    .line 418
    :cond_0
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 420
    return v0

    .line 412
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private compress_block([S[S)V
    .locals 9
    .param p1, "ltree"    # [S
    .param p2, "dtree"    # [S

    .prologue
    .line 612
    const/4 v4, 0x0

    .line 616
    .local v4, "lx":I
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-eqz v5, :cond_2

    .line 618
    :cond_0
    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 620
    .local v1, "dist":I
    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .line 621
    .local v3, "lc":I
    add-int/lit8 v4, v4, 0x1

    .line 623
    if-nez v1, :cond_3

    .line 624
    invoke-direct {p0, v3, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 647
    :cond_1
    :goto_0
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-lt v4, v5, :cond_0

    .line 650
    .end local v1    # "dist":I
    .end local v3    # "lc":I
    :cond_2
    const/16 v5, 0x100

    invoke-direct {p0, v5, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 651
    const/16 v5, 0x201

    aget-short v5, p1, v5

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 652
    return-void

    .line 627
    .restart local v1    # "dist":I
    .restart local v3    # "lc":I
    :cond_3
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    aget-byte v0, v5, v3

    .line 629
    .local v0, "code":I
    add-int/lit16 v5, v0, 0x100

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 630
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_lbits:[I

    aget v2, v5, v0

    .line 631
    .local v2, "extra":I
    if-eqz v2, :cond_4

    .line 632
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_length:[I

    aget v5, v5, v0

    sub-int/2addr v3, v5

    .line 633
    invoke-direct {p0, v3, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 635
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 636
    invoke-static {v1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->d_code(I)I

    move-result v0

    .line 638
    invoke-direct {p0, v0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 639
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    aget v2, v5, v0

    .line 640
    if-eqz v2, :cond_1

    .line 641
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_dist:[I

    aget v5, v5, v0

    sub-int/2addr v1, v5

    .line 642
    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_0
.end method

.method private copy_block(IIZ)V
    .locals 1
    .param p1, "buf"    # I
    .param p2, "len"    # I
    .param p3, "header"    # Z

    .prologue
    .line 707
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_windup()V

    .line 708
    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 710
    if-eqz p3, :cond_0

    .line 711
    int-to-short v0, p2

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 712
    xor-int/lit8 v0, p2, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 719
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte([BII)V

    .line 720
    return-void
.end method

.method private deflateInit2(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIIIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .locals 3
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "level"    # I
    .param p3, "method"    # I
    .param p4, "windowBits"    # I
    .param p5, "memLevel"    # I
    .param p6, "strategy"    # I
    .param p7, "wrapperType"    # Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x1

    .line 1317
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1319
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1320
    const/4 p2, 0x6

    .line 1323
    :cond_0
    if-gez p4, :cond_1

    .line 1324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_1
    if-lt p5, v1, :cond_2

    if-gt p5, v2, :cond_2

    const/16 v0, 0x8

    if-ne p3, v0, :cond_2

    if-lt p4, v2, :cond_2

    const/16 v0, 0xf

    if-gt p4, v0, :cond_2

    if-ltz p2, :cond_2

    if-gt p2, v2, :cond_2

    if-ltz p6, :cond_2

    const/4 v0, 0x2

    if-le p6, v0, :cond_3

    .line 1331
    :cond_2
    const/4 v0, -0x2

    .line 1366
    :goto_0
    return v0

    .line 1334
    :cond_3
    iput-object p0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    .line 1336
    iput-object p7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 1337
    iput p4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    .line 1338
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    shl-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    .line 1339
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    .line 1341
    add-int/lit8 v0, p5, 0x7

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    .line 1342
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    shl-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    .line 1343
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    .line 1344
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    .line 1346
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    .line 1347
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    .line 1348
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    .line 1350
    add-int/lit8 v0, p5, 0x6

    shl-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    .line 1354
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    .line 1355
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    .line 1357
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    .line 1358
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    .line 1360
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    .line 1364
    iput p6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    .line 1366
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    goto :goto_0
.end method

.method private deflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 6
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1370
    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 1371
    iput-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1373
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    .line 1374
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    .line 1376
    iput-boolean v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    .line 1377
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x71

    :goto_0
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    .line 1378
    invoke-static {v4, v5, v3, v2, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 1379
    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 1380
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    .line 1382
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1384
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->tr_init()V

    .line 1385
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lm_init()V

    .line 1386
    return v2

    .line 1377
    :cond_0
    const/16 v0, 0x2a

    goto :goto_0
.end method

.method private deflate_fast(I)I
    .locals 12
    .param p1, "flush"    # I

    .prologue
    const/4 v3, 0x1

    const v11, 0xffff

    const/4 v10, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 963
    const/4 v1, 0x0

    .line 971
    .local v1, "hash_head":I
    :cond_0
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v2, v6, :cond_3

    .line 972
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    .line 973
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v2, v6, :cond_2

    if-nez p1, :cond_2

    .line 1067
    :cond_1
    :goto_0
    return v4

    .line 976
    :cond_2
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_3

    .line 1059
    if-ne p1, v10, :cond_9

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1060
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_a

    .line 1061
    if-ne p1, v10, :cond_1

    .line 1062
    const/4 v4, 0x2

    goto :goto_0

    .line 983
    :cond_3
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v2, v5, :cond_4

    .line 984
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v2, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 988
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v6

    and-int v1, v2, v11

    .line 989
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v2, v6

    .line 990
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 996
    :cond_4
    int-to-long v6, v1

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v11

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v6, v6, -0x106

    if-gt v2, v6, :cond_5

    .line 1001
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_5

    .line 1002
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1006
    :cond_5
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-lt v2, v5, :cond_8

    .line 1009
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/lit8 v6, v6, -0x3

    invoke-direct {p0, v2, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1012
    .local v0, "bflush":Z
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    sub-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1016
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    if-gt v2, v6, :cond_7

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v2, v5, :cond_7

    .line 1017
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1019
    :cond_6
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1021
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v2, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1025
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v6

    and-int v1, v2, v11

    .line 1026
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v2, v6

    .line 1027
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v7, v7

    aput-short v7, v2, v6

    .line 1031
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-nez v2, :cond_6

    .line 1032
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1050
    :goto_2
    if-eqz v0, :cond_0

    .line 1052
    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1053
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1034
    :cond_7
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1035
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1036
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1038
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v2, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    goto :goto_2

    .line 1046
    .end local v0    # "bflush":Z
    :cond_8
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v4, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1047
    .restart local v0    # "bflush":Z
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1048
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    goto :goto_2

    .end local v0    # "bflush":Z
    :cond_9
    move v2, v4

    .line 1059
    goto/16 :goto_1

    .line 1067
    :cond_a
    if-ne p1, v10, :cond_b

    move v3, v5

    :cond_b
    move v4, v3

    goto/16 :goto_0
.end method

.method private deflate_slow(I)I
    .locals 12
    .param p1, "flush"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 1075
    const/4 v1, 0x0

    .line 1085
    .local v1, "hash_head":I
    :cond_0
    :goto_0
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v8, 0x106

    if-ge v3, v8, :cond_4

    .line 1086
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    .line 1087
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v8, 0x106

    if-ge v3, v8, :cond_2

    if-nez p1, :cond_2

    .line 1211
    :cond_1
    :goto_1
    return v5

    .line 1090
    :cond_2
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v3, :cond_4

    .line 1197
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    if-eqz v3, :cond_3

    .line 1198
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v5, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    .line 1199
    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 1201
    :cond_3
    if-ne p1, v11, :cond_e

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1203
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_f

    .line 1204
    if-ne p1, v11, :cond_1

    move v5, v7

    .line 1205
    goto :goto_1

    .line 1098
    :cond_4
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v3, v6, :cond_5

    .line 1099
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v8

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, -0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v3, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v8

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1102
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v3, v3, v8

    const v8, 0xffff

    and-int v1, v3, v8

    .line 1103
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v3, v8

    .line 1104
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1108
    :cond_5
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    .line 1109
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_match:I

    .line 1110
    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1112
    if-eqz v1, :cond_8

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    if-ge v3, v8, :cond_8

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v1

    const v8, 0xffff

    and-int/2addr v3, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v8, v8, -0x106

    if-gt v3, v8, :cond_8

    .line 1118
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v3, v7, :cond_6

    .line 1119
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->longest_match(I)I

    move-result v3

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1123
    :cond_6
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    const/4 v8, 0x5

    if-gt v3, v8, :cond_8

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-ne v3, v6, :cond_8

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    sub-int/2addr v3, v8

    const/16 v8, 0x1000

    if-le v3, v8, :cond_8

    .line 1129
    :cond_7
    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1135
    :cond_8
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-lt v3, v6, :cond_b

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-gt v3, v8, :cond_b

    .line 1136
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v3, v8

    add-int/lit8 v2, v3, -0x3

    .line 1141
    .local v2, "max_insert":I
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, -0x1

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_match:I

    sub-int/2addr v3, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x3

    invoke-direct {p0, v3, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1148
    .local v0, "bflush":Z
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v3, v8

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1149
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    .line 1151
    :cond_9
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-gt v3, v2, :cond_a

    .line 1152
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v8

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, -0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v3, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v8

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1156
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v3, v3, v8

    const v8, 0xffff

    and-int v1, v3, v8

    .line 1157
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v3, v8

    .line 1158
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 1160
    :cond_a
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-nez v3, :cond_9

    .line 1161
    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 1162
    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1163
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1165
    if-eqz v0, :cond_0

    .line 1166
    invoke-direct {p0, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1167
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1171
    .end local v0    # "bflush":Z
    .end local v2    # "max_insert":I
    :cond_b
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    if-eqz v3, :cond_d

    .line 1177
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v5, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    .line 1179
    .restart local v0    # "bflush":Z
    if-eqz v0, :cond_c

    .line 1180
    invoke-direct {p0, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1182
    :cond_c
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1183
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1184
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1191
    .end local v0    # "bflush":Z
    :cond_d
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 1192
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1193
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    goto/16 :goto_0

    :cond_e
    move v3, v5

    .line 1201
    goto/16 :goto_2

    .line 1211
    :cond_f
    if-ne p1, v11, :cond_10

    move v4, v6

    :cond_10
    move v5, v4

    goto/16 :goto_1
.end method

.method private deflate_stored(I)I
    .locals 7
    .param p1, "flush"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 740
    const v0, 0xffff

    .line 743
    .local v0, "max_block_size":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_0

    .line 744
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v0, v2, -0x5

    .line 750
    :cond_0
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-gt v2, v3, :cond_3

    .line 751
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    .line 752
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 792
    :cond_1
    :goto_0
    return v4

    .line 755
    :cond_2
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_3

    .line 787
    if-ne p1, v6, :cond_6

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 788
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_7

    .line 789
    if-ne p1, v6, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    .line 760
    :cond_3
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 761
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 764
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    add-int v1, v2, v0

    .line 765
    .local v1, "max_start":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-lt v2, v1, :cond_5

    .line 767
    :cond_4
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 768
    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 770
    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 771
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-eqz v2, :cond_1

    .line 779
    :cond_5
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v2, v5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v5, v5, -0x106

    if-lt v2, v5, :cond_0

    .line 780
    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 781
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    goto :goto_0

    .end local v1    # "max_start":I
    :cond_6
    move v2, v4

    .line 787
    goto :goto_1

    .line 792
    :cond_7
    if-ne p1, v6, :cond_8

    const/4 v3, 0x3

    :cond_8
    move v4, v3

    goto :goto_0
.end method

.method private fill_window()V
    .locals 10

    .prologue
    const v9, 0xffff

    const/4 v5, 0x0

    .line 885
    :cond_0
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window_size:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    sub-int/2addr v4, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int v1, v4, v6

    .line 888
    .local v1, "more":I
    if-nez v1, :cond_3

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-nez v4, :cond_3

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v4, :cond_3

    .line 889
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    .line 927
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_9

    .line 954
    :cond_2
    :goto_1
    return-void

    .line 890
    :cond_3
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 893
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 897
    :cond_4
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, -0x106

    if-lt v4, v6, :cond_1

    .line 898
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    invoke-static {v4, v6, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    .line 900
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 901
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 909
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    .line 910
    .local v2, "n":I
    move v3, v2

    .line 912
    .local v3, "p":I
    :cond_5
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v9

    .line 913
    .local v0, "m":I
    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    if-lt v0, v4, :cond_7

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_2
    aput-short v4, v6, v3

    .line 914
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5

    .line 916
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    .line 917
    move v3, v2

    .line 919
    :cond_6
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v9

    .line 920
    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    if-lt v0, v4, :cond_8

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_3
    aput-short v4, v6, v3

    .line 923
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_6

    .line 924
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 913
    goto :goto_2

    :cond_8
    move v4, v5

    .line 920
    goto :goto_3

    .line 942
    .end local v0    # "m":I
    .end local v2    # "n":I
    .end local v3    # "p":I
    :cond_9
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v6, v7, v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->read_buf([BII)I

    move-result v2

    .line 943
    .restart local v2    # "n":I
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 946
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_a

    .line 947
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 948
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v4, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v6

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 953
    :cond_a
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v4, v6, :cond_2

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_0

    goto/16 :goto_1
.end method

.method private flush_block_only(Z)V
    .locals 3
    .param p1, "eof"    # Z

    .prologue
    .line 723
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    :goto_0
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_flush_block(IIZ)V

    .line 725
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 726
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 727
    return-void

    .line 723
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private init_block()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11e

    if-ge v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 302
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v1, v2

    .line 306
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 307
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    .line 308
    return-void
.end method

.method private lm_init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window_size:I

    .line 260
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_lazy:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    .line 261
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->good_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    .line 262
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->nice_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    .line 263
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_chain:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    .line 265
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 266
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 267
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 268
    const/4 v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 269
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 270
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 271
    return-void
.end method

.method private longest_match(I)I
    .locals 14
    .param p1, "cur_match"    # I

    .prologue
    .line 1215
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    .line 1216
    .local v1, "chain_length":I
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1219
    .local v6, "scan":I
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    .line 1220
    .local v0, "best_len":I
    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v12, v12, -0x106

    if-le v11, v12, :cond_4

    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v12, v12, -0x106

    sub-int v3, v11, v12

    .line 1222
    .local v3, "limit":I
    :goto_0
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    .line 1227
    .local v5, "nice_match":I
    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    .line 1229
    .local v10, "wmask":I
    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit16 v9, v11, 0x102

    .line 1230
    .local v9, "strend":I
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1231
    .local v8, "scan_end1":B
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    .line 1237
    .local v7, "scan_end":B
    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    if-lt v11, v12, :cond_0

    .line 1238
    shr-int/lit8 v1, v1, 0x2

    .line 1243
    :cond_0
    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-le v5, v11, :cond_1

    .line 1244
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1248
    :cond_1
    move v4, p1

    .line 1252
    .local v4, "match":I
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v4, v0

    aget-byte v11, v11, v12

    if-ne v11, v7, :cond_2

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v4, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v11, v11, v12

    if-ne v11, v8, :cond_2

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v11, v11, v4

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v12, v12, v6

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v11, v11, v4

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v13, v6, 0x1

    aget-byte v12, v12, v13

    if-eq v11, v12, :cond_5

    .line 1294
    :cond_2
    :goto_1
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    and-int v12, p1, v10

    aget-short v11, v11, v12

    const v12, 0xffff

    and-int p1, v11, v12

    if-le p1, v3, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    .line 1296
    :cond_3
    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-gt v0, v11, :cond_8

    .line 1299
    .end local v0    # "best_len":I
    :goto_2
    return v0

    .line 1220
    .end local v3    # "limit":I
    .end local v4    # "match":I
    .end local v5    # "nice_match":I
    .end local v7    # "scan_end":B
    .end local v8    # "scan_end1":B
    .end local v9    # "strend":I
    .end local v10    # "wmask":I
    .restart local v0    # "best_len":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1264
    .restart local v3    # "limit":I
    .restart local v4    # "match":I
    .restart local v5    # "nice_match":I
    .restart local v7    # "scan_end":B
    .restart local v8    # "scan_end1":B
    .restart local v9    # "strend":I
    .restart local v10    # "wmask":I
    :cond_5
    add-int/lit8 v6, v6, 0x2

    .line 1265
    add-int/lit8 v4, v4, 0x1

    .line 1276
    :cond_6
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_7

    if-lt v6, v9, :cond_6

    .line 1280
    :cond_7
    sub-int v11, v9, v6

    rsub-int v2, v11, 0x102

    .line 1281
    .local v2, "len":I
    add-int/lit16 v6, v9, -0x102

    .line 1283
    if-le v2, v0, :cond_2

    .line 1284
    iput p1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    .line 1285
    move v0, v2

    .line 1286
    if-ge v2, v5, :cond_3

    .line 1289
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1290
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    goto/16 :goto_1

    .line 1299
    .end local v2    # "len":I
    :cond_8
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    goto/16 :goto_2
.end method

.method private final putShortMSB(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 512
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 513
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 514
    return-void
.end method

.method private final put_byte(B)V
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 503
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    .line 504
    return-void
.end method

.method private final put_byte([BII)V
    .locals 2
    .param p1, "p"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    .line 500
    return-void
.end method

.method private final put_short(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 507
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 508
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 509
    return-void
.end method

.method private scan_tree([SI)V
    .locals 10
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    .prologue
    .line 350
    const/4 v6, -0x1

    .line 352
    .local v6, "prevlen":I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 353
    .local v5, "nextlen":I
    const/4 v0, 0x0

    .line 354
    .local v0, "count":I
    const/4 v2, 0x7

    .line 355
    .local v2, "max_count":I
    const/4 v3, 0x4

    .line 357
    .local v3, "min_count":I
    if-nez v5, :cond_0

    .line 358
    const/16 v2, 0x8a

    .line 359
    const/4 v3, 0x3

    .line 361
    :cond_0
    add-int/lit8 v7, p2, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    aput-short v8, p1, v7

    .line 363
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-gt v4, p2, :cond_8

    .line 364
    move v1, v5

    .line 365
    .local v1, "curlen":I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 366
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-ne v1, v5, :cond_1

    .line 363
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    :cond_1
    if-ge v0, v3, :cond_2

    .line 369
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 380
    :goto_2
    const/4 v0, 0x0

    .line 381
    move v6, v1

    .line 382
    if-nez v5, :cond_6

    .line 383
    const/16 v2, 0x8a

    .line 384
    const/4 v3, 0x3

    goto :goto_1

    .line 370
    :cond_2
    if-eqz v1, :cond_4

    .line 371
    if-eq v1, v6, :cond_3

    .line 372
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 374
    :cond_3
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x20

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 375
    :cond_4
    const/16 v7, 0xa

    if-gt v0, v7, :cond_5

    .line 376
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x22

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 378
    :cond_5
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x24

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 385
    :cond_6
    if-ne v1, v5, :cond_7

    .line 386
    const/4 v2, 0x6

    .line 387
    const/4 v3, 0x3

    goto :goto_1

    .line 389
    :cond_7
    const/4 v2, 0x7

    .line 390
    const/4 v3, 0x4

    goto :goto_1

    .line 393
    .end local v1    # "curlen":I
    :cond_8
    return-void
.end method

.method private send_all_trees(III)V
    .locals 3
    .param p1, "lcodes"    # I
    .param p2, "dcodes"    # I
    .param p3, "blcodes"    # I

    .prologue
    const/4 v2, 0x5

    .line 429
    add-int/lit16 v1, p1, -0x101

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 430
    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 431
    add-int/lit8 v1, p3, -0x4

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 432
    const/4 v0, 0x0

    .local v0, "rank":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 433
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_tree([SI)V

    .line 436
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_tree([SI)V

    .line 437
    return-void
.end method

.method private send_bits(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    const v4, 0xffff

    .line 522
    move v0, p2

    .line 523
    .local v0, "len":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v3, v0, 0x10

    if-le v2, v3, :cond_0

    .line 524
    move v1, p1

    .line 526
    .local v1, "val":I
    iget-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    shl-int v3, v1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 527
    iget-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 528
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v2, v2, 0x10

    ushr-int v2, v1, v2

    int-to-short v2, v2

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 529
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v3, v0, -0x10

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 535
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    shl-int v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 533
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method private final send_code(I[S)V
    .locals 4
    .param p1, "c"    # I
    .param p2, "tree"    # [S

    .prologue
    const v3, 0xffff

    .line 517
    mul-int/lit8 v0, p1, 0x2

    .line 518
    .local v0, "c2":I
    aget-short v1, p2, v0

    and-int/2addr v1, v3

    add-int/lit8 v2, v0, 0x1

    aget-short v2, p2, v2

    and-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 519
    return-void
.end method

.method private send_tree([SI)V
    .locals 9
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    .prologue
    .line 445
    const/4 v6, -0x1

    .line 447
    .local v6, "prevlen":I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 448
    .local v5, "nextlen":I
    const/4 v0, 0x0

    .line 449
    .local v0, "count":I
    const/4 v2, 0x7

    .line 450
    .local v2, "max_count":I
    const/4 v3, 0x4

    .line 452
    .local v3, "min_count":I
    if-nez v5, :cond_0

    .line 453
    const/16 v2, 0x8a

    .line 454
    const/4 v3, 0x3

    .line 457
    :cond_0
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-gt v4, p2, :cond_9

    .line 458
    move v1, v5

    .line 459
    .local v1, "curlen":I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 460
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-ne v1, v5, :cond_1

    .line 457
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 462
    :cond_1
    if-ge v0, v3, :cond_3

    .line 464
    :cond_2
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 465
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 480
    :goto_2
    const/4 v0, 0x0

    .line 481
    move v6, v1

    .line 482
    if-nez v5, :cond_7

    .line 483
    const/16 v2, 0x8a

    .line 484
    const/4 v3, 0x3

    goto :goto_1

    .line 466
    :cond_3
    if-eqz v1, :cond_5

    .line 467
    if-eq v1, v6, :cond_4

    .line 468
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 469
    add-int/lit8 v0, v0, -0x1

    .line 471
    :cond_4
    const/16 v7, 0x10

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 472
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_2

    .line 473
    :cond_5
    const/16 v7, 0xa

    if-gt v0, v7, :cond_6

    .line 474
    const/16 v7, 0x11

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 475
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_2

    .line 477
    :cond_6
    const/16 v7, 0x12

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 478
    add-int/lit8 v7, v0, -0xb

    const/4 v8, 0x7

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_2

    .line 485
    :cond_7
    if-ne v1, v5, :cond_8

    .line 486
    const/4 v2, 0x6

    .line 487
    const/4 v3, 0x3

    goto :goto_1

    .line 489
    :cond_8
    const/4 v2, 0x7

    .line 490
    const/4 v3, 0x4

    goto :goto_1

    .line 493
    .end local v1    # "curlen":I
    :cond_9
    return-void
.end method

.method private set_data_type()V
    .locals 5

    .prologue
    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, "n":I
    const/4 v0, 0x0

    .line 661
    .local v0, "ascii_freq":I
    const/4 v1, 0x0

    .line 662
    .local v1, "bin_freq":I
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 663
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v1, v3

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    :cond_0
    :goto_1
    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 667
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v0, v3

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 670
    :cond_1
    :goto_2
    const/16 v3, 0x100

    if-ge v2, v3, :cond_2

    .line 671
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v1, v3

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 674
    :cond_2
    ushr-int/lit8 v3, v0, 0x2

    if-le v1, v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    int-to-byte v3, v3

    iput-byte v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->data_type:B

    .line 675
    return-void

    .line 674
    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private static smaller([SII[B)Z
    .locals 4
    .param p0, "tree"    # [S
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "depth"    # [B

    .prologue
    .line 339
    mul-int/lit8 v2, p1, 0x2

    aget-short v1, p0, v2

    .line 340
    .local v1, "tn2":S
    mul-int/lit8 v2, p2, 0x2

    aget-short v0, p0, v2

    .line 341
    .local v0, "tm2":S
    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    aget-byte v2, p3, p1

    aget-byte v3, p3, p2

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private tr_init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 277
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_l_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    .line 279
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 280
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_d_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    .line 282
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 283
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_bl_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    .line 285
    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 286
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 287
    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 290
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->init_block()V

    .line 291
    return-void
.end method


# virtual methods
.method deflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 11
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "flush"    # I

    .prologue
    .line 1472
    const/4 v6, 0x4

    if-gt p2, v6, :cond_0

    if-gez p2, :cond_1

    .line 1473
    :cond_0
    const/4 v6, -0x2

    .line 1671
    :goto_0
    return v6

    .line 1476
    :cond_1
    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    if-eqz v6, :cond_3

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    if-nez v6, :cond_2

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v6, :cond_3

    :cond_2
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v7, 0x29a

    if-ne v6, v7, :cond_4

    const/4 v6, 0x4

    if-eq p2, v6, :cond_4

    .line 1479
    :cond_3
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    iput-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1480
    const/4 v6, -0x2

    goto :goto_0

    .line 1482
    :cond_4
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_5

    .line 1483
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    iput-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1484
    const/4 v6, -0x5

    goto :goto_0

    .line 1487
    :cond_5
    iput-object p1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 1488
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1489
    .local v4, "old_flush":I
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1492
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_6

    .line 1493
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1548
    :goto_1
    const/16 v6, 0x71

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    .line 1552
    :cond_6
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-eqz v6, :cond_a

    .line 1553
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 1554
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_b

    .line 1561
    const/4 v6, -0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1562
    const/4 v6, 0x0

    goto :goto_0

    .line 1495
    :pswitch_0
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    add-int/lit8 v6, v6, -0x8

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x8

    shl-int/lit8 v1, v6, 0x8

    .line 1496
    .local v1, "header":I
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    add-int/lit8 v6, v6, -0x1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v3, v6, 0x1

    .line 1498
    .local v3, "level_flags":I
    const/4 v6, 0x3

    if-le v3, v6, :cond_7

    .line 1499
    const/4 v3, 0x3

    .line 1501
    :cond_7
    shl-int/lit8 v6, v3, 0x6

    or-int/2addr v1, v6

    .line 1502
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v6, :cond_8

    .line 1503
    or-int/lit8 v1, v1, 0x20

    .line 1505
    :cond_8
    rem-int/lit8 v6, v1, 0x1f

    rsub-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    .line 1507
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1510
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v6, :cond_9

    .line 1511
    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const/16 v8, 0x10

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1512
    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1514
    :cond_9
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v6

    iput-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    goto :goto_1

    .line 1518
    .end local v1    # "header":I
    .end local v3    # "level_flags":I
    :pswitch_1
    const/16 v6, 0x1f

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1519
    const/16 v6, -0x75

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1521
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1523
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1525
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1526
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1527
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1528
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1530
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v6, v6, v7

    iget v6, v6, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    packed-switch v6, :pswitch_data_1

    .line 1538
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1542
    :goto_2
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1544
    const/4 v6, 0x0

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto/16 :goto_1

    .line 1532
    :pswitch_2
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_2

    .line 1535
    :pswitch_3
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_2

    .line 1568
    :cond_a
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v6, :cond_b

    if-gt p2, v4, :cond_b

    const/4 v6, 0x4

    if-eq p2, v6, :cond_b

    .line 1570
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    iput-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1571
    const/4 v6, -0x5

    goto/16 :goto_0

    .line 1575
    :cond_b
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v7, 0x29a

    if-ne v6, v7, :cond_c

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v6, :cond_c

    .line 1576
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    iput-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1577
    const/4 v6, -0x5

    goto/16 :goto_0

    .line 1581
    :cond_c
    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 1583
    .local v5, "old_next_in_index":I
    :try_start_0
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v6, :cond_d

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v6, :cond_d

    if-eqz p2, :cond_15

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v7, 0x29a

    if-eq v6, v7, :cond_15

    .line 1585
    :cond_d
    const/4 v0, -0x1

    .line 1586
    .local v0, "bstate":I
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v6, v6, v7

    iget v6, v6, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    packed-switch v6, :pswitch_data_2

    .line 1599
    :goto_3
    const/4 v6, 0x2

    if-eq v0, v6, :cond_e

    const/4 v6, 0x3

    if-ne v0, v6, :cond_f

    .line 1600
    :cond_e
    const/16 v6, 0x29a

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    .line 1602
    :cond_f
    if-eqz v0, :cond_10

    const/4 v6, 0x2

    if-ne v0, v6, :cond_12

    .line 1603
    :cond_10
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_11

    .line 1604
    const/4 v6, -0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    :cond_11
    const/4 v6, 0x0

    .line 1637
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v8, v5

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    goto/16 :goto_0

    .line 1588
    :pswitch_4
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_stored(I)I

    move-result v0

    .line 1589
    goto :goto_3

    .line 1591
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_fast(I)I

    move-result v0

    .line 1592
    goto :goto_3

    .line 1594
    :pswitch_6
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_slow(I)I

    move-result v0

    .line 1595
    goto :goto_3

    .line 1615
    :cond_12
    const/4 v6, 0x1

    if-ne v0, v6, :cond_15

    .line 1616
    const/4 v6, 0x1

    if-ne p2, v6, :cond_14

    .line 1617
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_align()V

    .line 1629
    :cond_13
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 1630
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_15

    .line 1631
    const/4 v6, -0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    const/4 v6, 0x0

    .line 1637
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v8, v5

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    goto/16 :goto_0

    .line 1619
    :cond_14
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v6, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 1622
    const/4 v6, 0x3

    if-ne p2, v6, :cond_13

    .line 1624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    if-ge v2, v6, :cond_13

    .line 1625
    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    const/4 v7, 0x0

    aput-short v7, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1624
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1637
    .end local v0    # "bstate":I
    .end local v2    # "i":I
    :cond_15
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    .line 1640
    const/4 v6, 0x4

    if-eq p2, v6, :cond_16

    .line 1641
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1637
    :catchall_0
    move-exception v6

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v8, v5

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    throw v6

    .line 1644
    :cond_16
    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-eq v6, v7, :cond_17

    iget-boolean v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    if-eqz v6, :cond_18

    .line 1645
    :cond_17
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1648
    :cond_18
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 1667
    :goto_5
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 1670
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    .line 1671
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1651
    :pswitch_7
    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const/16 v8, 0x10

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1652
    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    goto :goto_5

    .line 1656
    :pswitch_8
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1657
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1658
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1659
    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1660
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1661
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1662
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1663
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_5

    .line 1671
    :cond_19
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1530
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1586
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1648
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method deflateEnd()I
    .locals 4

    .prologue
    const/16 v3, 0x71

    const/4 v2, 0x0

    .line 1390
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_0

    .line 1392
    const/4 v0, -0x2

    .line 1401
    :goto_0
    return v0

    .line 1395
    :cond_0
    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    .line 1396
    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    .line 1397
    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    .line 1398
    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    .line 1401
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    if-ne v0, v3, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method deflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;IILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .locals 8
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "level"    # I
    .param p3, "bits"    # I
    .param p4, "wrapperType"    # Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .prologue
    const/16 v3, 0x8

    .line 1303
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, v3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateInit2(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIIIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method deflateParams(Lorg/jboss/netty/util/internal/jzlib/ZStream;II)I
    .locals 6
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "_level"    # I
    .param p3, "_strategy"    # I

    .prologue
    .line 1405
    const/4 v0, 0x0

    .line 1407
    .local v0, "err":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1408
    const/4 p2, 0x6

    .line 1410
    :cond_0
    if-ltz p2, :cond_1

    const/16 v1, 0x9

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    const/4 v1, 0x2

    if-le p3, v1, :cond_2

    .line 1412
    :cond_1
    const/4 v1, -0x2

    .line 1429
    :goto_0
    return v1

    .line 1415
    :cond_2
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    aget-object v2, v2, p2

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    if-eq v1, v2, :cond_3

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1418
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 1421
    :cond_3
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    if-eq v1, p2, :cond_4

    .line 1422
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    .line 1423
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_lazy:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    .line 1424
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->good_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    .line 1425
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->nice_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    .line 1426
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_chain:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    .line 1428
    :cond_4
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    move v1, v0

    .line 1429
    goto :goto_0
.end method

.method deflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I
    .locals 8
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "dictionary"    # [B
    .param p3, "dictLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 1433
    move v1, p3

    .line 1434
    .local v1, "length":I
    const/4 v0, 0x0

    .line 1436
    .local v0, "index":I
    if-eqz p2, :cond_0

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    .line 1437
    :cond_0
    const/4 v3, -0x2

    .line 1466
    :cond_1
    return v3

    .line 1440
    :cond_2
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    invoke-static {v4, v5, p2, v3, p3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 1442
    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    .line 1445
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    if-le v1, v4, :cond_3

    .line 1446
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v1, v4, -0x106

    .line 1447
    sub-int v0, p3, v1

    .line 1449
    :cond_3
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    invoke-static {p2, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1450
    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1451
    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 1457
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1458
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v5

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v5

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1460
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    add-int/lit8 v4, v1, -0x3

    if-gt v2, v4, :cond_1

    .line 1461
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v5

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v5

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1463
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v5, v2

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v6, v6, v7

    aput-short v6, v4, v5

    .line 1464
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    int-to-short v6, v2

    aput-short v6, v4, v5

    .line 1460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method pqdownheap([SI)V
    .locals 5
    .param p1, "tree"    # [S
    .param p2, "k"    # I

    .prologue
    .line 317
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v1, v2, p2

    .line 318
    .local v1, "v":I
    shl-int/lit8 v0, p2, 0x1

    .line 319
    .local v0, "j":I
    :goto_0
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-gt v0, v2, :cond_1

    .line 321
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    invoke-static {p1, v2, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 325
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    invoke-static {p1, v1, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aput v1, v2, p2

    .line 336
    return-void

    .line 330
    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    aput v3, v2, p2

    .line 331
    move p2, v0

    .line 333
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
