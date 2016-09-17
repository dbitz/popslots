.class public Lorg/apache/commons/lang/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 102
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 7
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 321
    .local v3, "fields":[Ljava/lang/reflect/Field;
    if-eqz p5, :cond_2

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 322
    .local v1, "excludedFieldList":Ljava/util/List;
    :goto_0
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 323
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    iget-boolean v5, p3, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v5, :cond_3

    .line 324
    aget-object v2, v3, v4

    .line 325
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 330
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 321
    .end local v1    # "excludedFieldList":Ljava/util/List;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "i":I
    :cond_2
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 331
    .restart local v1    # "excludedFieldList":Ljava/util/List;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/InternalError;

    const-string/jumbo v6, "Unexpected IllegalAccessException"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 338
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_3
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .prologue
    .line 148
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 255
    if-ne p0, p1, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    .line 258
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v9

    .line 259
    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 266
    .local v7, "lhsClass":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 268
    .local v8, "rhsClass":Ljava/lang/Class;
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    move-object v2, v7

    .line 270
    .local v2, "testClass":Ljava/lang/Class;
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    move-object v2, v8

    .line 284
    :cond_3
    :goto_1
    new-instance v3, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    .local v3, "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 286
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 287
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v2, p3, :cond_6

    .line 288
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 289
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 291
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move v0, v9

    .line 297
    goto :goto_0

    .line 274
    .end local v2    # "testClass":Ljava/lang/Class;
    .end local v3    # "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    move-object v2, v8

    .line 276
    .restart local v2    # "testClass":Ljava/lang/Class;
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    move-object v2, v7

    goto :goto_1

    .end local v2    # "testClass":Ljava/lang/Class;
    :cond_5
    move v0, v9

    .line 282
    goto :goto_0

    .line 299
    .restart local v2    # "testClass":Ljava/lang/Class;
    .restart local v3    # "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_6
    invoke-virtual {v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    .line 487
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-object p0

    .line 490
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    .line 472
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 476
    :goto_0
    return-object p0

    .line 475
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    .line 508
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 511
    .end local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    .line 528
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 531
    .end local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    .line 442
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-object p0

    .line 445
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-object p0

    .line 430
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-boolean v2, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v2, :cond_1

    .line 412
    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 371
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    .line 374
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 375
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 379
    .local v0, "lhsClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_6

    .line 380
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_5

    .line 381
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "lhs":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    .line 384
    .restart local p1    # "lhs":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    .line 386
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 388
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 392
    :cond_7
    instance-of v1, p1, [J

    if-eqz v1, :cond_8

    .line 393
    check-cast p1, [J

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 394
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v1, p1, [I

    if-eqz v1, :cond_9

    .line 395
    check-cast p1, [I

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 396
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v1, p1, [S

    if-eqz v1, :cond_a

    .line 397
    check-cast p1, [S

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 398
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, [C

    if-eqz v1, :cond_b

    .line 399
    check-cast p1, [C

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 400
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, [B

    if-eqz v1, :cond_c

    .line 401
    check-cast p1, [B

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 402
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, [D

    if-eqz v1, :cond_d

    .line 403
    check-cast p1, [D

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 404
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, [F

    if-eqz v1, :cond_e

    .line 405
    check-cast p1, [F

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 406
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_e
    instance-of v1, p1, [Z

    if-eqz v1, :cond_f

    .line 407
    check-cast p1, [Z

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 410
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_f
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    .line 457
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-object p0

    .line 460
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    .line 542
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-object p0

    .line 545
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v3, 0x0

    .line 715
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-object p0

    .line 718
    :cond_1
    if-eq p1, p2, :cond_0

    .line 721
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 722
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 725
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 726
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 729
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 730
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v3, 0x0

    .line 684
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-object p0

    .line 687
    :cond_1
    if-eq p1, p2, :cond_0

    .line 690
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 691
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 694
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 695
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 698
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 699
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v3, 0x0

    .line 746
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-object p0

    .line 749
    :cond_1
    if-eq p1, p2, :cond_0

    .line 752
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 753
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 756
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 757
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 760
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 761
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v3, 0x0

    .line 777
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-object p0

    .line 780
    :cond_1
    if-eq p1, p2, :cond_0

    .line 783
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 784
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 787
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 788
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 791
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 792
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v3, 0x0

    .line 622
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-object p0

    .line 625
    :cond_1
    if-eq p1, p2, :cond_0

    .line 628
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 629
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 632
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 633
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 636
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 637
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object p0

    .line 594
    :cond_1
    if-eq p1, p2, :cond_0

    .line 597
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 598
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 601
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 602
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 605
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 606
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 560
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-object p0

    .line 563
    :cond_1
    if-eq p1, p2, :cond_0

    .line 566
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 567
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 570
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 571
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 574
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 575
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-object p0

    .line 656
    :cond_1
    if-eq p1, p2, :cond_0

    .line 659
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 660
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 663
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 664
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 667
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 668
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 808
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-object p0

    .line 811
    :cond_1
    if-eq p1, p2, :cond_0

    .line 814
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 815
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 818
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 819
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 822
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 823
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .prologue
    .line 350
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-object p0

    .line 353
    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0
.end method

.method public isEquals()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .prologue
    .line 845
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 846
    return-void
.end method
