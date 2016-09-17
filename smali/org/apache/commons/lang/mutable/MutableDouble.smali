.class public Lorg/apache/commons/lang/mutable/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 69
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 3
    .param p1, "operand"    # D

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 201
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 215
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 298
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/mutable/MutableDouble;

    .line 299
    .local v2, "other":Lorg/apache/commons/lang/mutable/MutableDouble;
    iget-wide v0, v2, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 300
    .local v0, "anotherVal":D
    iget-wide v4, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v3

    return v3
.end method

.method public decrement()V
    .locals 4

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 188
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 275
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableDouble;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/lang/mutable/MutableDouble;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v0, p1, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 285
    iget-wide v2, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 286
    .local v0, "bits":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public increment()V
    .locals 4

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 179
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 88
    iput-wide p1, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 89
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/mutable/MutableDouble;->setValue(D)V

    .line 103
    return-void
.end method

.method public subtract(D)V
    .locals 3
    .param p1, "operand"    # D

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 227
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 240
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    .line 241
    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableDouble;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
