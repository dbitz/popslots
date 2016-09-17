.class public Lorg/apache/commons/lang/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1

.field static class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 59
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 63
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 67
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 71
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 75
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 79
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 83
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 87
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 91
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 95
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 99
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 103
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 107
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 111
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 115
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 119
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 123
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 127
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "clss"    # Ljava/lang/Class;

    .prologue
    const/4 v4, 0x0

    .line 3774
    if-nez p0, :cond_1

    .line 3775
    if-eqz p1, :cond_0

    .line 3776
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", Length: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3778
    :cond_0
    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 3779
    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3792
    .end local v0    # "joinedArray":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 3782
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 3783
    .local v1, "length":I
    if-gt p1, v1, :cond_2

    if-gez p1, :cond_3

    .line 3784
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3786
    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 3787
    .local v2, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3788
    invoke-static {v2, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3789
    if-ge p1, v1, :cond_4

    .line 3790
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v2

    .line 3792
    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    .line 3287
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3288
    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 3289
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B

    .prologue
    .line 3604
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(B)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    .line 3314
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 3315
    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 3316
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C

    .prologue
    .line 3573
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p2}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    .line 3341
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 3342
    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3343
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D

    .prologue
    .line 3759
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    .line 3368
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 3369
    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3370
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F

    .prologue
    .line 3728
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 3395
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3396
    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3397
    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I

    .prologue
    .line 3666
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J

    .prologue
    .line 3697
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 3422
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 3423
    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3424
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 3502
    const/4 v0, 0x0

    .line 3503
    .local v0, "clss":Ljava/lang/Class;
    if-eqz p0, :cond_0

    .line 3504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 3510
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_1
    return-object v1

    .line 3505
    :cond_0
    if-eqz p2, :cond_1

    .line 3506
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 3508
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 3232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3233
    .local v1, "type":Ljava/lang/Class;
    :goto_0
    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3234
    .local v0, "newArray":[Ljava/lang/Object;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v0, v2

    .line 3235
    return-object v0

    .line 3232
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "type":Ljava/lang/Class;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string/jumbo v2, "java.lang.Object"

    invoke-static {v2}, Lorg/apache/commons/lang/ArrayUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static add([SIS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S

    .prologue
    .line 3635
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    .line 3449
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 3450
    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 3451
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .prologue
    .line 3541
    invoke-static {p2}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    .line 3260
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 3261
    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 3262
    return-object v0
.end method

.method public static addAll([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 3052
    if-nez p0, :cond_0

    .line 3053
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 3060
    :goto_0
    return-object v0

    .line 3054
    :cond_0
    if-nez p1, :cond_1

    .line 3055
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 3057
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 3058
    .local v0, "joinedArray":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3059
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([C[C)[C
    .locals 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v3, 0x0

    .line 3023
    if-nez p0, :cond_0

    .line 3024
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 3031
    :goto_0
    return-object v0

    .line 3025
    :cond_0
    if-nez p1, :cond_1

    .line 3026
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 3028
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 3029
    .local v0, "joinedArray":[C
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3030
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([D[D)[D
    .locals 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v3, 0x0

    .line 3197
    if-nez p0, :cond_0

    .line 3198
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 3205
    :goto_0
    return-object v0

    .line 3199
    :cond_0
    if-nez p1, :cond_1

    .line 3200
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 3202
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 3203
    .local v0, "joinedArray":[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3204
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([F[F)[F
    .locals 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v3, 0x0

    .line 3168
    if-nez p0, :cond_0

    .line 3169
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 3176
    :goto_0
    return-object v0

    .line 3170
    :cond_0
    if-nez p1, :cond_1

    .line 3171
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 3173
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 3174
    .local v0, "joinedArray":[F
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3175
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3110
    if-nez p0, :cond_0

    .line 3111
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 3118
    :goto_0
    return-object v0

    .line 3112
    :cond_0
    if-nez p1, :cond_1

    .line 3113
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 3115
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 3116
    .local v0, "joinedArray":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3117
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([J[J)[J
    .locals 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v3, 0x0

    .line 3139
    if-nez p0, :cond_0

    .line 3140
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 3147
    :goto_0
    return-object v0

    .line 3141
    :cond_0
    if-nez p1, :cond_1

    .line 3142
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 3144
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 3145
    .local v0, "joinedArray":[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3146
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 2964
    if-nez p0, :cond_0

    .line 2965
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 2973
    :goto_0
    return-object v0

    .line 2966
    :cond_0
    if-nez p1, :cond_1

    .line 2967
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2969
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2971
    .local v0, "joinedArray":[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2972
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([S[S)[S
    .locals 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v3, 0x0

    .line 3081
    if-nez p0, :cond_0

    .line 3082
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 3089
    :goto_0
    return-object v0

    .line 3083
    :cond_0
    if-nez p1, :cond_1

    .line 3084
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 3086
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    .line 3087
    .local v0, "joinedArray":[S
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3088
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addAll([Z[Z)[Z
    .locals 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 2994
    if-nez p0, :cond_0

    .line 2995
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 3002
    :goto_0
    return-object v0

    .line 2996
    :cond_0
    if-nez p1, :cond_1

    .line 2997
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 2999
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    .line 3000
    .local v0, "joinedArray":[Z
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3001
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 3232
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 342
    if-nez p0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 390
    if-nez p0, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 294
    if-nez p0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 326
    if-nez p0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 406
    if-nez p0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 1833
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 1730
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 3
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 2040
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    const/4 v3, 0x0

    .line 2057
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 2160
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 1519
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 3
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 1416
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 1313
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 1622
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 2265
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "newArrayComponentType"    # Ljava/lang/Class;

    .prologue
    const/4 v4, 0x0

    .line 3464
    if-eqz p0, :cond_0

    .line 3465
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 3466
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 3467
    .local v1, "newArray":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3470
    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 961
    if-nez p0, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 192
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 1746
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1764
    if-nez p0, :cond_1

    move v0, v1

    .line 1775
    :cond_0
    :goto_0
    return v0

    .line 1767
    :cond_1
    if-gez p2, :cond_2

    .line 1768
    const/4 p2, 0x0

    .line 1770
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1771
    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1770
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1775
    goto :goto_0
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 1639
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1658
    if-nez p0, :cond_1

    move v0, v1

    .line 1669
    :cond_0
    :goto_0
    return v0

    .line 1661
    :cond_1
    if-gez p2, :cond_2

    .line 1662
    const/4 p2, 0x0

    .line 1664
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1665
    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1669
    goto :goto_0
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 1849
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    .line 1866
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1884
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1895
    :cond_0
    :goto_0
    return v0

    .line 1887
    :cond_1
    if-gez p3, :cond_2

    .line 1888
    const/4 p3, 0x0

    .line 1890
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1891
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    .line 1890
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1895
    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v1, -0x1

    .line 1916
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    .line 1929
    :cond_0
    :goto_0
    return v0

    .line 1919
    :cond_1
    if-gez p3, :cond_2

    .line 1920
    const/4 p3, 0x0

    .line 1922
    :cond_2
    sub-double v4, p1, p4

    .line 1923
    .local v4, "min":D
    add-double v2, p1, p4

    .line 1924
    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v6, p0

    if-ge v0, v6, :cond_4

    .line 1925
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_3

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v2

    if-lez v6, :cond_0

    .line 1924
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1929
    goto :goto_0
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 2073
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 2091
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2102
    :cond_0
    :goto_0
    return v0

    .line 2094
    :cond_1
    if-gez p2, :cond_2

    .line 2095
    const/4 p2, 0x0

    .line 2097
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2098
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 2097
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2102
    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 1432
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1450
    if-nez p0, :cond_1

    move v0, v1

    .line 1461
    :cond_0
    :goto_0
    return v0

    .line 1453
    :cond_1
    if-gez p2, :cond_2

    .line 1454
    const/4 p2, 0x0

    .line 1456
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1457
    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1461
    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 1329
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1347
    if-nez p0, :cond_1

    move v0, v1

    .line 1358
    :cond_0
    :goto_0
    return v0

    .line 1350
    :cond_1
    if-gez p3, :cond_2

    .line 1351
    const/4 p3, 0x0

    .line 1353
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1354
    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1358
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 1210
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1228
    if-nez p0, :cond_1

    move v0, v1

    .line 1247
    :cond_0
    :goto_0
    return v0

    .line 1231
    :cond_1
    if-gez p2, :cond_2

    .line 1232
    const/4 p2, 0x0

    .line 1234
    :cond_2
    if-nez p1, :cond_3

    .line 1235
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 1236
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1241
    .end local v0    # "i":I
    :cond_3
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 1242
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 1247
    goto :goto_0
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 1535
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1553
    if-nez p0, :cond_1

    move v0, v1

    .line 1564
    :cond_0
    :goto_0
    return v0

    .line 1556
    :cond_1
    if-gez p2, :cond_2

    .line 1557
    const/4 p2, 0x0

    .line 1559
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1560
    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1564
    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 2176
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 2195
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2206
    :cond_0
    :goto_0
    return v0

    .line 2198
    :cond_1
    if-gez p2, :cond_2

    .line 2199
    const/4 p2, 0x0

    .line 2201
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2202
    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2206
    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 2894
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2895
    :cond_0
    const/4 v0, 0x1

    .line 2897
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 2880
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2881
    :cond_0
    const/4 v0, 0x1

    .line 2883
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 2908
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2909
    :cond_0
    const/4 v0, 0x1

    .line 2911
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 2922
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2923
    :cond_0
    const/4 v0, 0x1

    .line 2925
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 2852
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2853
    :cond_0
    const/4 v0, 0x1

    .line 2855
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 2838
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2839
    :cond_0
    const/4 v0, 0x1

    .line 2841
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2824
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2825
    :cond_0
    const/4 v0, 0x1

    .line 2827
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 2866
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2867
    :cond_0
    const/4 v0, 0x1

    .line 2869
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 2936
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2937
    :cond_0
    const/4 v0, 0x1

    .line 2939
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    .line 206
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isSameLength([B[B)Z
    .locals 2
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    .line 877
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 880
    :cond_2
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    .line 859
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 862
    :cond_2
    const/4 v0, 0x0

    .line 864
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    .line 895
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 898
    :cond_2
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    .line 913
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 916
    :cond_2
    const/4 v0, 0x0

    .line 918
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    .line 823
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 826
    :cond_2
    const/4 v0, 0x0

    .line 828
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    .line 805
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 808
    :cond_2
    const/4 v0, 0x0

    .line 810
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    .line 787
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 790
    :cond_2
    const/4 v0, 0x0

    .line 792
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    .line 841
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 844
    :cond_2
    const/4 v0, 0x0

    .line 846
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    .line 931
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 934
    :cond_2
    const/4 v0, 0x0

    .line 936
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    .line 977
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 1789
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1807
    if-nez p0, :cond_1

    move v0, v1

    .line 1820
    :cond_0
    :goto_0
    return v0

    .line 1810
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1811
    goto :goto_0

    .line 1812
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1813
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1815
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1816
    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1815
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1820
    goto :goto_0
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 1684
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1703
    if-nez p0, :cond_1

    move v0, v1

    .line 1716
    :cond_0
    :goto_0
    return v0

    .line 1706
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1707
    goto :goto_0

    .line 1708
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1709
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1711
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1712
    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1711
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1716
    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 1943
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    .line 1960
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1978
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1991
    :cond_0
    :goto_0
    return v0

    .line 1981
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 1982
    goto :goto_0

    .line 1983
    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    .line 1984
    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    .line 1986
    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1987
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    .line 1986
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1991
    goto :goto_0
.end method

.method public static lastIndexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v1, -0x1

    .line 2012
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    .line 2027
    :cond_0
    :goto_0
    return v0

    .line 2015
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 2016
    goto :goto_0

    .line 2017
    :cond_2
    array-length v6, p0

    if-lt p3, v6, :cond_3

    .line 2018
    array-length v6, p0

    add-int/lit8 p3, v6, -0x1

    .line 2020
    :cond_3
    sub-double v4, p1, p4

    .line 2021
    .local v4, "min":D
    add-double v2, p1, p4

    .line 2022
    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 2023
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_4

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v2

    if-lez v6, :cond_0

    .line 2022
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2027
    goto :goto_0
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 2116
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 2134
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2147
    :cond_0
    :goto_0
    return v0

    .line 2137
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2138
    goto :goto_0

    .line 2139
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2140
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2142
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 2143
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 2142
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2147
    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 1475
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1493
    if-nez p0, :cond_1

    move v0, v1

    .line 1506
    :cond_0
    :goto_0
    return v0

    .line 1496
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1497
    goto :goto_0

    .line 1498
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1499
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1501
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1502
    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1501
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1506
    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 1372
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1390
    if-nez p0, :cond_1

    move v0, v1

    .line 1403
    :cond_0
    :goto_0
    return v0

    .line 1393
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 1394
    goto :goto_0

    .line 1395
    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    .line 1396
    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    .line 1398
    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1399
    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 1398
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1403
    goto :goto_0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 1261
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1279
    if-nez p0, :cond_1

    move v0, v1

    .line 1300
    :cond_0
    :goto_0
    return v0

    .line 1282
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1283
    goto :goto_0

    .line 1284
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1285
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1287
    :cond_3
    if-nez p1, :cond_4

    .line 1288
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 1289
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 1288
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1294
    .end local v0    # "i":I
    :cond_4
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 1295
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1294
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1300
    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 1578
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 1596
    if-nez p0, :cond_1

    move v0, v1

    .line 1609
    :cond_0
    :goto_0
    return v0

    .line 1599
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1600
    goto :goto_0

    .line 1601
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1602
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1604
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1605
    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1604
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1609
    goto :goto_0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 2221
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 2239
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2252
    :cond_0
    :goto_0
    return v0

    .line 2242
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2243
    goto :goto_0

    .line 2244
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2245
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2247
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 2248
    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2247
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2252
    goto :goto_0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4402
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4403
    .local v0, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 4404
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4407
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4408
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4409
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 4410
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4413
    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 3954
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .prologue
    .line 4019
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .prologue
    .line 4084
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .prologue
    .line 4149
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .prologue
    .line 4214
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .prologue
    .line 4279
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 3824
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .prologue
    .line 4344
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .prologue
    .line 3889
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    .line 3983
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 3984
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3985
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([B)[B

    move-result-object v1

    .line 3987
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    .line 4048
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4049
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4050
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([C)[C

    move-result-object v1

    .line 4052
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([CI)[C

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    .line 4113
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4114
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4115
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([D)[D

    move-result-object v1

    .line 4117
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([DI)[D

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    .line 4178
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4179
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4180
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([F)[F

    move-result-object v1

    .line 4182
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([FI)[F

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 4243
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 4244
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4245
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([I)[I

    move-result-object v1

    .line 4247
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 4308
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 4309
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4310
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([J)[J

    move-result-object v1

    .line 4312
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([JI)[J

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 3853
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 3854
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3855
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 3857
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    .line 4373
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 4374
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4375
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([S)[S

    move-result-object v1

    .line 4377
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([SI)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    .line 3918
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 3919
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3920
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    .line 3922
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    goto :goto_0
.end method

.method public static reverse([B)V
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 1110
    if-nez p0, :cond_1

    .line 1123
    :cond_0
    return-void

    .line 1113
    :cond_1
    const/4 v0, 0x0

    .line 1114
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1116
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1117
    aget-byte v2, p0, v1

    .line 1118
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 1119
    aput-byte v2, p0, v0

    .line 1120
    add-int/lit8 v1, v1, -0x1

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 4
    .param p0, "array"    # [C

    .prologue
    .line 1087
    if-nez p0, :cond_1

    .line 1100
    :cond_0
    return-void

    .line 1090
    :cond_1
    const/4 v0, 0x0

    .line 1091
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1093
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1094
    aget-char v2, p0, v1

    .line 1095
    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 1096
    aput-char v2, p0, v0

    .line 1097
    add-int/lit8 v1, v1, -0x1

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 1133
    if-nez p0, :cond_1

    .line 1146
    :cond_0
    return-void

    .line 1136
    :cond_1
    const/4 v0, 0x0

    .line 1137
    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 1139
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1140
    aget-wide v2, p0, v1

    .line 1141
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1142
    aput-wide v2, p0, v0

    .line 1143
    add-int/lit8 v1, v1, -0x1

    .line 1144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 1156
    if-nez p0, :cond_1

    .line 1169
    :cond_0
    return-void

    .line 1159
    :cond_1
    const/4 v0, 0x0

    .line 1160
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1162
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1163
    aget v2, p0, v1

    .line 1164
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1165
    aput v2, p0, v0

    .line 1166
    add-int/lit8 v1, v1, -0x1

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 1041
    if-nez p0, :cond_1

    .line 1054
    :cond_0
    return-void

    .line 1044
    :cond_1
    const/4 v0, 0x0

    .line 1045
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1047
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1048
    aget v2, p0, v1

    .line 1049
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1050
    aput v2, p0, v0

    .line 1051
    add-int/lit8 v1, v1, -0x1

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 1018
    if-nez p0, :cond_1

    .line 1031
    :cond_0
    return-void

    .line 1021
    :cond_1
    const/4 v0, 0x0

    .line 1022
    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 1024
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1025
    aget-wide v2, p0, v1

    .line 1026
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1027
    aput-wide v2, p0, v0

    .line 1028
    add-int/lit8 v1, v1, -0x1

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 995
    if-nez p0, :cond_1

    .line 1008
    :cond_0
    return-void

    .line 998
    :cond_1
    const/4 v0, 0x0

    .line 999
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1001
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1002
    aget-object v2, p0, v1

    .line 1003
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1004
    aput-object v2, p0, v0

    .line 1005
    add-int/lit8 v1, v1, -0x1

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 1064
    if-nez p0, :cond_1

    .line 1077
    :cond_0
    return-void

    .line 1067
    :cond_1
    const/4 v0, 0x0

    .line 1068
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1070
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1071
    aget-short v2, p0, v1

    .line 1072
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 1073
    aput-short v2, p0, v0

    .line 1074
    add-int/lit8 v1, v1, -0x1

    .line 1075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 4
    .param p0, "array"    # [Z

    .prologue
    .line 1179
    if-nez p0, :cond_1

    .line 1192
    :cond_0
    return-void

    .line 1182
    :cond_1
    const/4 v0, 0x0

    .line 1183
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1185
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1186
    aget-boolean v2, p0, v1

    .line 1187
    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 1188
    aput-boolean v2, p0, v0

    .line 1189
    add-int/lit8 v1, v1, -0x1

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 637
    if-nez p0, :cond_0

    .line 638
    const/4 v1, 0x0

    .line 653
    :goto_0
    return-object v1

    .line 640
    :cond_0
    if-gez p1, :cond_1

    .line 641
    const/4 p1, 0x0

    .line 643
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 644
    array-length p2, p0

    .line 646
    :cond_2
    sub-int v0, p2, p1

    .line 647
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 648
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 651
    :cond_3
    new-array v1, v0, [B

    .line 652
    .local v1, "subarray":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 598
    if-nez p0, :cond_0

    .line 599
    const/4 v1, 0x0

    .line 614
    :goto_0
    return-object v1

    .line 601
    :cond_0
    if-gez p1, :cond_1

    .line 602
    const/4 p1, 0x0

    .line 604
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 605
    array-length p2, p0

    .line 607
    :cond_2
    sub-int v0, p2, p1

    .line 608
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 609
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 612
    :cond_3
    new-array v1, v0, [C

    .line 613
    .local v1, "subarray":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 676
    if-nez p0, :cond_0

    .line 677
    const/4 v1, 0x0

    .line 692
    :goto_0
    return-object v1

    .line 679
    :cond_0
    if-gez p1, :cond_1

    .line 680
    const/4 p1, 0x0

    .line 682
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 683
    array-length p2, p0

    .line 685
    :cond_2
    sub-int v0, p2, p1

    .line 686
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 687
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 690
    :cond_3
    new-array v1, v0, [D

    .line 691
    .local v1, "subarray":[D
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 715
    if-nez p0, :cond_0

    .line 716
    const/4 v1, 0x0

    .line 731
    :goto_0
    return-object v1

    .line 718
    :cond_0
    if-gez p1, :cond_1

    .line 719
    const/4 p1, 0x0

    .line 721
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 722
    array-length p2, p0

    .line 724
    :cond_2
    sub-int v0, p2, p1

    .line 725
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 726
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 729
    :cond_3
    new-array v1, v0, [F

    .line 730
    .local v1, "subarray":[F
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 520
    if-nez p0, :cond_0

    .line 521
    const/4 v1, 0x0

    .line 536
    :goto_0
    return-object v1

    .line 523
    :cond_0
    if-gez p1, :cond_1

    .line 524
    const/4 p1, 0x0

    .line 526
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 527
    array-length p2, p0

    .line 529
    :cond_2
    sub-int v0, p2, p1

    .line 530
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 531
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 534
    :cond_3
    new-array v1, v0, [I

    .line 535
    .local v1, "subarray":[I
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 481
    if-nez p0, :cond_0

    .line 482
    const/4 v1, 0x0

    .line 497
    :goto_0
    return-object v1

    .line 484
    :cond_0
    if-gez p1, :cond_1

    .line 485
    const/4 p1, 0x0

    .line 487
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 488
    array-length p2, p0

    .line 490
    :cond_2
    sub-int v0, p2, p1

    .line 491
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 492
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 495
    :cond_3
    new-array v1, v0, [J

    .line 496
    .local v1, "subarray":[J
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v4, 0x0

    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v3, 0x0

    .line 458
    :goto_0
    return-object v3

    .line 445
    :cond_0
    if-gez p1, :cond_1

    .line 446
    const/4 p1, 0x0

    .line 448
    :cond_1
    array-length v3, p0

    if-le p2, v3, :cond_2

    .line 449
    array-length p2, p0

    .line 451
    :cond_2
    sub-int v0, p2, p1

    .line 452
    .local v0, "newSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 453
    .local v2, "type":Ljava/lang/Class;
    if-gtz v0, :cond_3

    .line 454
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_3
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 457
    .local v1, "subarray":[Ljava/lang/Object;
    invoke-static {p0, p1, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    .line 458
    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 559
    if-nez p0, :cond_0

    .line 560
    const/4 v1, 0x0

    .line 575
    :goto_0
    return-object v1

    .line 562
    :cond_0
    if-gez p1, :cond_1

    .line 563
    const/4 p1, 0x0

    .line 565
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 566
    array-length p2, p0

    .line 568
    :cond_2
    sub-int v0, p2, p1

    .line 569
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 570
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 573
    :cond_3
    new-array v1, v0, [S

    .line 574
    .local v1, "subarray":[S
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 754
    if-nez p0, :cond_0

    .line 755
    const/4 v1, 0x0

    .line 770
    :goto_0
    return-object v1

    .line 757
    :cond_0
    if-gez p1, :cond_1

    .line 758
    const/4 p1, 0x0

    .line 760
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 761
    array-length p2, p0

    .line 763
    :cond_2
    sub-int v0, p2, p1

    .line 764
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 765
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 768
    :cond_3
    new-array v1, v0, [Z

    .line 769
    .local v1, "subarray":[Z
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 237
    if-nez p0, :cond_1

    .line 238
    const/4 v2, 0x0

    .line 260
    :cond_0
    return-object v2

    .line 240
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    array-length v4, p0

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 241
    .local v2, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 242
    aget-object v3, p0, v1

    .line 243
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map$Entry;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 244
    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_2
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_4

    move-object v0, v3

    .line 247
    check-cast v0, [Ljava/lang/Object;

    .line 248
    .local v0, "entry":[Ljava/lang/Object;
    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 249
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Array element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ", \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\', has a length less than 2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 253
    :cond_3
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 255
    .end local v0    # "entry":[Ljava/lang/Object;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Array element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ", \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    .line 2803
    if-nez p0, :cond_1

    .line 2804
    const/4 v1, 0x0

    .line 2812
    :cond_0
    :goto_0
    return-object v1

    .line 2805
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2806
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    .line 2808
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    .line 2809
    .local v1, "result":[Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2810
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v2, v1, v0

    .line 2809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2810
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 2599
    if-nez p0, :cond_1

    .line 2600
    const/4 v1, 0x0

    .line 2608
    :cond_0
    :goto_0
    return-object v1

    .line 2601
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2602
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    .line 2604
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Byte;

    .line 2605
    .local v1, "result":[Ljava/lang/Byte;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2606
    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v1, v0

    .line 2605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 4
    .param p0, "array"    # [C

    .prologue
    .line 2327
    if-nez p0, :cond_1

    .line 2328
    const/4 v1, 0x0

    .line 2336
    :cond_0
    :goto_0
    return-object v1

    .line 2329
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2330
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    .line 2332
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Character;

    .line 2333
    .local v1, "result":[Ljava/lang/Character;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2334
    new-instance v2, Ljava/lang/Character;

    aget-char v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 2333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 2667
    if-nez p0, :cond_1

    .line 2668
    const/4 v1, 0x0

    .line 2676
    :cond_0
    :goto_0
    return-object v1

    .line 2669
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2670
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    .line 2672
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    .line 2673
    .local v1, "result":[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2674
    new-instance v2, Ljava/lang/Double;

    aget-wide v4, p0, v0

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v1, v0

    .line 2673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 2735
    if-nez p0, :cond_1

    .line 2736
    const/4 v1, 0x0

    .line 2744
    :cond_0
    :goto_0
    return-object v1

    .line 2737
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2738
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    .line 2740
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Float;

    .line 2741
    .local v1, "result":[Ljava/lang/Float;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2742
    new-instance v2, Ljava/lang/Float;

    aget v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    aput-object v2, v1, v0

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 2463
    if-nez p0, :cond_1

    .line 2464
    const/4 v1, 0x0

    .line 2472
    :cond_0
    :goto_0
    return-object v1

    .line 2465
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2466
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    .line 2468
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    .line 2469
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2470
    new-instance v2, Ljava/lang/Integer;

    aget v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 2469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 2395
    if-nez p0, :cond_1

    .line 2396
    const/4 v1, 0x0

    .line 2404
    :cond_0
    :goto_0
    return-object v1

    .line 2397
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2398
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    .line 2400
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 2401
    .local v1, "result":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2402
    new-instance v2, Ljava/lang/Long;

    aget-wide v4, p0, v0

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v1, v0

    .line 2401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 2531
    if-nez p0, :cond_1

    .line 2532
    const/4 v1, 0x0

    .line 2540
    :cond_0
    :goto_0
    return-object v1

    .line 2533
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2534
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    .line 2536
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Short;

    .line 2537
    .local v1, "result":[Ljava/lang/Short;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2538
    new-instance v2, Ljava/lang/Short;

    aget-short v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v1, v0

    .line 2537
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    .line 2555
    if-nez p0, :cond_1

    .line 2556
    const/4 v1, 0x0

    .line 2564
    :cond_0
    :goto_0
    return-object v1

    .line 2557
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2558
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2560
    :cond_2
    array-length v2, p0

    new-array v1, v2, [B

    .line 2561
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2562
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 2561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .prologue
    .line 2577
    if-nez p0, :cond_1

    .line 2578
    const/4 v2, 0x0

    .line 2587
    :cond_0
    :goto_0
    return-object v2

    .line 2579
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2580
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2582
    :cond_2
    array-length v3, p0

    new-array v2, v3, [B

    .line 2583
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2584
    aget-object v0, p0, v1

    .line 2585
    .local v0, "b":Ljava/lang/Byte;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-byte v3, v2, v1

    .line 2583
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2585
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    .line 2283
    if-nez p0, :cond_1

    .line 2284
    const/4 v1, 0x0

    .line 2292
    :cond_0
    :goto_0
    return-object v1

    .line 2285
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2286
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2288
    :cond_2
    array-length v2, p0

    new-array v1, v2, [C

    .line 2289
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2290
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .prologue
    .line 2305
    if-nez p0, :cond_1

    .line 2306
    const/4 v2, 0x0

    .line 2315
    :cond_0
    :goto_0
    return-object v2

    .line 2307
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2308
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2310
    :cond_2
    array-length v3, p0

    new-array v2, v3, [C

    .line 2311
    .local v2, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2312
    aget-object v0, p0, v1

    .line 2313
    .local v0, "b":Ljava/lang/Character;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-char v3, v2, v1

    .line 2311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2313
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    .line 2623
    if-nez p0, :cond_1

    .line 2624
    const/4 v1, 0x0

    .line 2632
    :cond_0
    :goto_0
    return-object v1

    .line 2625
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2626
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 2628
    :cond_2
    array-length v2, p0

    new-array v1, v2, [D

    .line 2629
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2630
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2629
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 7
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .prologue
    .line 2645
    if-nez p0, :cond_1

    .line 2646
    const/4 v2, 0x0

    .line 2655
    :cond_0
    :goto_0
    return-object v2

    .line 2647
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2648
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 2650
    :cond_2
    array-length v3, p0

    new-array v2, v3, [D

    .line 2651
    .local v2, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2652
    aget-object v0, p0, v1

    .line 2653
    .local v0, "b":Ljava/lang/Double;
    if-nez v0, :cond_3

    move-wide v4, p1

    :goto_2
    aput-wide v4, v2, v1

    .line 2651
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2653
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    .line 2691
    if-nez p0, :cond_1

    .line 2692
    const/4 v1, 0x0

    .line 2700
    :cond_0
    :goto_0
    return-object v1

    .line 2693
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2694
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 2696
    :cond_2
    array-length v2, p0

    new-array v1, v2, [F

    .line 2697
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2698
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 2697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .prologue
    .line 2713
    if-nez p0, :cond_1

    .line 2714
    const/4 v2, 0x0

    .line 2723
    :cond_0
    :goto_0
    return-object v2

    .line 2715
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2716
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 2718
    :cond_2
    array-length v3, p0

    new-array v2, v3, [F

    .line 2719
    .local v2, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2720
    aget-object v0, p0, v1

    .line 2721
    .local v0, "b":Ljava/lang/Float;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    .line 2719
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2721
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    .line 2419
    if-nez p0, :cond_1

    .line 2420
    const/4 v1, 0x0

    .line 2428
    :cond_0
    :goto_0
    return-object v1

    .line 2421
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2422
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 2424
    :cond_2
    array-length v2, p0

    new-array v1, v2, [I

    .line 2425
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2426
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 2425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .prologue
    .line 2441
    if-nez p0, :cond_1

    .line 2442
    const/4 v2, 0x0

    .line 2451
    :cond_0
    :goto_0
    return-object v2

    .line 2443
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2444
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 2446
    :cond_2
    array-length v3, p0

    new-array v2, v3, [I

    .line 2447
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2448
    aget-object v0, p0, v1

    .line 2449
    .local v0, "b":Ljava/lang/Integer;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    .line 2447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2449
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    .line 2351
    if-nez p0, :cond_1

    .line 2352
    const/4 v1, 0x0

    .line 2360
    :cond_0
    :goto_0
    return-object v1

    .line 2353
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2354
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 2356
    :cond_2
    array-length v2, p0

    new-array v1, v2, [J

    .line 2357
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2358
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 7
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .prologue
    .line 2373
    if-nez p0, :cond_1

    .line 2374
    const/4 v2, 0x0

    .line 2383
    :cond_0
    :goto_0
    return-object v2

    .line 2375
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2376
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 2378
    :cond_2
    array-length v3, p0

    new-array v2, v3, [J

    .line 2379
    .local v2, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2380
    aget-object v0, p0, v1

    .line 2381
    .local v0, "b":Ljava/lang/Long;
    if-nez v0, :cond_3

    move-wide v4, p1

    :goto_2
    aput-wide v4, v2, v1

    .line 2379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2381
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    .line 2487
    if-nez p0, :cond_1

    .line 2488
    const/4 v1, 0x0

    .line 2496
    :cond_0
    :goto_0
    return-object v1

    .line 2489
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2490
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 2492
    :cond_2
    array-length v2, p0

    new-array v1, v2, [S

    .line 2493
    .local v1, "result":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2494
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 2493
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .prologue
    .line 2509
    if-nez p0, :cond_1

    .line 2510
    const/4 v2, 0x0

    .line 2519
    :cond_0
    :goto_0
    return-object v2

    .line 2511
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2512
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 2514
    :cond_2
    array-length v3, p0

    new-array v2, v3, [S

    .line 2515
    .local v2, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2516
    aget-object v0, p0, v1

    .line 2517
    .local v0, "b":Ljava/lang/Short;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-short v3, v2, v1

    .line 2515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2517
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 2759
    if-nez p0, :cond_1

    .line 2760
    const/4 v1, 0x0

    .line 2768
    :cond_0
    :goto_0
    return-object v1

    .line 2761
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2762
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 2764
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Z

    .line 2765
    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2766
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 2765
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .prologue
    .line 2781
    if-nez p0, :cond_1

    .line 2782
    const/4 v2, 0x0

    .line 2791
    :cond_0
    :goto_0
    return-object v2

    .line 2783
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2784
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 2786
    :cond_2
    array-length v3, p0

    new-array v2, v3, [Z

    .line 2787
    .local v2, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2788
    aget-object v0, p0, v1

    .line 2789
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-boolean v3, v2, v1

    .line 2787
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2789
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 161
    const-string/jumbo v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 180
    .end local p1    # "stringIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "stringIfNull":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
