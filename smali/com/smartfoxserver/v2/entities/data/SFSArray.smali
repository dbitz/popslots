.class public Lcom/smartfoxserver/v2/entities/data/SFSArray;
.super Ljava/lang/Object;
.source "SFSArray.java"

# interfaces
.implements Lcom/smartfoxserver/v2/entities/data/ISFSArray;


# instance fields
.field private dataHolder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private serializer:Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    .line 84
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->serializer:Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;

    .line 85
    return-void
.end method

.method private addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "typeId"    # Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    invoke-direct {v1, p2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method private dump()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "objDump":Ljava/lang/Object;
    iget-object v4, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v1    # "objDump":Ljava/lang/Object;
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 183
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 185
    .local v3, "wrappedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v4

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v4, v5, :cond_2

    .line 186
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getDump(Z)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_1
    const-string/jumbo v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v4

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v4, v5, :cond_3

    .line 189
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getDump(Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "objDump":Ljava/lang/String;
    goto :goto_1

    .line 191
    .end local v1    # "objDump":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v4

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v4, v5, :cond_4

    .line 192
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->prettyPrintByteArray([B)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "objDump":Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v1    # "objDump":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v4

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v4, v5, :cond_5

    .line 195
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "objDump":Ljava/lang/String;
    goto :goto_1

    .line 198
    .end local v1    # "objDump":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    .local v1, "objDump":Ljava/lang/Object;
    goto :goto_1
.end method

.method private flatten()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->flattenArray(Ljava/util/List;Lcom/smartfoxserver/v2/entities/data/SFSArray;)V

    .line 583
    return-object v0
.end method

.method public static newFromBinaryData([B)Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 103
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binary2array([B)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    return-object v0
.end method

.method public static newFromJsonData(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->json2array(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    return-object v0
.end method

.method public static newFromResultSet(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .locals 1
    .param p0, "rset"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->resultSet2array(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V
    .locals 1
    .param p1, "wrappedObject"    # Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method public addBool(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 405
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 406
    return-void
.end method

.method public addBoolArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 411
    return-void
.end method

.method public addByte(B)V
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 415
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 416
    return-void
.end method

.method public addByteArray([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 420
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 421
    return-void
.end method

.method public addClass(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 501
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 502
    return-void
.end method

.method public addDouble(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 425
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 426
    return-void
.end method

.method public addDoubleArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 431
    return-void
.end method

.method public addFloat(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 435
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 436
    return-void
.end method

.method public addFloatArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Float;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 441
    return-void
.end method

.method public addInt(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 446
    return-void
.end method

.method public addIntArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 451
    return-void
.end method

.method public addLong(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 455
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 456
    return-void
.end method

.method public addLongArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 461
    return-void
.end method

.method public addNull()V
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 466
    return-void
.end method

.method public addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
    .locals 1
    .param p1, "value"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 470
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 471
    return-void
.end method

.method public addSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "value"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 475
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 476
    return-void
.end method

.method public addShort(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 480
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 481
    return-void
.end method

.method public addShortArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Short;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 486
    return-void
.end method

.method public addUtfString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 490
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 491
    return-void
.end method

.method public addUtfStringArray(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addObject(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 496
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 514
    instance-of v3, p1, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v3, :cond_1

    .line 515
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "ISFSArray and ISFSObject are not supported by this method."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 517
    :cond_1
    const/4 v0, 0x0

    .line 519
    .local v0, "found":Z
    iget-object v3, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 530
    :goto_0
    return v0

    .line 521
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 523
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    const/4 v0, 0x1

    .line 526
    goto :goto_0
.end method

.method public get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    return-object v0
.end method

.method public getBool(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 254
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 255
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoolArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 311
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByte(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 261
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 317
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClass(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 394
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 299
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDoubleArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 369
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "[ Empty SFSArray ]"

    .line 164
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->prettyPrintDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDump(Z)Ljava/lang/String;
    .locals 1
    .param p1, "noFormat"    # Z

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dump()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->getDump()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementAt(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "item":Ljava/lang/Object;
    iget-object v2, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 540
    .local v1, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v1, :cond_0

    .line 541
    :cond_0
    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 543
    return-object v0
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 292
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 293
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 363
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->toBinary()[B

    move-result-object v0

    invoke-static {v0}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 281
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 351
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 286
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 287
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 357
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 381
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSFSObject(I)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 386
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 387
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 275
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShortArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 345
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnsignedByte(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 268
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getUnsignedByte(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnsignedByteArray(I)Ljava/util/Collection;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v4, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 325
    .local v3, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v3, :cond_1

    .line 326
    const/4 v1, 0x0

    .line 337
    :cond_0
    return-object v1

    .line 329
    :cond_1
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v2

    .line 330
    .local v2, "serializer":Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v1, "intCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, v4, v5

    .line 334
    .local v0, "b":B
    invoke-virtual {v2, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getUnsignedByte(B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getUtfString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 304
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 305
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUtfStringArray(I)Ljava/util/Collection;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 375
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 240
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v2

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeElementAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 554
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->dataHolder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toBinary()[B
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSArray;->serializer:Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;

    invoke-interface {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;->array2binary(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)[B

    move-result-object v0

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-direct {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->flatten()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->array2json(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[SFSArray, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
