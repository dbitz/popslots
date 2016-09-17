.class public Lcom/smartfoxserver/bitswarm/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final DOT:C = '.'

.field private static final HEX_BYTES_PER_LINE:I = 0x10

.field private static final NEW_LINE:Ljava/lang/String;

.field private static final TAB:C = '\t'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->NEW_LINE:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fullHexDump(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fullHexDump(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "bytesPerLine"    # I

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fullHexDump([B)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 32
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fullHexDump([BI)Ljava/lang/String;
    .locals 13
    .param p0, "buffer"    # [B
    .param p1, "bytesPerLine"    # I

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x0

    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Binary size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 38
    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v5, "hexLine":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "chrLine":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 42
    .local v6, "index":I
    const/4 v1, 0x0

    .line 48
    .local v1, "count":I
    :cond_0
    aget-byte v2, p0, v6

    .line 51
    .local v2, "currByte":B
    and-int/lit16 v9, v2, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "hexByte":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 54
    const-string/jumbo v9, "0"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 v9, 0x21

    if-lt v2, v9, :cond_4

    const/16 v9, 0x7e

    if-gt v2, v9, :cond_4

    int-to-char v3, v2

    .line 59
    .local v3, "currChar":C
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_2

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v11, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v11, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 71
    :cond_2
    add-int/lit8 v6, v6, 0x1

    array-length v9, p0

    if-lt v6, v9, :cond_0

    .line 74
    if-eqz v1, :cond_3

    .line 76
    sub-int v7, p1, v1

    .local v7, "j":I
    :goto_1
    if-gtz v7, :cond_5

    .line 82
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .end local v7    # "j":I
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 58
    .end local v3    # "currChar":C
    :cond_4
    const/16 v3, 0x2e

    goto :goto_0

    .line 78
    .restart local v3    # "currChar":C
    .restart local v7    # "j":I
    :cond_5
    const-string/jumbo v9, "   "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method public static resizeByteArray([BII)[B
    .locals 2
    .param p0, "source"    # [B
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    .line 14
    new-array v0, p2, [B

    .line 15
    .local v0, "tmpArray":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    return-object v0
.end method
