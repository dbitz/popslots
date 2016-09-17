.class public Lsfs2x/client/entities/data/Vec3D;
.super Ljava/lang/Object;
.source "Vec3D.java"


# instance fields
.field private final px:Ljava/lang/Number;

.field private final py:Ljava/lang/Number;

.field private final pz:Ljava/lang/Number;

.field private final useFloat:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "fx"    # F
    .param p2, "fy"    # F

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/data/Vec3D;-><init>(FFF)V

    .line 110
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "fx"    # F
    .param p2, "fy"    # F
    .param p3, "fz"    # F

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->px:Ljava/lang/Number;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->py:Ljava/lang/Number;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->pz:Ljava/lang/Number;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/entities/data/Vec3D;->useFloat:Z

    .line 94
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "ix"    # I
    .param p2, "iy"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/data/Vec3D;-><init>(III)V

    .line 102
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "ix"    # I
    .param p2, "iy"    # I
    .param p3, "iz"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->px:Ljava/lang/Number;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->py:Ljava/lang/Number;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->pz:Ljava/lang/Number;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/entities/data/Vec3D;->useFloat:Z

    .line 85
    return-void
.end method

.method public static fromArray(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Lsfs2x/client/entities/data/Vec3D;
    .locals 7
    .param p0, "element"    # Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v2

    .line 36
    .local v2, "typeId":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v2, v3, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .line 41
    .local v1, "tempArr":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface {v1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v0

    .line 43
    .local v0, "itemType":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v0, v3, :cond_0

    .line 44
    new-instance v3, Lsfs2x/client/entities/data/Vec3D;

    invoke-interface {v1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lsfs2x/client/entities/data/Vec3D;-><init>(III)V

    .line 55
    .end local v0    # "itemType":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .end local v1    # "tempArr":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :goto_0
    return-object v3

    .line 47
    .restart local v0    # "itemType":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .restart local v1    # "tempArr":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_0
    new-instance v3, Lsfs2x/client/entities/data/Vec3D;

    invoke-interface {v1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getFloat(I)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v1, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getFloat(I)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getFloat(I)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lsfs2x/client/entities/data/Vec3D;-><init>(FFF)V

    goto :goto_0

    .line 51
    .end local v0    # "itemType":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .end local v1    # "tempArr":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_1
    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v2, v3, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lsfs2x/client/entities/data/Vec3D;->fromIntArray(Ljava/util/List;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v3

    goto :goto_0

    .line 54
    :cond_2
    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v2, v3, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lsfs2x/client/entities/data/Vec3D;->fromFloatArray(Ljava/util/List;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v3

    goto :goto_0

    .line 57
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Array Type, cannot convert to Vec3D!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static fromFloatArray(Ljava/util/List;)Lsfs2x/client/entities/data/Vec3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lsfs2x/client/entities/data/Vec3D;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong array size. Vec3D requires an array with 3 parameters (x,y,z)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    new-instance v1, Lsfs2x/client/entities/data/Vec3D;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lsfs2x/client/entities/data/Vec3D;-><init>(FFF)V

    return-object v1
.end method

.method protected static fromIntArray(Ljava/util/List;)Lsfs2x/client/entities/data/Vec3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lsfs2x/client/entities/data/Vec3D;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong array size. Vec3D requires an array with 3 parameters (x,y,z)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    new-instance v1, Lsfs2x/client/entities/data/Vec3D;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lsfs2x/client/entities/data/Vec3D;-><init>(III)V

    return-object v1
.end method


# virtual methods
.method public floatX()F
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->px:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public floatY()F
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->py:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public floatZ()F
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->pz:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public intX()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->px:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public intY()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->py:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public intZ()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lsfs2x/client/entities/data/Vec3D;->pz:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public isFloat()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lsfs2x/client/entities/data/Vec3D;->useFloat:Z

    return v0
.end method

.method public toFloatArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsfs2x/client/entities/data/Vec3D;->floatX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lsfs2x/client/entities/data/Vec3D;->floatY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lsfs2x/client/entities/data/Vec3D;->floatZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toIntArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsfs2x/client/entities/data/Vec3D;->intX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lsfs2x/client/entities/data/Vec3D;->intY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lsfs2x/client/entities/data/Vec3D;->intZ()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const-string/jumbo v0, "(%s, %s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lsfs2x/client/entities/data/Vec3D;->px:Ljava/lang/Number;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lsfs2x/client/entities/data/Vec3D;->py:Ljava/lang/Number;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lsfs2x/client/entities/data/Vec3D;->pz:Ljava/lang/Number;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
