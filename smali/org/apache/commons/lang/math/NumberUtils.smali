.class public Lorg/apache/commons/lang/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 41
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 43
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 47
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 51
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 53
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v4}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 55
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v5}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 57
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 59
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v4}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 61
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v5}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 65
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 67
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 69
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 71
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 73
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 75
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static compare(DD)I
    .locals 8
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1261
    cmpg-double v6, p0, p2

    if-gez v6, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return v4

    .line 1264
    :cond_1
    cmpl-double v6, p0, p2

    if-lez v6, :cond_2

    move v4, v5

    .line 1265
    goto :goto_0

    .line 1271
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1272
    .local v0, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1273
    .local v2, "rhsBits":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    .line 1274
    const/4 v4, 0x0

    goto :goto_0

    .line 1282
    :cond_3
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    move v4, v5

    .line 1285
    goto :goto_0
.end method

.method public static compare(FF)I
    .locals 5
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1322
    cmpg-float v4, p0, p1

    if-gez v4, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return v2

    .line 1325
    :cond_1
    cmpl-float v4, p0, p1

    if-lez v4, :cond_2

    move v2, v3

    .line 1326
    goto :goto_0

    .line 1332
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1333
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1334
    .local v1, "rhsBits":I
    if-ne v0, v1, :cond_3

    .line 1335
    const/4 v2, 0x0

    goto :goto_0

    .line 1343
    :cond_3
    if-lt v0, v1, :cond_0

    move v2, v3

    .line 1346
    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 659
    if-nez p0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 666
    :goto_0
    return-object v0

    .line 663
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 643
    if-nez p0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 593
    if-nez p0, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 577
    if-nez p0, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 610
    if-nez p0, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 627
    if-nez p0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 14
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 398
    if-nez p0, :cond_1

    .line 399
    const/4 v6, 0x0

    .line 540
    :cond_0
    :goto_0
    return-object v6

    .line 401
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 402
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string/jumbo v11, "A blank string is not a valid number"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 404
    :cond_2
    const-string/jumbo v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 409
    const/4 v6, 0x0

    goto :goto_0

    .line 411
    :cond_3
    const-string/jumbo v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 412
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 414
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 418
    .local v7, "lastChar":C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 419
    .local v3, "decPos":I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 421
    .local v5, "expPos":I
    const/4 v10, -0x1

    if-le v3, v10, :cond_8

    .line 423
    const/4 v10, -0x1

    if-le v5, v10, :cond_7

    .line 424
    if-ge v5, v3, :cond_6

    .line 425
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 427
    :cond_6
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "dec":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "mant":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_12

    .line 441
    const/4 v10, -0x1

    if-le v5, v10, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_a

    .line 442
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "exp":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {v4}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v0, 0x1

    .line 449
    .local v0, "allZeros":Z
    :goto_4
    sparse-switch v7, :sswitch_data_0

    .line 495
    :goto_5
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 429
    .end local v0    # "allZeros":Z
    .end local v2    # "dec":Ljava/lang/String;
    .end local v4    # "exp":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_1

    .line 433
    .end local v2    # "dec":Ljava/lang/String;
    :cond_8
    const/4 v10, -0x1

    if-le v5, v10, :cond_9

    .line 434
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 438
    .restart local v8    # "mant":Ljava/lang/String;
    :goto_6
    const/4 v2, 0x0

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_2

    .line 436
    .end local v2    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_9
    move-object v8, p0

    .restart local v8    # "mant":Ljava/lang/String;
    goto :goto_6

    .line 444
    .restart local v2    # "dec":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_3

    .line 448
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 452
    .restart local v0    # "allZeros":Z
    :sswitch_0
    if-nez v2, :cond_e

    if-nez v4, :cond_e

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_c
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 456
    :cond_d
    :try_start_0
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 457
    :catch_0
    move-exception v10

    .line 460
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 463
    :cond_e
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 467
    :sswitch_1
    :try_start_1
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 468
    .local v6, "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 481
    .end local v6    # "f":Ljava/lang/Float;
    :cond_f
    :goto_7
    :sswitch_2
    :try_start_2
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 482
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    move-object v6, v1

    .line 483
    goto/16 :goto_0

    .line 485
    .end local v1    # "d":Ljava/lang/Double;
    :catch_1
    move-exception v10

    .line 489
    :cond_11
    :try_start_3
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    goto/16 :goto_0

    .line 501
    .end local v0    # "allZeros":Z
    .end local v4    # "exp":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_12
    const/4 v10, -0x1

    if-le v5, v10, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_13

    .line 502
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 506
    .restart local v4    # "exp":Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_14

    if-nez v4, :cond_14

    .line 509
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 504
    .end local v4    # "exp":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_8

    .line 510
    :catch_2
    move-exception v10

    .line 514
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 515
    :catch_3
    move-exception v10

    .line 518
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 522
    :cond_14
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v4}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v0, 0x1

    .line 524
    .restart local v0    # "allZeros":Z
    :goto_9
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 525
    .restart local v6    # "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 532
    .end local v6    # "f":Ljava/lang/Float;
    :cond_15
    :goto_a
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 533
    .restart local v1    # "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_16

    if-eqz v0, :cond_18

    :cond_16
    move-object v6, v1

    .line 534
    goto/16 :goto_0

    .line 522
    .end local v0    # "allZeros":Z
    .end local v1    # "d":Ljava/lang/Double;
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 536
    .restart local v0    # "allZeros":Z
    :catch_4
    move-exception v10

    .line 540
    :cond_18
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_0

    .line 490
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 528
    .end local v9    # "numeric":Ljava/lang/String;
    :catch_6
    move-exception v10

    goto :goto_a

    .line 474
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_7
    move-exception v10

    goto/16 :goto_7

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 555
    if-nez p0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 558
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 559
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 560
    goto :goto_0

    .line 558
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 563
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1362
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return v1

    .line 1365
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1366
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1370
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x2d

    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1387
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return v9

    .line 1390
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1391
    .local v1, "chars":[C
    array-length v7, v1

    .line 1392
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 1393
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 1394
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 1395
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 1397
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_5

    move v6, v8

    .line 1398
    .local v6, "start":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_7

    .line 1399
    aget-char v10, v1, v6

    if-ne v10, v12, :cond_7

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    .line 1400
    add-int/lit8 v5, v6, 0x2

    .line 1401
    .local v5, "i":I
    if-eq v5, v7, :cond_0

    .line 1405
    :goto_2
    array-length v10, v1

    if-ge v5, v10, :cond_6

    .line 1406
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_2

    aget-char v10, v1, v5

    if-le v10, v13, :cond_4

    :cond_2
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_3

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_4

    :cond_3
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_0

    .line 1405
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_5
    move v6, v9

    .line 1397
    goto :goto_1

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_6
    move v9, v8

    .line 1412
    goto :goto_0

    .line 1415
    .end local v5    # "i":I
    :cond_7
    add-int/lit8 v7, v7, -0x1

    .line 1417
    move v5, v6

    .line 1420
    .restart local v5    # "i":I
    :goto_3
    if-lt v5, v7, :cond_8

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_e

    if-eqz v0, :cond_e

    if-nez v2, :cond_e

    .line 1421
    :cond_8
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_9

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_9

    .line 1422
    const/4 v2, 0x1

    .line 1423
    const/4 v0, 0x0

    .line 1451
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1425
    :cond_9
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_a

    .line 1426
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 1430
    const/4 v3, 0x1

    goto :goto_4

    .line 1431
    :cond_a
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_b

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_c

    .line 1433
    :cond_b
    if-nez v4, :cond_0

    .line 1437
    if-eqz v2, :cond_0

    .line 1440
    const/4 v4, 0x1

    .line 1441
    const/4 v0, 0x1

    goto :goto_4

    .line 1442
    :cond_c
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_d

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_0

    .line 1443
    :cond_d
    if-eqz v0, :cond_0

    .line 1446
    const/4 v0, 0x0

    .line 1447
    const/4 v2, 0x0

    goto :goto_4

    .line 1453
    :cond_e
    array-length v10, v1

    if-ge v5, v10, :cond_14

    .line 1454
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_f

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_f

    move v9, v8

    .line 1456
    goto/16 :goto_0

    .line 1458
    :cond_f
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_0

    .line 1462
    if-nez v0, :cond_11

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_11

    :cond_10
    move v9, v2

    .line 1467
    goto/16 :goto_0

    .line 1469
    :cond_11
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_12

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 1472
    :cond_12
    if-eqz v2, :cond_13

    if-nez v4, :cond_13

    :goto_5
    move v9, v8

    goto/16 :goto_0

    :cond_13
    move v8, v9

    goto :goto_5

    .line 1479
    :cond_14
    if-nez v0, :cond_15

    if-eqz v2, :cond_15

    :goto_6
    move v9, v8

    goto/16 :goto_0

    :cond_15
    move v8, v9

    goto :goto_6
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1184
    if-le p1, p0, :cond_0

    .line 1185
    move p0, p1

    .line 1187
    :cond_0
    if-le p2, p0, :cond_1

    .line 1188
    move p0, p2

    .line 1190
    :cond_1
    return p0
.end method

.method public static max([B)B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 934
    if-nez p0, :cond_0

    .line 935
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 937
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    :cond_1
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 942
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 943
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_2

    .line 944
    aget-byte v1, p0, v0

    .line 942
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_3
    return v1
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1206
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 962
    if-nez p0, :cond_0

    .line 963
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 964
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 965
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 969
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 970
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 971
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 972
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 979
    .end local v2    # "max":D
    :cond_2
    return-wide v2

    .line 974
    .restart local v2    # "max":D
    :cond_3
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_4

    .line 975
    aget-wide v2, p0, v0

    .line 970
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1222
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 993
    if-nez p0, :cond_0

    .line 994
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 995
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 996
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1000
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1001
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1002
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1003
    const/high16 v1, 0x7fc00000    # NaNf

    .line 1010
    .end local v1    # "max":F
    :cond_2
    return v1

    .line 1005
    .restart local v1    # "max":F
    :cond_3
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1006
    aget v1, p0, v0

    .line 1001
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1148
    if-le p1, p0, :cond_0

    .line 1149
    move p0, p1

    .line 1151
    :cond_0
    if-le p2, p0, :cond_1

    .line 1152
    move p0, p2

    .line 1154
    :cond_1
    return p0
.end method

.method public static max([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 880
    if-nez p0, :cond_0

    .line 881
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 883
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 887
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 888
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 889
    aget v2, p0, v0

    if-le v2, v1, :cond_2

    .line 890
    aget v1, p0, v0

    .line 888
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_3
    return v1
.end method

.method public static max(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1130
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1131
    move-wide p0, p2

    .line 1133
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1134
    move-wide p0, p4

    .line 1136
    :cond_1
    return-wide p0
.end method

.method public static max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 853
    if-nez p0, :cond_0

    .line 854
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 856
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 860
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 861
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 862
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 863
    aget-wide v2, p0, v0

    .line 861
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_3
    return-wide v2
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1166
    if-le p1, p0, :cond_0

    .line 1167
    move p0, p1

    .line 1169
    :cond_0
    if-le p2, p0, :cond_1

    .line 1170
    move p0, p2

    .line 1172
    :cond_1
    return p0
.end method

.method public static max([S)S
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 907
    if-nez p0, :cond_0

    .line 908
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 909
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 910
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_1
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 915
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 916
    aget-short v2, p0, v0

    if-le v2, v1, :cond_2

    .line 917
    aget-short v1, p0, v0

    .line 915
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 921
    :cond_3
    return v1
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1078
    if-ge p1, p0, :cond_0

    .line 1079
    move p0, p1

    .line 1081
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1082
    move p0, p2

    .line 1084
    :cond_1
    return p0
.end method

.method public static min([B)B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 762
    if-nez p0, :cond_0

    .line 763
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 764
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 765
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 769
    :cond_1
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 770
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 771
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 772
    aget-byte v1, p0, v0

    .line 770
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_3
    return v1
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1100
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 791
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 793
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 798
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 799
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 800
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 807
    .end local v2    # "min":D
    :cond_2
    return-wide v2

    .line 802
    .restart local v2    # "min":D
    :cond_3
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_4

    .line 803
    aget-wide v2, p0, v0

    .line 798
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1116
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 821
    if-nez p0, :cond_0

    .line 822
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 823
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 828
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 829
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 830
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    const/high16 v1, 0x7fc00000    # NaNf

    .line 838
    .end local v1    # "min":F
    :cond_2
    return v1

    .line 833
    .restart local v1    # "min":F
    :cond_3
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 834
    aget v1, p0, v0

    .line 829
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1042
    if-ge p1, p0, :cond_0

    .line 1043
    move p0, p1

    .line 1045
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1046
    move p0, p2

    .line 1048
    :cond_1
    return p0
.end method

.method public static min([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 711
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 715
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 716
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 717
    aget v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 718
    aget v1, p0, v0

    .line 716
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_3
    return v1
.end method

.method public static min(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1024
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1025
    move-wide p0, p2

    .line 1027
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1028
    move-wide p0, p4

    .line 1030
    :cond_1
    return-wide p0
.end method

.method public static min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 681
    if-nez p0, :cond_0

    .line 682
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 684
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 689
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 690
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 691
    aget-wide v2, p0, v0

    .line 689
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    :cond_3
    return-wide v2
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1060
    if-ge p1, p0, :cond_0

    .line 1061
    move p0, p1

    .line 1063
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1064
    move p0, p2

    .line 1066
    :cond_1
    return p0
.end method

.method public static min([S)S
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 735
    if-nez p0, :cond_0

    .line 736
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 737
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 738
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    :cond_1
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 743
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 744
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 745
    aget-short v1, p0, v0

    .line 743
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_3
    return v1
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 151
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 325
    if-nez p0, :cond_0

    .line 331
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 329
    .restart local p1    # "defaultValue":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 279
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 277
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 178
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 176
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 227
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 225
    .restart local p1    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
