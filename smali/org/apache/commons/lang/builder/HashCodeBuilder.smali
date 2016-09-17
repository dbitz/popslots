.class public Lorg/apache/commons/lang/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# static fields
.field private static registry:Ljava/lang/ThreadLocal;


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder$1;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->registry:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 556
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 557
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 558
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialNonZeroOddNumber"    # I
    .param p2, "multiplierNonZeroOddNumber"    # I

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 578
    if-nez p1, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1
    if-nez p2, :cond_2

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_3
    iput p2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 591
    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 592
    return-void
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->registry:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "builder"    # Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 164
    .local v4, "fields":[Ljava/lang/reflect/Field;
    if-eqz p4, :cond_3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "excludedFieldList":Ljava/util/List;
    :goto_1
    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 166
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 167
    aget-object v2, v4, v5

    .line 168
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 173
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 174
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 164
    .end local v1    # "excludedFieldList":Ljava/util/List;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    :cond_3
    :try_start_2
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 175
    .restart local v1    # "excludedFieldList":Ljava/util/List;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i":I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/InternalError;

    const-string/jumbo v7, "Unexpected IllegalAccessException"

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "excludedFieldList":Ljava/util/List;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    :catchall_0
    move-exception v6

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw v6

    .restart local v1    # "excludedFieldList":Ljava/util/List;
    .restart local v4    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "i":I
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 225
    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .prologue
    const/4 v4, 0x0

    .line 269
    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 291
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 4
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 343
    if-nez p2, :cond_0

    .line 344
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The object to build a hash code for must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    .line 347
    .local v0, "builder":Lorg/apache/commons/lang/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 348
    .local v1, "clazz":Ljava/lang/Class;
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 349
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v1, p4, :cond_1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 351
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2
.end method

.method public static reflectionHashCode(Ljava/lang/Object;)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 387
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # Ljava/util/Collection;

    .prologue
    .line 459
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .prologue
    const/4 v4, 0x0

    .line 423
    const/16 v0, 0x11

    const/16 v1, 0x25

    move-object v2, p0

    move v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 497
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 509
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method private static toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 521
    new-instance v0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 537
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 645
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 646
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 681
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 682
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 715
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 748
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 749
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 782
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 783
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 821
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 822
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 884
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 861
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 862
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 863
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 864
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 865
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 866
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 867
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 868
    check-cast p1, [C

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 869
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 870
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 871
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 872
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 873
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 874
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 875
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 876
    check-cast p1, [Z

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 877
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 879
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 881
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_9
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_0
.end method

.method public append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 917
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 918
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 609
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 610
    return-object p0

    .line 609
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 661
    if-nez p1, :cond_1

    .line 662
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 668
    :cond_0
    return-object p0

    .line 664
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 665
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [C

    .prologue
    .line 695
    if-nez p1, :cond_1

    .line 696
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 702
    :cond_0
    return-object p0

    .line 698
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 699
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [D

    .prologue
    .line 728
    if-nez p1, :cond_1

    .line 729
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 735
    :cond_0
    return-object p0

    .line 731
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 732
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [F

    .prologue
    .line 762
    if-nez p1, :cond_1

    .line 763
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 769
    :cond_0
    return-object p0

    .line 765
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 766
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [I

    .prologue
    .line 796
    if-nez p1, :cond_1

    .line 797
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 803
    :cond_0
    return-object p0

    .line 799
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 800
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [J

    .prologue
    .line 835
    if-nez p1, :cond_1

    .line 836
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 842
    :cond_0
    return-object p0

    .line 838
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 839
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 897
    if-nez p1, :cond_1

    .line 898
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 904
    :cond_0
    return-object p0

    .line 900
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 901
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [S

    .prologue
    .line 931
    if-nez p1, :cond_1

    .line 932
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 938
    :cond_0
    return-object p0

    .line 934
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 935
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    .line 623
    if-nez p1, :cond_1

    .line 624
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 630
    :cond_0
    return-object p0

    .line 626
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 627
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "superHashCode"    # I

    .prologue
    .line 952
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 953
    return-object p0
.end method

.method public toHashCode()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
