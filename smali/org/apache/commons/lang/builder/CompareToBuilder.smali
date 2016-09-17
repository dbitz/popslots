.class public Lorg/apache/commons/lang/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 112
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .locals 7
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/CompareToBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 358
    .local v3, "fields":[Ljava/lang/reflect/Field;
    if-eqz p5, :cond_2

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 359
    .local v1, "excludedFieldList":Ljava/util/List;
    :goto_0
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 360
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    iget v5, p3, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v5, :cond_3

    .line 361
    aget-object v2, v3, v4

    .line 362
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

    .line 367
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 358
    .end local v1    # "excludedFieldList":Ljava/util/List;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "i":I
    :cond_2
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 368
    .restart local v1    # "excludedFieldList":Ljava/util/List;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/InternalError;

    const-string/jumbo v6, "Unexpected IllegalAccessException"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_3
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .prologue
    .line 207
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p3, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 319
    if-ne p0, p1, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 322
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 323
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 325
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 326
    .local v2, "lhsClazz":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 329
    :cond_3
    new-instance v3, Lorg/apache/commons/lang/builder/CompareToBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang/builder/CompareToBuilder;-><init>()V

    .local v3, "compareToBuilder":Lorg/apache/commons/lang/builder/CompareToBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 330
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 331
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    .line 332
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 333
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    .line 568
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 572
    :goto_0
    return-object p0

    .line 571
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    .line 552
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    return-object p0

    .line 555
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    .line 589
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 593
    :goto_0
    return-object p0

    .line 592
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    .line 610
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-object p0

    .line 613
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    .line 520
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 524
    :goto_0
    return-object p0

    .line 523
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    .line 504
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    return-object p0

    .line 507
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 444
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    .line 491
    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 447
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    .line 450
    if-nez p1, :cond_2

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 454
    :cond_2
    if-nez p2, :cond_3

    .line 455
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 462
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 463
    check-cast p1, [J

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 464
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 465
    check-cast p1, [I

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 466
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_6

    .line 467
    check-cast p1, [S

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 468
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    .line 469
    check-cast p1, [C

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 470
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    .line 471
    check-cast p1, [B

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 472
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 473
    check-cast p1, [D

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 474
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v0, p1, [F

    if-eqz v0, :cond_a

    .line 475
    check-cast p1, [F

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 476
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    .line 477
    check-cast p1, [Z

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 481
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 485
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    if-nez p3, :cond_d

    .line 486
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "lhs":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0

    .line 488
    .restart local p1    # "lhs":Ljava/lang/Object;
    :cond_d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    .line 536
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 540
    :goto_0
    return-object p0

    .line 539
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    .line 626
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-object p0

    .line 629
    :cond_1
    if-eq p1, p2, :cond_0

    .line 632
    if-nez p1, :cond_2

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 635
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 889
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object p0

    .line 892
    :cond_1
    if-eq p1, p2, :cond_0

    .line 895
    if-nez p1, :cond_2

    .line 896
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 899
    :cond_2
    if-nez p2, :cond_3

    .line 900
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 903
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 904
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 907
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 908
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 849
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object p0

    .line 852
    :cond_1
    if-eq p1, p2, :cond_0

    .line 855
    if-nez p1, :cond_2

    .line 856
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 859
    :cond_2
    if-nez p2, :cond_3

    .line 860
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 863
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 864
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 867
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 868
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 929
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-object p0

    .line 932
    :cond_1
    if-eq p1, p2, :cond_0

    .line 935
    if-nez p1, :cond_2

    .line 936
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 939
    :cond_2
    if-nez p2, :cond_3

    .line 940
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 943
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 944
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 947
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 948
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 969
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-object p0

    .line 972
    :cond_1
    if-eq p1, p2, :cond_0

    .line 975
    if-nez p1, :cond_2

    .line 976
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 979
    :cond_2
    if-nez p2, :cond_3

    .line 980
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 983
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 984
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 987
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 988
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 769
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-object p0

    .line 772
    :cond_1
    if-eq p1, p2, :cond_0

    .line 775
    if-nez p1, :cond_2

    .line 776
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 779
    :cond_2
    if-nez p2, :cond_3

    .line 780
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 783
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 784
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 787
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 788
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 729
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-object p0

    .line 732
    :cond_1
    if-eq p1, p2, :cond_0

    .line 735
    if-nez p1, :cond_2

    .line 736
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 739
    :cond_2
    if-nez p2, :cond_3

    .line 740
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 743
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 744
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 747
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 748
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;
    .param p3, "comparator"    # Ljava/util/Comparator;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 689
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-object p0

    .line 692
    :cond_1
    if-eq p1, p2, :cond_0

    .line 695
    if-nez p1, :cond_2

    .line 696
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 699
    :cond_2
    if-nez p2, :cond_3

    .line 700
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 703
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 704
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 707
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 708
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 809
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object p0

    .line 812
    :cond_1
    if-eq p1, p2, :cond_0

    .line 815
    if-nez p1, :cond_2

    .line 816
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 819
    :cond_2
    if-nez p2, :cond_3

    .line 820
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 823
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 824
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 827
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 828
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1009
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-object p0

    .line 1012
    :cond_1
    if-eq p1, p2, :cond_0

    .line 1015
    if-nez p1, :cond_2

    .line 1016
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 1019
    :cond_2
    if-nez p2, :cond_3

    .line 1020
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 1023
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 1024
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 1027
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 1028
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public appendSuper(I)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "superCompareTo"    # I

    .prologue
    .line 387
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-object p0

    .line 390
    :cond_0
    iput p1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public toComparison()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    return v0
.end method
