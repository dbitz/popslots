.class public Lorg/apache/commons/lang/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 69
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "operand"    # F

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 135
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 149
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 299
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/mutable/MutableFloat;

    .line 300
    .local v1, "other":Lorg/apache/commons/lang/mutable/MutableFloat;
    iget v0, v1, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 301
    .local v0, "anotherVal":F
    iget v2, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v2, v0}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v2

    return v2
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 122
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 277
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableFloat;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/lang/mutable/MutableFloat;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 113
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 88
    iput p1, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 89
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableFloat;->setValue(F)V

    .line 103
    return-void
.end method

.method public subtract(F)V
    .locals 1
    .param p1, "operand"    # F

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 161
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    .line 175
    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableFloat;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lorg/apache/commons/lang/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
