.class Lorg/apache/commons/lang/Entities$LookupEntityMap;
.super Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# instance fields
.field private LOOKUP_TABLE_SIZE:I

.field private lookupTable:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;-><init>()V

    .line 527
    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    return-void
.end method

.method private createLookupTable()V
    .locals 3

    .prologue
    .line 559
    iget v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method private lookupTable()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;->createLookupTable()V

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 533
    iget v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge p1, v0, :cond_0

    .line 534
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 536
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
