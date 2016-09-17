.class public Lorg/apache/commons/lang/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput p1, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 67
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "operand"    # I

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 133
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 147
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 258
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/mutable/MutableInt;

    .line 259
    .local v1, "other":Lorg/apache/commons/lang/mutable/MutableInt;
    iget v0, v1, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 260
    .local v0, "anotherVal":I
    iget v2, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    if-ge v2, v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    if-ne v2, v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 120
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 234
    instance-of v1, p1, Lorg/apache/commons/lang/mutable/MutableInt;

    if-eqz v1, :cond_0

    .line 235
    iget v1, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    check-cast p1, Lorg/apache/commons/lang/mutable/MutableInt;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/lang/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 237
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 111
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 86
    iput p1, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 87
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableInt;->setValue(I)V

    .line 101
    return-void
.end method

.method public subtract(I)V
    .locals 1
    .param p1, "operand"    # I

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 159
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 172
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    .line 173
    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableInt;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
