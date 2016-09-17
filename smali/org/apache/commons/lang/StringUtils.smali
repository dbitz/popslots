.class public Lorg/apache/commons/lang/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .prologue
    .line 5390
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v2, 0x4

    .line 5429
    if-nez p0, :cond_1

    .line 5430
    const/4 p0, 0x0

    .line 5453
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5432
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-ge p2, v2, :cond_2

    .line 5433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5435
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 5439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5441
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, p2, -0x3

    if-ge v0, v1, :cond_4

    .line 5442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, -0x3

    sub-int p1, v0, v1

    .line 5444
    :cond_4
    if-gt p1, v2, :cond_5

    .line 5445
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5447
    :cond_5
    const/4 v0, 0x7

    if-ge p2, v0, :cond_6

    .line 5448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5450
    :cond_6
    add-int/lit8 v0, p2, -0x3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 5451
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    invoke-static {v1, v2}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5453
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static capitalise(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4783
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitaliseAllWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4892
    invoke-static {p0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4764
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "strLen":I
    if-nez v0, :cond_1

    .line 4767
    .end local v0    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 4614
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 4642
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4652
    :cond_0
    :goto_0
    return-object p0

    .line 4645
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4646
    .local v1, "strLen":I
    sub-int v0, p1, v1

    .line 4647
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4650
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4651
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4652
    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    .line 4682
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4695
    :cond_0
    :goto_0
    return-object p0

    .line 4685
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4686
    const-string/jumbo p2, " "

    .line 4688
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4689
    .local v1, "strLen":I
    sub-int v0, p1, v1

    .line 4690
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4693
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4694
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4695
    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    .line 4004
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4026
    .end local p0    # "str":Ljava/lang/String;
    .local v1, "last":C
    .local v2, "lastIdx":I
    :cond_0
    :goto_0
    return-object p0

    .line 4008
    .end local v1    # "last":C
    .end local v2    # "lastIdx":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4009
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4010
    .local v0, "ch":C
    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_0

    .line 4011
    :cond_2
    const-string/jumbo p0, ""

    goto :goto_0

    .line 4016
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 4017
    .restart local v2    # "lastIdx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4019
    .restart local v1    # "last":C
    if-ne v1, v7, :cond_5

    .line 4020
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 4021
    add-int/lit8 v2, v2, -0x1

    .line 4026
    :cond_4
    :goto_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4023
    :cond_5
    if-eq v1, v5, :cond_4

    .line 4024
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 4056
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 4062
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4059
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4060
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chompLast(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4076
    const-string/jumbo v0, "\n"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4090
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4097
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4093
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4094
    .local v0, "sub":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4095
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 4188
    if-nez p0, :cond_1

    .line 4189
    const/4 v2, 0x0

    .line 4203
    :cond_0
    :goto_0
    return-object v2

    .line 4191
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4192
    .local v3, "strLen":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 4193
    const-string/jumbo v2, ""

    goto :goto_0

    .line 4195
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 4196
    .local v1, "lastIdx":I
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4197
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4198
    .local v0, "last":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    .line 4199
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 4200
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static chopNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 4218
    .local v1, "lastIdx":I
    if-gtz v1, :cond_0

    .line 4219
    const-string/jumbo v2, ""

    .line 4229
    :goto_0
    return-object v2

    .line 4221
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4222
    .local v0, "last":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 4223
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 4224
    add-int/lit8 v1, v1, -0x1

    .line 4229
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4227
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 281
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2809
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;C)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1036
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    .line 1208
    if-nez p1, :cond_0

    .line 1209
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/String;[C)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v3, 0x0

    .line 1166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return v3

    .line 1169
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1170
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1171
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 1172
    aget-char v4, p1, v2

    if-ne v4, v0, :cond_2

    .line 1173
    const/4 v3, 0x1

    goto :goto_0

    .line 1171
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1169
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 1066
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1067
    :cond_0
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsNone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .prologue
    .line 1418
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1419
    :cond_0
    const/4 v0, 0x1

    .line 1421
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsNone(Ljava/lang/String;[C)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "invalidChars"    # [C

    .prologue
    const/4 v5, 0x1

    .line 1379
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return v5

    .line 1382
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1383
    .local v3, "strSize":I
    array-length v4, p1

    .line 1384
    .local v4, "validSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1385
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1386
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 1387
    aget-char v6, p1, v2

    if-ne v6, v0, :cond_2

    .line 1388
    const/4 v5, 0x0

    goto :goto_0

    .line 1386
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1384
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static containsOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "validChars"    # Ljava/lang/String;

    .prologue
    .line 1348
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1349
    :cond_0
    const/4 v0, 0x0

    .line 1351
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsOnly(Ljava/lang/String;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/String;[C)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "valid"    # [C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1313
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 1322
    :cond_1
    :goto_0
    return v0

    .line 1316
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 1320
    goto :goto_0

    .line 1322
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfAnyBut(Ljava/lang/String;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static countMatches(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;

    .prologue
    .line 4917
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4918
    :cond_0
    const/4 v0, 0x0

    .line 4926
    :cond_1
    return v0

    .line 4920
    :cond_2
    const/4 v0, 0x0

    .line 4921
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4922
    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4923
    add-int/lit8 v0, v0, 0x1

    .line 4924
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 5263
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5222
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 5243
    if-nez p0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3165
    if-nez p0, :cond_0

    .line 3166
    const/4 v0, 0x0

    .line 3168
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, " \t\r\n\u0008"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3186
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3200
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3189
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3190
    .local v4, "sz":I
    new-array v0, v4, [C

    .line 3191
    .local v0, "chs":[C
    const/4 v1, 0x0

    .line 3192
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 3193
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3194
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 3192
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 3197
    :cond_2
    if-eq v2, v4, :cond_0

    .line 3200
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_3
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 5484
    if-nez p0, :cond_0

    .line 5494
    .end local p1    # "str2":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 5487
    .restart local p1    # "str2":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 5488
    goto :goto_0

    .line 5490
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5491
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5492
    const-string/jumbo p1, ""

    goto :goto_0

    .line 5494
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 5914
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 5954
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 5955
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 5961
    :cond_1
    :goto_0
    return v4

    .line 5957
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 5960
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 5961
    .local v2, "strOffset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 5939
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 655
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 680
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4251
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4113
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4114
    .local v0, "idx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4119
    .end local p1    # "sep":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 4116
    .restart local p1    # "sep":Ljava/lang/String;
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4117
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4119
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public static getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5662
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 5663
    :cond_0
    const-string/jumbo v1, ""

    .line 5677
    :goto_0
    return-object v1

    .line 5665
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference([Ljava/lang/String;)I

    move-result v0

    .line 5666
    .local v0, "smallestIndexOfDiff":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 5668
    aget-object v1, p0, v2

    if-nez v1, :cond_2

    .line 5669
    const-string/jumbo v1, ""

    goto :goto_0

    .line 5671
    :cond_2
    aget-object v1, p0, v2

    goto :goto_0

    .line 5672
    :cond_3
    if-nez v0, :cond_4

    .line 5674
    const-string/jumbo v1, ""

    goto :goto_0

    .line 5677
    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 5718
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5719
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 5739
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 5740
    .local v6, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 5742
    .local v5, "m":I
    if-nez v6, :cond_2

    move v10, v5

    .line 5791
    :goto_0
    return v10

    .line 5744
    :cond_2
    if-nez v5, :cond_3

    move v10, v6

    .line 5745
    goto :goto_0

    .line 5748
    :cond_3
    if-le v6, v5, :cond_4

    .line 5750
    move-object v9, p0

    .line 5751
    .local v9, "tmp":Ljava/lang/String;
    move-object p0, p1

    .line 5752
    move-object p1, v9

    .line 5753
    move v6, v5

    .line 5754
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 5757
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v6, 0x1

    new-array v7, v11, [I

    .line 5758
    .local v7, "p":[I
    add-int/lit8 v11, v6, 0x1

    new-array v2, v11, [I

    .line 5769
    .local v2, "d":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v6, :cond_5

    .line 5770
    aput v3, v7, v3

    .line 5769
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5773
    :cond_5
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-gt v4, v5, :cond_8

    .line 5774
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 5775
    .local v8, "t_j":C
    aput v4, v2, v10

    .line 5777
    const/4 v3, 0x1

    :goto_3
    if-gt v3, v6, :cond_7

    .line 5778
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6

    move v1, v10

    .line 5780
    .local v1, "cost":I
    :goto_4
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v7, v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    aget v12, v7, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v2, v3

    .line 5777
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5778
    .end local v1    # "cost":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    .line 5784
    :cond_7
    move-object v0, v7

    .line 5785
    .local v0, "_d":[I
    move-object v7, v2

    .line 5786
    move-object v2, v0

    .line 5773
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5791
    .end local v0    # "_d":[I
    .end local v8    # "t_j":C
    :cond_8
    aget v10, v7, v6

    goto :goto_0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2051
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    .line 2081
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4155
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4156
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4157
    const-string/jumbo v1, ""

    .line 4159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;C)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .prologue
    .line 705
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const/4 v0, -0x1

    .line 708
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;CI)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .prologue
    .line 737
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, -0x1

    .line 740
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 766
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 767
    :cond_0
    const/4 v0, -0x1

    .line 769
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 850
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 851
    :cond_0
    const/4 v0, -0x1

    .line 857
    :goto_0
    return v0

    .line 854
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 855
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    .line 1134
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    :cond_0
    const/4 v0, -0x1

    .line 1137
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->indexOfAny(Ljava/lang/String;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v3, -0x1

    .line 1097
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 1108
    :cond_1
    :goto_0
    return v1

    .line 1100
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1101
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1102
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 1103
    aget-char v4, p1, v2

    if-eq v4, v0, :cond_1

    .line 1102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1100
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v2    # "j":I
    :cond_4
    move v1, v3

    .line 1108
    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 1453
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v5

    .line 1477
    :cond_1
    :goto_0
    return v1

    .line 1456
    :cond_2
    array-length v3, p1

    .line 1459
    .local v3, "sz":I
    const v1, 0x7fffffff

    .line 1461
    .local v1, "ret":I
    const/4 v4, 0x0

    .line 1462
    .local v4, "tmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 1463
    aget-object v2, p1, v0

    .line 1464
    .local v2, "search":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1462
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1467
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1468
    if-eq v4, v5, :cond_3

    .line 1472
    if-ge v4, v1, :cond_3

    .line 1473
    move v1, v4

    goto :goto_2

    .line 1477
    .end local v2    # "search":Ljava/lang/String;
    :cond_5
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_1

    move v1, v5

    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1277
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1285
    :cond_1
    :goto_0
    return v0

    .line 1280
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1281
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1285
    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v3, -0x1

    .line 1239
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 1251
    :cond_1
    :goto_0
    return v1

    .line 1242
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1243
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1244
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 1245
    aget-char v4, p1, v2

    if-ne v4, v0, :cond_3

    .line 1242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1244
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "ch":C
    .end local v2    # "j":I
    :cond_4
    move v1, v3

    .line 1251
    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 5521
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 5536
    :cond_0
    :goto_0
    return v0

    .line 5524
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 5525
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5528
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 5529
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_5

    .line 5533
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 5536
    goto :goto_0

    .line 5528
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOfDifference([Ljava/lang/String;)I
    .locals 14
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 5571
    if-eqz p0, :cond_0

    array-length v12, p0

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2

    :cond_0
    move v8, v11

    .line 5625
    :cond_1
    :goto_0
    return v8

    .line 5574
    :cond_2
    const/4 v1, 0x0

    .line 5575
    .local v1, "anyStringNull":Z
    const/4 v0, 0x1

    .line 5576
    .local v0, "allStringsNull":Z
    array-length v2, p0

    .line 5577
    .local v2, "arrayLen":I
    const v8, 0x7fffffff

    .line 5578
    .local v8, "shortestStrLen":I
    const/4 v7, 0x0

    .line 5583
    .local v7, "longestStrLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 5584
    aget-object v12, p0, v6

    if-nez v12, :cond_3

    .line 5585
    const/4 v1, 0x1

    .line 5586
    const/4 v8, 0x0

    .line 5583
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5588
    :cond_3
    const/4 v0, 0x0

    .line 5589
    aget-object v12, p0, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 5590
    aget-object v12, p0, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 5595
    :cond_4
    if-nez v0, :cond_5

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    :cond_5
    move v8, v11

    .line 5596
    goto :goto_0

    .line 5600
    :cond_6
    if-nez v8, :cond_7

    move v8, v10

    .line 5601
    goto :goto_0

    .line 5605
    :cond_7
    const/4 v5, -0x1

    .line 5606
    .local v5, "firstDiff":I
    const/4 v9, 0x0

    .local v9, "stringPos":I
    :goto_3
    if-ge v9, v8, :cond_9

    .line 5607
    aget-object v12, p0, v10

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 5608
    .local v4, "comparisonChar":C
    const/4 v3, 0x1

    .local v3, "arrayPos":I
    :goto_4
    if-ge v3, v2, :cond_8

    .line 5609
    aget-object v12, p0, v3

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_b

    .line 5610
    move v5, v9

    .line 5614
    :cond_8
    if-eq v5, v11, :cond_c

    .line 5619
    .end local v3    # "arrayPos":I
    .end local v4    # "comparisonChar":C
    :cond_9
    if-ne v5, v11, :cond_a

    if-ne v8, v7, :cond_1

    :cond_a
    move v8, v5

    .line 5625
    goto :goto_0

    .line 5608
    .restart local v3    # "arrayPos":I
    .restart local v4    # "comparisonChar":C
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 5606
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static isAlpha(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4950
    if-nez p0, :cond_1

    .line 4959
    :cond_0
    :goto_0
    return v2

    .line 4953
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4954
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 4955
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4954
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4959
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4984
    if-nez p0, :cond_1

    .line 4993
    :cond_0
    :goto_0
    return v2

    .line 4987
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4988
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 4989
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 4988
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4993
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5017
    if-nez p0, :cond_1

    .line 5026
    :cond_0
    :goto_0
    return v2

    .line 5020
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5021
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5022
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5026
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5051
    if-nez p0, :cond_1

    .line 5060
    :cond_0
    :goto_0
    return v2

    .line 5054
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5055
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 5056
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5055
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5060
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAsciiPrintable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5089
    if-nez p0, :cond_1

    .line 5098
    :cond_0
    :goto_0
    return v2

    .line 5092
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5093
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5094
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5093
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5098
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 228
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 236
    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .line 231
    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 233
    const/4 v2, 0x0

    goto :goto_0

    .line 231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5123
    if-nez p0, :cond_1

    .line 5132
    :cond_0
    :goto_0
    return v2

    .line 5126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5127
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5128
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5132
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5159
    if-nez p0, :cond_1

    .line 5168
    :cond_0
    :goto_0
    return v2

    .line 5162
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5163
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 5164
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5168
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5191
    if-nez p0, :cond_1

    .line 5200
    :cond_0
    :goto_0
    return v2

    .line 5194
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5195
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 5196
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5200
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;C)Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # C

    .prologue
    .line 3109
    if-nez p0, :cond_0

    .line 3110
    const/4 v0, 0x0

    .line 3112
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 3130
    if-nez p0, :cond_0

    .line 3131
    const/4 v0, 0x0

    .line 3133
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # C

    .prologue
    .line 3021
    if-nez p0, :cond_0

    .line 3022
    const/4 v3, 0x0

    .line 3046
    :goto_0
    return-object v3

    .line 3024
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3025
    const-string/jumbo v3, ""

    goto :goto_0

    .line 3027
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3028
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3029
    invoke-static {v1}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3033
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3034
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_3

    .line 3035
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3038
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3039
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3040
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3041
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 3042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3046
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 3065
    if-nez p0, :cond_0

    .line 3066
    const/4 v3, 0x0

    .line 3091
    :goto_0
    return-object v3

    .line 3068
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3069
    const-string/jumbo v3, ""

    goto :goto_0

    .line 3071
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3072
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3073
    invoke-static {v1}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3077
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3078
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_3

    .line 3079
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3082
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3083
    if-eqz p1, :cond_4

    .line 3084
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3086
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3087
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 3088
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3091
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2833
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    .line 2859
    if-nez p0, :cond_0

    .line 2860
    const/4 v0, 0x0

    .line 2863
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 2893
    if-nez p0, :cond_0

    .line 2894
    const/4 v3, 0x0

    .line 2912
    :goto_0
    return-object v3

    .line 2896
    :cond_0
    sub-int v1, p3, p2

    .line 2897
    .local v1, "bufSize":I
    if-gtz v1, :cond_1

    .line 2898
    const-string/jumbo v3, ""

    goto :goto_0

    .line 2901
    :cond_1
    aget-object v3, p0, p2

    if-nez v3, :cond_4

    const/16 v3, 0x10

    :goto_1
    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v1, v3

    .line 2902
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2904
    .local v0, "buf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, p3, :cond_5

    .line 2905
    if-le v2, p2, :cond_2

    .line 2906
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2908
    :cond_2
    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    .line 2909
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2904
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2901
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_4
    aget-object v3, p0, p2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 2912
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2940
    if-nez p0, :cond_0

    .line 2941
    const/4 v0, 0x0

    .line 2943
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 2974
    if-nez p0, :cond_0

    .line 2975
    const/4 v3, 0x0

    .line 3001
    :goto_0
    return-object v3

    .line 2977
    :cond_0
    if-nez p1, :cond_1

    .line 2978
    const-string/jumbo p1, ""

    .line 2983
    :cond_1
    sub-int v1, p3, p2

    .line 2984
    .local v1, "bufSize":I
    if-gtz v1, :cond_2

    .line 2985
    const-string/jumbo v3, ""

    goto :goto_0

    .line 2988
    :cond_2
    aget-object v3, p0, p2

    if-nez v3, :cond_5

    const/16 v3, 0x10

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    .line 2991
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2993
    .local v0, "buf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, p3, :cond_6

    .line 2994
    if-le v2, p2, :cond_3

    .line 2995
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2997
    :cond_3
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 2998
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2993
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2988
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_5
    aget-object v3, p0, p2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 3001
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;C)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .prologue
    .line 882
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    const/4 v0, -0x1

    .line 885
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;CI)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .prologue
    .line 916
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, -0x1

    .line 919
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .prologue
    .line 945
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 946
    :cond_0
    const/4 v0, -0x1

    .line 948
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 980
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 981
    :cond_0
    const/4 v0, -0x1

    .line 983
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .prologue
    .line 1506
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1507
    :cond_0
    const/4 v1, -0x1

    .line 1522
    :cond_1
    return v1

    .line 1509
    :cond_2
    array-length v3, p1

    .line 1510
    .local v3, "sz":I
    const/4 v1, -0x1

    .line 1511
    .local v1, "ret":I
    const/4 v4, 0x0

    .line 1512
    .local v4, "tmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1513
    aget-object v2, p1, v0

    .line 1514
    .local v2, "search":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1512
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1518
    if-le v4, v1, :cond_3

    .line 1519
    move v1, v4

    goto :goto_1
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 1662
    if-nez p0, :cond_1

    .line 1663
    const/4 p0, 0x0

    .line 1671
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1665
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    .line 1666
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1668
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 4484
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 4509
    if-nez p0, :cond_1

    .line 4510
    const/4 p0, 0x0

    .line 4519
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4512
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 4513
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4516
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4517
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4519
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4546
    if-nez p0, :cond_1

    .line 4547
    const/4 p0, 0x0

    .line 4572
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4549
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4550
    const-string/jumbo p2, " "

    .line 4552
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4553
    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4554
    .local v5, "strLen":I
    sub-int v4, p1, v5

    .line 4555
    .local v4, "pads":I
    if-lez v4, :cond_0

    .line 4558
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 4559
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4562
    :cond_3
    if-ne v4, v2, :cond_4

    .line 4563
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4564
    :cond_4
    if-ge v4, v2, :cond_5

    .line 4565
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4567
    :cond_5
    new-array v3, v4, [C

    .line 4568
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4569
    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 4570
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 4569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4572
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4585
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4736
    if-nez p0, :cond_0

    .line 4737
    const/4 v0, 0x0

    .line 4739
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .prologue
    .line 1732
    if-nez p0, :cond_0

    .line 1733
    const/4 v0, 0x0

    .line 1744
    :goto_0
    return-object v0

    .line 1735
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 1736
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1738
    :cond_2
    if-gez p1, :cond_3

    .line 1739
    const/4 p1, 0x0

    .line 1741
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 1742
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1744
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 800
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_2

    .line 801
    :cond_0
    const/4 v1, -0x1

    .line 815
    :cond_1
    :goto_0
    return v1

    .line 803
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 804
    const/4 v1, 0x0

    goto :goto_0

    .line 806
    :cond_3
    const/4 v0, 0x0

    .line 807
    .local v0, "found":I
    const/4 v1, -0x1

    .line 809
    .local v1, "index":I
    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 810
    if-ltz v1, :cond_1

    .line 813
    add-int/lit8 v0, v0, 0x1

    .line 814
    if-lt v0, p2, :cond_4

    goto :goto_0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 3945
    if-nez p0, :cond_0

    .line 3946
    const/4 v2, 0x0

    .line 3969
    :goto_0
    return-object v2

    .line 3948
    :cond_0
    if-nez p1, :cond_1

    .line 3949
    const-string/jumbo p1, ""

    .line 3951
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3952
    .local v0, "len":I
    if-gez p2, :cond_2

    .line 3953
    const/4 p2, 0x0

    .line 3955
    :cond_2
    if-le p2, v0, :cond_3

    .line 3956
    move p2, v0

    .line 3958
    :cond_3
    if-gez p3, :cond_4

    .line 3959
    const/4 p3, 0x0

    .line 3961
    :cond_4
    if-le p3, v0, :cond_5

    .line 3962
    move p3, v0

    .line 3964
    :cond_5
    if-le p2, p3, :cond_6

    .line 3965
    move v1, p2

    .line 3966
    .local v1, "temp":I
    move p2, p3

    .line 3967
    move p3, v1

    .line 3969
    .end local v1    # "temp":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    add-int v3, v0, p2

    sub-int/2addr v3, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static overlayString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 3908
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static padding(IC)Ljava/lang/String;
    .locals 5
    .param p0, "repeat"    # I
    .param p1, "padChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 4342
    if-gez p0, :cond_0

    .line 4343
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Cannot pad a negative amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4345
    :cond_0
    new-array v0, p0, [C

    .line 4346
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 4347
    aput-char p1, v0, v1

    .line 4346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4349
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static prechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 4135
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4136
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4139
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .prologue
    .line 3392
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 3402
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3395
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3396
    .local v0, "chars":[C
    const/4 v2, 0x0

    .line 3397
    .local v2, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 3398
    aget-char v4, v0, v1

    if-eq v4, p1, :cond_2

    .line 3399
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    .line 3397
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3402
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3366
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3369
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3299
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3305
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3302
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3303
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3333
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3339
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3336
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3337
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3230
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3236
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3233
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 3265
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3271
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3268
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4277
    if-nez p0, :cond_1

    .line 4278
    const/4 p0, 0x0

    .line 4314
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4280
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    .line 4281
    const-string/jumbo p0, ""

    goto :goto_0

    .line 4283
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4284
    .local v5, "inputLength":I
    if-eq p1, v11, :cond_0

    if-eqz v5, :cond_0

    .line 4287
    if-ne v5, v11, :cond_3

    const/16 v9, 0x2000

    if-gt p1, v9, :cond_3

    .line 4288
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {p1, v9}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4291
    :cond_3
    mul-int v8, v5, p1

    .line 4292
    .local v8, "outputLength":I
    packed-switch v5, :pswitch_data_0

    .line 4310
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4311
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_6

    .line 4312
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4311
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4294
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    :pswitch_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4295
    .local v1, "ch":C
    new-array v6, v8, [C

    .line 4296
    .local v6, "output1":[C
    add-int/lit8 v4, p1, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 4297
    aput-char v1, v6, v4

    .line 4296
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4299
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 4301
    .end local v1    # "ch":C
    .end local v4    # "i":I
    .end local v6    # "output1":[C
    .restart local p0    # "str":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4302
    .local v2, "ch0":C
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4303
    .local v3, "ch1":C
    new-array v7, v8, [C

    .line 4304
    .local v7, "output2":[C
    mul-int/lit8 v9, p1, 0x2

    add-int/lit8 v4, v9, -0x2

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_5

    .line 4305
    aput-char v2, v7, v4

    .line 4306
    add-int/lit8 v9, v4, 0x1

    aput-char v3, v7, v9

    .line 4304
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 4308
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 4314
    .end local v2    # "ch0":C
    .end local v3    # "ch1":C
    .end local v7    # "output2":[C
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 3458
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .prologue
    const/16 v5, 0x40

    const/4 v7, -0x1

    .line 3490
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3512
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3493
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 3494
    .local v4, "start":I
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3495
    .local v1, "end":I
    if-eq v1, v7, :cond_0

    .line 3498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3499
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v6, v3

    .line 3500
    .local v2, "increase":I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 3501
    :cond_2
    if-gez p3, :cond_5

    const/16 v5, 0x10

    :cond_3
    :goto_1
    mul-int/2addr v2, v5

    .line 3502
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3503
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_2
    if-eq v1, v7, :cond_4

    .line 3504
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3505
    add-int v4, v1, v3

    .line 3506
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_6

    .line 3511
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3512
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3501
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_5
    if-gt p3, v5, :cond_3

    move v5, p3

    goto :goto_1

    .line 3509
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .prologue
    .line 3809
    if-nez p0, :cond_0

    .line 3810
    const/4 v0, 0x0

    .line 3812
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .prologue
    .line 3852
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3877
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3855
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 3856
    const-string/jumbo p2, ""

    .line 3858
    :cond_2
    const/4 v4, 0x0

    .line 3859
    .local v4, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 3860
    .local v5, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 3861
    .local v6, "strLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3862
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_5

    .line 3863
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3864
    .local v1, "ch":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3865
    .local v3, "index":I
    if-ltz v3, :cond_4

    .line 3866
    const/4 v4, 0x1

    .line 3867
    if-ge v3, v5, :cond_3

    .line 3868
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3862
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3871
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 3874
    .end local v1    # "ch":C
    .end local v3    # "index":I
    :cond_5
    if-eqz v4, :cond_0

    .line 3875
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3555
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 20
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .prologue
    .line 3665
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 3783
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3672
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    if-gez p4, :cond_2

    .line 3673
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v19, "TimeToLive of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, " is less than 0: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3676
    :cond_2
    move-object/from16 v0, p1

    array-length v12, v0

    .line 3677
    .local v12, "searchLength":I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 3680
    .local v10, "replacementLength":I
    if-eq v12, v10, :cond_3

    .line 3681
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v19, "Search and Replace array lengths don\'t match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3688
    :cond_3
    new-array v8, v12, [Z

    .line 3691
    .local v8, "noMoreMatchesForReplIndex":[Z
    const/4 v15, -0x1

    .line 3692
    .local v15, "textIndex":I
    const/4 v9, -0x1

    .line 3693
    .local v9, "replaceIndex":I
    const/4 v14, -0x1

    .line 3697
    .local v14, "tempIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_8

    .line 3698
    aget-boolean v17, v8, v6

    if-nez v17, :cond_4

    aget-object v17, p1, v6

    if-eqz v17, :cond_4

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_4

    aget-object v17, p2, v6

    if-nez v17, :cond_5

    .line 3697
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3703
    :cond_5
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 3706
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 3707
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_2

    .line 3709
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    if-ge v14, v15, :cond_4

    .line 3710
    :cond_7
    move v15, v14

    .line 3711
    move v9, v6

    goto :goto_2

    .line 3718
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    .line 3722
    const/4 v13, 0x0

    .line 3725
    .local v13, "start":I
    const/4 v7, 0x0

    .line 3728
    .local v7, "increase":I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 3729
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    .line 3730
    .local v5, "greater":I
    if-lez v5, :cond_9

    .line 3731
    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    .line 3728
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3735
    .end local v5    # "greater":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3737
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3739
    .local v4, "buf":Ljava/lang/StringBuffer;
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    .line 3741
    move v6, v13

    :goto_4
    if-ge v6, v15, :cond_c

    .line 3742
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3741
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3744
    :cond_c
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3746
    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    .line 3748
    const/4 v15, -0x1

    .line 3749
    const/4 v9, -0x1

    .line 3750
    const/4 v14, -0x1

    .line 3753
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_b

    .line 3754
    aget-boolean v17, v8, v6

    if-nez v17, :cond_d

    aget-object v17, p1, v6

    if-eqz v17, :cond_d

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_d

    aget-object v17, p2, v6

    if-nez v17, :cond_e

    .line 3753
    :cond_d
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 3759
    :cond_e
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 3762
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_f

    .line 3763
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_6

    .line 3765
    :cond_f
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_10

    if-ge v14, v15, :cond_d

    .line 3766
    :cond_10
    move v15, v14

    .line 3767
    move v9, v6

    goto :goto_6

    .line 3774
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 3775
    .local v16, "textLength":I
    move v6, v13

    :goto_7
    move/from16 v0, v16

    if-ge v6, v0, :cond_12

    .line 3776
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3775
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3778
    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3779
    .local v11, "result":Ljava/lang/String;
    if-nez p3, :cond_13

    move-object/from16 p0, v11

    .line 3780
    goto/16 :goto_0

    .line 3783
    :cond_13
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    .line 3606
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3607
    .local v0, "timeToLive":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3606
    .end local v0    # "timeToLive":I
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 3431
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 5283
    if-nez p0, :cond_0

    .line 5284
    const/4 v0, 0x0

    .line 5286
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 5309
    if-nez p0, :cond_0

    .line 5310
    const/4 v1, 0x0

    .line 5316
    :goto_0
    return-object v1

    .line 5314
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5315
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5316
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static reverseDelimitedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    .line 5342
    if-nez p0, :cond_0

    .line 5343
    const/4 v1, 0x0

    .line 5352
    :goto_0
    return-object v1

    .line 5347
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5348
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5349
    if-nez p1, :cond_1

    .line 5350
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5352
    :cond_1
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 1695
    if-nez p0, :cond_1

    .line 1696
    const/4 p0, 0x0

    .line 1704
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1698
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    .line 1699
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1701
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 4372
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 4397
    if-nez p0, :cond_1

    .line 4398
    const/4 p0, 0x0

    .line 4407
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4400
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 4401
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 4404
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4405
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4407
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4434
    if-nez p0, :cond_1

    .line 4435
    const/4 p0, 0x0

    .line 4460
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4437
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4438
    const-string/jumbo p2, " "

    .line 4440
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4441
    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4442
    .local v5, "strLen":I
    sub-int v4, p1, v5

    .line 4443
    .local v4, "pads":I
    if-lez v4, :cond_0

    .line 4446
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 4447
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4450
    :cond_3
    if-ne v4, v2, :cond_4

    .line 4451
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4452
    :cond_4
    if-ge v4, v2, :cond_5

    .line 4453
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4455
    :cond_5
    new-array v3, v4, [C

    .line 4456
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4457
    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 4458
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 4457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4460
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2109
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 2137
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    .line 2166
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2200
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2711
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .prologue
    .line 2757
    if-nez p0, :cond_0

    .line 2758
    const/4 v7, 0x0

    .line 2785
    :goto_0
    return-object v7

    .line 2760
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 2761
    sget-object v7, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2763
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2764
    .local v0, "c":[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2765
    .local v2, "list":Ljava/util/List;
    const/4 v5, 0x0

    .line 2766
    .local v5, "tokenStart":I
    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 2767
    .local v1, "currentType":I
    add-int/lit8 v4, v5, 0x1

    .local v4, "pos":I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    .line 2768
    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .line 2769
    .local v6, "type":I
    if-ne v6, v1, :cond_2

    .line 2767
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2772
    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 2773
    add-int/lit8 v3, v4, -0x1

    .line 2774
    .local v3, "newTokenStart":I
    if-eq v3, v5, :cond_3

    .line 2775
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2776
    move v5, v3

    .line 2782
    .end local v3    # "newTokenStart":I
    :cond_3
    :goto_3
    move v1, v6

    goto :goto_2

    .line 2779
    :cond_4
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2780
    move v5, v4

    goto :goto_3

    .line 2784
    .end local v6    # "type":I
    :cond_5
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2785
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2739
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2227
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2258
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2287
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2320
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2340
    if-nez p0, :cond_0

    .line 2401
    :goto_0
    return-object v6

    .line 2344
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2346
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 2347
    sget-object v6, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2350
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2352
    :cond_2
    invoke-static {p0, v6, p2, p3}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2355
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2357
    .local v4, "separatorLength":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2358
    .local v5, "substrings":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 2359
    .local v3, "numberOfSubstrings":I
    const/4 v0, 0x0

    .line 2360
    .local v0, "beg":I
    const/4 v1, 0x0

    .line 2361
    .local v1, "end":I
    :goto_1
    if-ge v1, v2, :cond_9

    .line 2362
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2364
    const/4 v6, -0x1

    if-le v1, v6, :cond_8

    .line 2365
    if-le v1, v0, :cond_5

    .line 2366
    add-int/lit8 v3, v3, 0x1

    .line 2368
    if-ne v3, p2, :cond_4

    .line 2369
    move v1, v2

    .line 2370
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2374
    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    add-int v0, v1, v4

    goto :goto_1

    .line 2383
    :cond_5
    if-eqz p3, :cond_6

    .line 2384
    add-int/lit8 v3, v3, 0x1

    .line 2385
    if-ne v3, p2, :cond_7

    .line 2386
    move v1, v2

    .line 2387
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    :cond_6
    :goto_2
    add-int v0, v1, v4

    goto :goto_1

    .line 2389
    :cond_7
    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2396
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    move v1, v2

    goto :goto_1

    .line 2401
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2430
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 2466
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    .line 2549
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2589
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .prologue
    .line 2484
    if-nez p0, :cond_0

    .line 2485
    const/4 v6, 0x0

    .line 2512
    :goto_0
    return-object v6

    .line 2487
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2488
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 2489
    sget-object v6, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2491
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    .local v3, "list":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v5, 0x0

    .line 2493
    .local v5, "start":I
    const/4 v4, 0x0

    .line 2494
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 2495
    .local v1, "lastMatch":Z
    :goto_1
    if-ge v0, v2, :cond_5

    .line 2496
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 2497
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 2498
    :cond_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2499
    const/4 v4, 0x0

    .line 2500
    const/4 v1, 0x1

    .line 2502
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 2503
    goto :goto_1

    .line 2505
    :cond_4
    const/4 v1, 0x0

    .line 2506
    const/4 v4, 0x1

    .line 2507
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2509
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 2510
    :cond_6
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2512
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    .line 2611
    if-nez p0, :cond_0

    .line 2612
    const/4 v9, 0x0

    .line 2688
    :goto_0
    return-object v9

    .line 2614
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2615
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 2616
    sget-object v9, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2618
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    .local v3, "list":Ljava/util/List;
    const/4 v6, 0x1

    .line 2620
    .local v6, "sizePlus1":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v8, 0x0

    .line 2621
    .local v8, "start":I
    const/4 v4, 0x0

    .line 2622
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 2623
    .local v1, "lastMatch":Z
    if-nez p1, :cond_5

    move v7, v6

    .line 2625
    .end local v6    # "sizePlus1":I
    .local v7, "sizePlus1":I
    :goto_1
    if-ge v0, v2, :cond_10

    .line 2626
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2627
    if-nez v4, :cond_2

    if-eqz p3, :cond_13

    .line 2628
    :cond_2
    const/4 v1, 0x1

    .line 2629
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_3

    .line 2630
    move v0, v2

    .line 2631
    const/4 v1, 0x0

    .line 2633
    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2634
    const/4 v4, 0x0

    .line 2636
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 2637
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_1

    .line 2639
    :cond_4
    const/4 v1, 0x0

    .line 2640
    const/4 v4, 0x1

    .line 2641
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2643
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 2645
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, "sep":C
    move v7, v6

    .line 2646
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_3
    if-ge v0, v2, :cond_9

    .line 2647
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_8

    .line 2648
    if-nez v4, :cond_6

    if-eqz p3, :cond_11

    .line 2649
    :cond_6
    const/4 v1, 0x1

    .line 2650
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_7

    .line 2651
    move v0, v2

    .line 2652
    const/4 v1, 0x0

    .line 2654
    :cond_7
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    const/4 v4, 0x0

    .line 2657
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 2658
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_3

    .line 2660
    :cond_8
    const/4 v1, 0x0

    .line 2661
    const/4 v4, 0x1

    .line 2662
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v6, v7

    .line 2685
    .end local v5    # "sep":C
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :goto_5
    if-nez v4, :cond_a

    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    .line 2686
    :cond_a
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2688
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto/16 :goto_0

    .line 2666
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_6
    if-ge v0, v2, :cond_10

    .line 2667
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_e

    .line 2668
    if-nez v4, :cond_c

    if-eqz p3, :cond_f

    .line 2669
    :cond_c
    const/4 v1, 0x1

    .line 2670
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_d

    .line 2671
    move v0, v2

    .line 2672
    const/4 v1, 0x0

    .line 2674
    :cond_d
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2675
    const/4 v4, 0x0

    .line 2677
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 2678
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    .line 2680
    :cond_e
    const/4 v1, 0x0

    .line 2681
    const/4 v4, 0x1

    .line 2682
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_7

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :cond_10
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_5

    .end local v6    # "sizePlus1":I
    .restart local v5    # "sep":C
    .restart local v7    # "sizePlus1":I
    :cond_11
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_4

    .end local v5    # "sep":C
    :cond_12
    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    :cond_13
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto/16 :goto_2
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 5840
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5880
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 5881
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 5886
    :cond_1
    :goto_0
    return v2

    .line 5883
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 5886
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 5865
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 478
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 622
    if-eqz p0, :cond_0

    array-length v2, p0

    .local v2, "strsLen":I
    if-nez v2, :cond_2

    .end local v2    # "strsLen":I
    :cond_0
    move-object v1, p0

    .line 629
    :cond_1
    return-object v1

    .line 625
    .restart local v2    # "strsLen":I
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 626
    .local v1, "newArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 627
    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 552
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "end":I
    if-nez v0, :cond_1

    .line 567
    .end local v0    # "end":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 556
    .restart local v0    # "end":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 557
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 560
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 564
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 567
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 508
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 523
    .end local v1    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 511
    .restart local v1    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 512
    .local v0, "start":I
    if-nez p1, :cond_2

    .line 513
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 523
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 445
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 415
    if-nez p0, :cond_0

    .line 419
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 418
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .end local p0    # "str":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    .line 1552
    if-nez p0, :cond_0

    .line 1553
    const/4 v0, 0x0

    .line 1568
    :goto_0
    return-object v0

    .line 1557
    :cond_0
    if-gez p1, :cond_1

    .line 1558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1561
    :cond_1
    if-gez p1, :cond_2

    .line 1562
    const/4 p1, 0x0

    .line 1564
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 1565
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1568
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1607
    if-nez p0, :cond_0

    .line 1608
    const/4 v0, 0x0

    .line 1636
    :goto_0
    return-object v0

    .line 1612
    :cond_0
    if-gez p2, :cond_1

    .line 1613
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 1615
    :cond_1
    if-gez p1, :cond_2

    .line 1616
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1620
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 1621
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 1625
    :cond_3
    if-le p1, p2, :cond_4

    .line 1626
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1629
    :cond_4
    if-gez p1, :cond_5

    .line 1630
    const/4 p1, 0x0

    .line 1632
    :cond_5
    if-gez p2, :cond_6

    .line 1633
    const/4 p2, 0x0

    .line 1636
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1815
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1825
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1818
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1819
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1821
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1822
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1823
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1825
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1892
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1902
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1895
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1896
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1898
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1899
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 1900
    :cond_2
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1902
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1775
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1785
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1778
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1779
    const-string/jumbo p0, ""

    goto :goto_0

    .line 1781
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1782
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1785
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1854
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1861
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1857
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1858
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1861
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1929
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1960
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return-object v2

    .line 1963
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1964
    .local v1, "start":I
    if-eq v1, v4, :cond_0

    .line 1965
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1966
    .local v0, "end":I
    if-eq v0, v4, :cond_0

    .line 1967
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1996
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-object v7

    .line 1999
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 2000
    .local v6, "strLen":I
    if-nez v6, :cond_2

    .line 2001
    sget-object v7, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2003
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2004
    .local v0, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2005
    .local v3, "openLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .local v2, "list":Ljava/util/List;
    const/4 v4, 0x0

    .line 2007
    .local v4, "pos":I
    :goto_1
    sub-int v8, v6, v0

    if-ge v4, v8, :cond_3

    .line 2008
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 2009
    .local v5, "start":I
    if-gez v5, :cond_4

    .line 2020
    .end local v5    # "start":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2023
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0

    .line 2012
    .restart local v5    # "start":I
    :cond_4
    add-int/2addr v5, v3

    .line 2013
    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2014
    .local v1, "end":I
    if-ltz v1, :cond_3

    .line 2017
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    add-int v4, v1, v0

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4859
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "strLen":I
    if-nez v3, :cond_1

    .line 4876
    .end local v3    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4862
    .restart local v3    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4864
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 4865
    .local v1, "ch":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 4866
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4867
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4868
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 4874
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4869
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4870
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    goto :goto_2

    .line 4871
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4872
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    goto :goto_2

    .line 4876
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 308
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 360
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "ts":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static uncapitalise(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4827
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4808
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "strLen":I
    if-nez v0, :cond_1

    .line 4811
    .end local v0    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4715
    if-nez p0, :cond_0

    .line 4716
    const/4 v0, 0x0

    .line 4718
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
