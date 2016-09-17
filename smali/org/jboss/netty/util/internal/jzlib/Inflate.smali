.class final Lorg/jboss/netty/util/internal/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/Inflate$1;
    }
.end annotation


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final FLAG:I = 0x1

.field private static final GZIP_CM:I = 0x10

.field private static final GZIP_CRC32:I = 0x18

.field private static final GZIP_FCOMMENT:I = 0x16

.field private static final GZIP_FEXTRA:I = 0x14

.field private static final GZIP_FHCRC:I = 0x17

.field private static final GZIP_FLG:I = 0x11

.field private static final GZIP_FNAME:I = 0x15

.field private static final GZIP_ID1:I = 0xe

.field private static final GZIP_ID2:I = 0xf

.field private static final GZIP_ISIZE:I = 0x19

.field private static final GZIP_MTIME_XFL_OS:I = 0x12

.field private static final GZIP_XLEN:I = 0x13

.field private static final METHOD:I

.field private static final mark:[B


# instance fields
.field private blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

.field private gzipBytesToRead:I

.field private gzipCRC32:I

.field private gzipFlag:I

.field private gzipISize:I

.field private gzipUncompressedBytes:I

.field private gzipXLen:I

.field private marker:I

.field private method:I

.field private mode:I

.field private need:J

.field private final was:[J

.field private wbits:I

.field private wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mark:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    return-void
.end method

.method private inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 5
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 103
    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    const/4 v0, -0x2

    .line 122
    :goto_0
    return v0

    .line 107
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 108
    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 109
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Inflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_1
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    .line 121
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x7

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xe

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method inflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 12
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "f"    # I

    .prologue
    .line 164
    if-eqz p1, :cond_0

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    if-nez v4, :cond_2

    .line 165
    :cond_0
    const/4 v3, -0x2

    .line 541
    :cond_1
    :goto_0
    return v3

    .line 167
    :cond_2
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    const/4 p2, -0x5

    .line 168
    :goto_1
    const/4 v3, -0x5

    .line 171
    .local v3, "r":I
    :goto_2
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    packed-switch v4, :pswitch_data_0

    .line 541
    const/4 v3, -0x2

    goto :goto_0

    .line 167
    .end local v3    # "r":I
    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    .line 174
    .restart local v3    # "r":I
    :pswitch_0
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 177
    move v3, p2

    .line 179
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 180
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 181
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    and-int/lit8 v4, v5, 0xf

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 182
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 183
    const-string/jumbo v4, "unknown compression method"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 184
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto :goto_2

    .line 187
    :cond_4
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x8

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    if-le v4, v5, :cond_5

    .line 188
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 189
    const-string/jumbo v4, "invalid window size"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 190
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto :goto_2

    .line 193
    :cond_5
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x1

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 196
    :pswitch_1
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 199
    move v3, p2

    .line 201
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 202
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 203
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 205
    .local v0, "b":I
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_6

    .line 206
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 207
    const-string/jumbo v4, "incorrect header check"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 208
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 212
    :cond_6
    and-int/lit8 v4, v0, 0x20

    if-nez v4, :cond_7

    .line 213
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x7

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 216
    :cond_7
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x2

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 219
    .end local v0    # "b":I
    :pswitch_2
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 222
    move v3, p2

    .line 224
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 225
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 226
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    int-to-long v6, v5

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 227
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x3

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 230
    :pswitch_3
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 233
    move v3, p2

    .line 235
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 236
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 237
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v8, v5

    const-wide/32 v10, 0xff0000

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 238
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x4

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 241
    :pswitch_4
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 244
    move v3, p2

    .line 246
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 247
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 248
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v8, v5

    const-wide/32 v10, 0xff00

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 249
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 252
    :pswitch_5
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 256
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 257
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 258
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v8

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 259
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 260
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x6

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 261
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 263
    :pswitch_6
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 264
    const-string/jumbo v4, "need dictionary"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 265
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x0

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 266
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 268
    :pswitch_7
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 270
    .local v2, "old_next_out_index":I
    :try_start_0
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v4, p1, v3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->proc(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    .line 271
    const/4 v4, -0x3

    if-ne v3, v4, :cond_8

    .line 272
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 273
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x0

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int v1, v4, v2

    .line 286
    .local v1, "decompressedBytes":I
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 287
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v5, v2, v1}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v4

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto/16 :goto_2

    .line 276
    .end local v1    # "decompressedBytes":I
    :cond_8
    if-nez v3, :cond_9

    .line 277
    move v3, p2

    .line 279
    :cond_9
    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 285
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int v1, v4, v2

    .line 286
    .restart local v1    # "decompressedBytes":I
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 287
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v5, v2, v1}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v4

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto/16 :goto_0

    .line 282
    .end local v1    # "decompressedBytes":I
    :cond_a
    move v3, p2

    .line 283
    :try_start_1
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v5, v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    invoke-virtual {v4, p1, v5}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int v1, v4, v2

    .line 286
    .restart local v1    # "decompressedBytes":I
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 287
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v5, v2, v1}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v4

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 289
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v4, v5, :cond_b

    .line 290
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xc

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 285
    .end local v1    # "decompressedBytes":I
    :catchall_0
    move-exception v4

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int v1, v5, v2

    .line 286
    .restart local v1    # "decompressedBytes":I
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 287
    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v5, v6, v2, v1}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v5

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 288
    throw v4

    .line 292
    :cond_b
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v4, v5, :cond_c

    .line 293
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x8

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 302
    .end local v1    # "decompressedBytes":I
    .end local v2    # "old_next_out_index":I
    :pswitch_8
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 305
    move v3, p2

    .line 307
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 308
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 309
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    int-to-long v6, v5

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 310
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x9

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 312
    :pswitch_9
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 315
    move v3, p2

    .line 317
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 318
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 319
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v8, v5

    const-wide/32 v10, 0xff0000

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 320
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xa

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 322
    :pswitch_a
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 325
    move v3, p2

    .line 327
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 328
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 329
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v8, v5

    const-wide/32 v10, 0xff00

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 330
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xb

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 332
    :pswitch_b
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 335
    move v3, p2

    .line 337
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 338
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 339
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v8

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 341
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    long-to-int v4, v4

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v6, v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    long-to-int v5, v6

    if-eq v4, v5, :cond_d

    .line 342
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 343
    const-string/jumbo v4, "incorrect data check"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 344
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 295
    .restart local v1    # "decompressedBytes":I
    .restart local v2    # "old_next_out_index":I
    :cond_c
    const/4 v4, 0x0

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    .line 296
    const/4 v4, 0x0

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    .line 297
    const/4 v4, 0x4

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 298
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x18

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 348
    .end local v1    # "decompressedBytes":I
    .end local v2    # "old_next_out_index":I
    :cond_d
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xc

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 350
    :pswitch_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 352
    :pswitch_d
    const/4 v3, -0x3

    goto/16 :goto_0

    .line 354
    :pswitch_e
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 357
    move v3, p2

    .line 358
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 359
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 361
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_e

    .line 362
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 363
    const-string/jumbo v4, "not a gzip stream"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 364
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 367
    :cond_e
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xf

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 369
    :pswitch_f
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 372
    move v3, p2

    .line 373
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 374
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 376
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8b

    if-eq v4, v5, :cond_f

    .line 377
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 378
    const-string/jumbo v4, "not a gzip stream"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 379
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 382
    :cond_f
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x10

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 384
    :pswitch_10
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 387
    move v3, p2

    .line 388
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 389
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 391
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    if-eq v4, v5, :cond_10

    .line 392
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 393
    const-string/jumbo v4, "unknown compression method"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 394
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 397
    :cond_10
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x11

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 399
    :pswitch_11
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 402
    move v3, p2

    .line 403
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 404
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 405
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    .line 407
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit16 v4, v4, 0xe2

    if-eqz v4, :cond_11

    .line 408
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 409
    const-string/jumbo v4, "unsupported flag"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 410
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 413
    :cond_11
    const/4 v4, 0x6

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 414
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x12

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 416
    :goto_3
    :pswitch_12
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_12

    .line 417
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 420
    move v3, p2

    .line 421
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 422
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 423
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 424
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_3

    .line 426
    :cond_12
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x13

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 427
    const/4 v4, 0x0

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    .line 428
    const/4 v4, 0x2

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 430
    :pswitch_13
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_14

    .line 431
    :goto_4
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_13

    .line 432
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 435
    move v3, p2

    .line 436
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 437
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 438
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    .line 439
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_4

    .line 441
    :cond_13
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 442
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x14

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 448
    :goto_5
    :pswitch_14
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_15

    .line 449
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 452
    move v3, p2

    .line 453
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 454
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 455
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 456
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_5

    .line 444
    :cond_14
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x15

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 458
    :cond_15
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x15

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 460
    :pswitch_15
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_17

    .line 462
    :cond_16
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 465
    move v3, p2

    .line 466
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 467
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 468
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    if-nez v4, :cond_16

    .line 470
    :cond_17
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x16

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 472
    :pswitch_16
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_19

    .line 474
    :cond_18
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 477
    move v3, p2

    .line 478
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 479
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 480
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    if-nez v4, :cond_18

    .line 482
    :cond_19
    const/4 v4, 0x2

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 483
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x17

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 485
    :pswitch_17
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    .line 486
    :goto_6
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_1a

    .line 487
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 490
    move v3, p2

    .line 491
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 492
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 493
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 494
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_6

    .line 497
    :cond_1a
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x7

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 504
    :cond_1b
    move v3, p2

    .line 505
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 506
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 507
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 508
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    .line 500
    :pswitch_18
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_1c

    .line 501
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_1b

    goto/16 :goto_0

    .line 511
    :cond_1c
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    if-eq v4, v5, :cond_1d

    .line 512
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 513
    const-string/jumbo v4, "incorrect CRC32 checksum"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 514
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 517
    :cond_1d
    const/4 v4, 0x4

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 518
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0x19

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 520
    :goto_7
    :pswitch_19
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_1e

    .line 521
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v4, :cond_1

    .line 524
    move v3, p2

    .line 525
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 526
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 527
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 528
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    goto :goto_7

    .line 531
    :cond_1e
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    if-eq v4, v5, :cond_1f

    .line 532
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xd

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 533
    const-string/jumbo v4, "incorrect ISIZE checksum"

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 534
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v5, 0x5

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    .line 538
    :cond_1f
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v5, 0xc

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    .line 171
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 1
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->free(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method inflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;ILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .locals 5
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "w"    # I
    .param p3, "wrapperType"    # Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    .line 138
    iput-object p3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 140
    if-gez p2, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    const/16 v1, 0x8

    if-lt p2, v1, :cond_1

    const/16 v1, 0xf

    if-le p2, v1, :cond_2

    .line 146
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    .line 147
    const/4 v0, -0x2

    .line 157
    :goto_0
    return v0

    .line 149
    :cond_2
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    .line 151
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v3, v4, :cond_3

    :goto_1
    const/4 v3, 0x1

    shl-int/2addr v3, p2

    invoke-direct {v2, p1, v0, v3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;-><init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V

    iput-object v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    .line 156
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 151
    goto :goto_1
.end method

.method inflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I
    .locals 9
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "dictionary"    # [B
    .param p3, "dictLength"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "index":I
    move v1, p3

    .line 549
    .local v1, "length":I
    if-eqz p1, :cond_0

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 550
    :cond_0
    const/4 v2, -0x2

    .line 565
    :goto_0
    return v2

    .line 553
    :cond_1
    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p2, v2, p3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 554
    const/4 v2, -0x3

    goto :goto_0

    .line 557
    :cond_2
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v4, v5, v3, v2, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 559
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    shl-int v3, v8, v3

    if-lt v1, v3, :cond_3

    .line 560
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    shl-int v3, v8, v3

    add-int/lit8 v1, v3, -0x1

    .line 561
    sub-int v0, p3, v1

    .line 563
    :cond_3
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v3, p2, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->set_dictionary([BII)V

    .line 564
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x7

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_0
.end method

.method inflateSync(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 13
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    const/16 v9, 0xd

    const/4 v12, 0x4

    const/4 v3, 0x0

    .line 577
    if-eqz p1, :cond_0

    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v8, :cond_1

    .line 578
    :cond_0
    const/4 v3, -0x2

    .line 619
    :goto_0
    return v3

    .line 580
    :cond_1
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v8, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    if-eq v8, v9, :cond_2

    .line 581
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 582
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v3, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 584
    :cond_2
    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .local v1, "n":I
    if-nez v1, :cond_3

    .line 585
    const/4 v3, -0x5

    goto :goto_0

    .line 587
    :cond_3
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 588
    .local v2, "p":I
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 591
    .local v0, "m":I
    :goto_1
    if-eqz v1, :cond_6

    if-ge v0, v12, :cond_6

    .line 592
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    aget-byte v8, v8, v2

    sget-object v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mark:[B

    aget-byte v9, v9, v0

    if-ne v8, v9, :cond_4

    .line 593
    add-int/lit8 v0, v0, 0x1

    .line 599
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 600
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 594
    :cond_4
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    aget-byte v8, v8, v2

    if-eqz v8, :cond_5

    .line 595
    const/4 v0, 0x0

    goto :goto_2

    .line 597
    :cond_5
    rsub-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 604
    :cond_6
    iget-wide v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v10, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v10, v2, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 605
    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 606
    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 607
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 610
    if-eq v0, v12, :cond_7

    .line 611
    const/4 v3, -0x3

    goto :goto_0

    .line 613
    :cond_7
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 614
    .local v4, "r":J
    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 615
    .local v6, "w":J
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    .line 616
    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 617
    iput-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 618
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v9, 0x7

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_0
.end method
