.class public final Lorg/apache/commons/lang/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static compare(DD)I
    .locals 8
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 491
    cmpg-double v6, p0, p2

    if-gez v6, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v4

    .line 494
    :cond_1
    cmpl-double v6, p0, p2

    if-lez v6, :cond_2

    move v4, v5

    .line 495
    goto :goto_0

    .line 501
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 502
    .local v0, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 503
    .local v2, "rhsBits":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    .line 504
    const/4 v4, 0x0

    goto :goto_0

    .line 512
    :cond_3
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    move v4, v5

    .line 515
    goto :goto_0
.end method

.method public static compare(FF)I
    .locals 5
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 552
    cmpg-float v4, p0, p1

    if-gez v4, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v2

    .line 555
    :cond_1
    cmpl-float v4, p0, p1

    if-lez v4, :cond_2

    move v2, v3

    .line 556
    goto :goto_0

    .line 562
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 563
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 564
    .local v1, "rhsBits":I
    if-ne v0, v1, :cond_3

    .line 565
    const/4 v2, 0x0

    goto :goto_0

    .line 573
    :cond_3
    if-lt v0, v1, :cond_0

    move v2, v3

    .line 576
    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 376
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "bd":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 364
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "bi":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 14
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_1

    .line 140
    const/4 v6, 0x0

    .line 281
    :cond_0
    :goto_0
    return-object v6

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 143
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string/jumbo v11, "\"\" is not a valid number."

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    :cond_2
    const-string/jumbo v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 150
    const/4 v6, 0x0

    goto :goto_0

    .line 152
    :cond_3
    const-string/jumbo v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 153
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 159
    .local v7, "lastChar":C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 160
    .local v3, "decPos":I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 162
    .local v5, "expPos":I
    const/4 v10, -0x1

    if-le v3, v10, :cond_8

    .line 164
    const/4 v10, -0x1

    if-le v5, v10, :cond_7

    .line 165
    if-ge v5, v3, :cond_6

    .line 166
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

    .line 168
    :cond_6
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "dec":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "mant":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_12

    .line 182
    const/4 v10, -0x1

    if-le v5, v10, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_a

    .line 183
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "exp":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {v4}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v0, 0x1

    .line 190
    .local v0, "allZeros":Z
    :goto_4
    sparse-switch v7, :sswitch_data_0

    .line 236
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

    .line 170
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

    .line 174
    .end local v2    # "dec":Ljava/lang/String;
    :cond_8
    const/4 v10, -0x1

    if-le v5, v10, :cond_9

    .line 175
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8    # "mant":Ljava/lang/String;
    :goto_6
    const/4 v2, 0x0

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_2

    .line 177
    .end local v2    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_9
    move-object v8, p0

    .restart local v8    # "mant":Ljava/lang/String;
    goto :goto_6

    .line 185
    .restart local v2    # "dec":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_3

    .line 189
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 193
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

    invoke-static {v10}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_c
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 197
    :cond_d
    :try_start_0
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v10

    .line 201
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 204
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

    .line 208
    :sswitch_1
    :try_start_1
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 209
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

    .line 222
    .end local v6    # "f":Ljava/lang/Float;
    :cond_f
    :goto_7
    :sswitch_2
    :try_start_2
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 223
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

    .line 224
    goto/16 :goto_0

    .line 226
    .end local v1    # "d":Ljava/lang/Double;
    :catch_1
    move-exception v10

    .line 230
    :cond_11
    :try_start_3
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    goto/16 :goto_0

    .line 242
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

    .line 243
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 247
    .restart local v4    # "exp":Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_14

    if-nez v4, :cond_14

    .line 250
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 245
    .end local v4    # "exp":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_8

    .line 251
    :catch_2
    move-exception v10

    .line 255
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 256
    :catch_3
    move-exception v10

    .line 259
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 263
    :cond_14
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v4}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v0, 0x1

    .line 265
    .restart local v0    # "allZeros":Z
    :goto_9
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 266
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

    .line 273
    .end local v6    # "f":Ljava/lang/Float;
    :cond_15
    :goto_a
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 274
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

    .line 275
    goto/16 :goto_0

    .line 263
    .end local v0    # "allZeros":Z
    .end local v1    # "d":Ljava/lang/Double;
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 277
    .restart local v0    # "allZeros":Z
    :catch_4
    move-exception v10

    .line 281
    :cond_18
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_0

    .line 231
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 269
    .end local v9    # "numeric":Ljava/lang/String;
    :catch_6
    move-exception v10

    goto :goto_a

    .line 215
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_7
    move-exception v10

    goto/16 :goto_7

    .line 190
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
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    if-nez p0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 302
    goto :goto_0

    .line 300
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 305
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

    .line 593
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v1

    .line 596
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 597
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
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

    .line 618
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v9

    .line 621
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 622
    .local v1, "chars":[C
    array-length v7, v1

    .line 623
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 624
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 625
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 626
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 628
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_5

    move v6, v8

    .line 629
    .local v6, "start":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_7

    .line 630
    aget-char v10, v1, v6

    if-ne v10, v12, :cond_7

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    .line 631
    add-int/lit8 v5, v6, 0x2

    .line 632
    .local v5, "i":I
    if-eq v5, v7, :cond_0

    .line 636
    :goto_2
    array-length v10, v1

    if-ge v5, v10, :cond_6

    .line 637
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

    .line 636
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_5
    move v6, v9

    .line 628
    goto :goto_1

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_6
    move v9, v8

    .line 643
    goto :goto_0

    .line 646
    .end local v5    # "i":I
    :cond_7
    add-int/lit8 v7, v7, -0x1

    .line 648
    move v5, v6

    .line 651
    .restart local v5    # "i":I
    :goto_3
    if-lt v5, v7, :cond_8

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_e

    if-eqz v0, :cond_e

    if-nez v2, :cond_e

    .line 652
    :cond_8
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_9

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_9

    .line 653
    const/4 v2, 0x1

    .line 654
    const/4 v0, 0x0

    .line 682
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 656
    :cond_9
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_a

    .line 657
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 661
    const/4 v3, 0x1

    goto :goto_4

    .line 662
    :cond_a
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_b

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_c

    .line 664
    :cond_b
    if-nez v4, :cond_0

    .line 668
    if-eqz v2, :cond_0

    .line 671
    const/4 v4, 0x1

    .line 672
    const/4 v0, 0x1

    goto :goto_4

    .line 673
    :cond_c
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_d

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_0

    .line 674
    :cond_d
    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x0

    .line 678
    const/4 v2, 0x0

    goto :goto_4

    .line 684
    :cond_e
    array-length v10, v1

    if-ge v5, v10, :cond_14

    .line 685
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_f

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_f

    move v9, v8

    .line 687
    goto/16 :goto_0

    .line 689
    :cond_f
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_0

    .line 693
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

    .line 698
    goto/16 :goto_0

    .line 700
    :cond_11
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_12

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 703
    :cond_12
    if-eqz v2, :cond_13

    if-nez v4, :cond_13

    :goto_5
    move v9, v8

    goto/16 :goto_0

    :cond_13
    move v8, v9

    goto :goto_5

    .line 710
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

.method public static maximum(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 445
    if-le p1, p0, :cond_0

    .line 446
    move p0, p1

    .line 448
    :cond_0
    if-le p2, p0, :cond_1

    .line 449
    move p0, p2

    .line 451
    :cond_1
    return p0
.end method

.method public static maximum(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 427
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 428
    move-wide p0, p2

    .line 430
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 431
    move-wide p0, p4

    .line 433
    :cond_1
    return-wide p0
.end method

.method public static minimum(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 409
    if-ge p1, p0, :cond_0

    .line 410
    move p0, p1

    .line 412
    :cond_0
    if-ge p2, p0, :cond_1

    .line 413
    move p0, p2

    .line 415
    :cond_1
    return p0
.end method

.method public static minimum(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 391
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 392
    move-wide p0, p2

    .line 394
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 395
    move-wide p0, p4

    .line 397
    :cond_1
    return-wide p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/NumberUtils;->stringToInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 76
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 75
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
