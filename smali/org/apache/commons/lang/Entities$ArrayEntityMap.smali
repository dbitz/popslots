.class Lorg/apache/commons/lang/Entities$ArrayEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lorg/apache/commons/lang/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEntityMap"
.end annotation


# instance fields
.field protected growBy:I

.field protected names:[Ljava/lang/String;

.field protected size:I

.field protected values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    .line 579
    iget v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 580
    iget v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    .line 581
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "growBy"    # I

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    .line 591
    iput p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    .line 592
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 593
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    .line 594
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 600
    iget v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->ensureCapacity(I)V

    .line 601
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    aput-object p1, v0, v1

    .line 602
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    aput p2, v0, v1

    .line 603
    iget v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    .line 604
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 6
    .param p1, "capacity"    # I

    .prologue
    const/4 v5, 0x0

    .line 613
    iget-object v3, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    array-length v3, v3

    if-le p1, v3, :cond_0

    .line 614
    iget v3, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    iget v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 615
    .local v1, "newSize":I
    new-array v0, v1, [Ljava/lang/String;

    .line 616
    .local v0, "newNames":[Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 618
    new-array v2, v1, [I

    .line 619
    .local v2, "newValues":[I
    iget-object v3, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    iget v4, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iput-object v2, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    .line 622
    .end local v0    # "newNames":[Ljava/lang/String;
    .end local v1    # "newSize":I
    .end local v2    # "newValues":[I
    :cond_0
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 629
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 630
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 633
    :goto_1
    return-object v1

    .line 628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public value(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 640
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    .line 645
    :goto_1
    return v1

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
