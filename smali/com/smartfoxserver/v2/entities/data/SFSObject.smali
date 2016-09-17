.class public Lcom/smartfoxserver/v2/entities/data/SFSObject;
.super Ljava/lang/Object;
.source "SFSObject.java"

# interfaces
.implements Lcom/smartfoxserver/v2/entities/data/ISFSObject;


# instance fields
.field private dataHolder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    .line 208
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->serializer:Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;

    .line 209
    return-void
.end method

.method private dump()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 261
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v2

    .line 264
    .local v2, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 266
    const-string/jumbo v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 267
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v3

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v3, v5, :cond_1

    .line 271
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-virtual {v3, v6}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->getDump(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v3

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v3, v5, :cond_2

    .line 274
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-virtual {v3, v6}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->getDump(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v3

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v3, v5, :cond_3

    .line 277
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->prettyPrintByteArray([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v3

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v3, v5, :cond_4

    .line 280
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :cond_4
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private flatten()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->flattenObject(Ljava/util/Map;Lcom/smartfoxserver/v2/entities/data/SFSObject;)V

    .line 692
    return-object v0
.end method

.method public static newFromBinaryData([B)Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 149
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binary2object([B)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    return-object v0
.end method

.method public static newFromJsonData(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->json2object(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    return-object v0
.end method

.method public static newFromObject(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->pojo2sfs(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    return-object v0
.end method

.method public static newFromResultSet(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .locals 1
    .param p0, "rset"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->resultSet2object(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    return-object v0
.end method

.method private putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "typeId"    # Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SFSObject requires a non-null key for a \'put\' operation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SFSObject keys must be less than 255 characters!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1
    if-nez p2, :cond_2

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SFSObject requires a non-null value! If you need to add a null use the putNull() method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_2
    instance-of v0, p2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    check-cast p2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :goto_0
    return-void

    .line 684
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    invoke-direct {v1, p3, p2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    return-object v0
.end method

.method public getBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 325
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 328
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getBoolArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 335
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 345
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 346
    const/4 v1, 0x0

    .line 348
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 355
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 358
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 543
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 544
    const/4 v1, 0x0

    .line 546
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 365
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 368
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 375
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 378
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->prettyPrintDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDump(Z)Ljava/lang/String;
    .locals 1
    .param p1, "noFormat"    # Z

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dump()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->getDump()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 385
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 386
    const/4 v1, 0x0

    .line 388
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    goto :goto_0
.end method

.method public getFloatArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 395
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 396
    const/4 v1, 0x0

    .line 398
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->toBinary()[B

    move-result-object v0

    invoke-static {v0}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 405
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 415
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 416
    const/4 v1, 0x0

    .line 418
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 430
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 433
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 440
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 441
    const/4 v1, 0x0

    .line 443
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 450
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 451
    const/4 v1, 0x0

    .line 453
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    goto :goto_0
.end method

.method public getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 460
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 461
    const/4 v1, 0x0

    .line 463
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 470
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 473
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    goto :goto_0
.end method

.method public getShortArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 480
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 481
    const/4 v1, 0x0

    .line 483
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getUnsignedByte(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 490
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 491
    const/4 v1, 0x0

    .line 493
    :goto_0
    return-object v1

    :cond_0
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

    goto :goto_0
.end method

.method public getUnsignedByteArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v4, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 500
    .local v2, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v2, :cond_1

    .line 501
    const/4 v1, 0x0

    .line 514
    :cond_0
    return-object v1

    .line 506
    :cond_1
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    move-result-object v3

    .line 507
    .local v3, "serializer":Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v1, "intCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, v4, v5

    .line 511
    .local v0, "b":B
    invoke-virtual {v3, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getUnsignedByte(B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getUtfString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 522
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 523
    const/4 v1, 0x0

    .line 525
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v1, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 532
    .local v0, "o":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_0

    .line 533
    const/4 v1, 0x0

    .line 535
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v2, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 305
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-nez v0, :cond_1

    .line 308
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
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "wrappedObject"    # Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 651
    return-void
.end method

.method public putBool(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 555
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 556
    return-void
.end method

.method public putBoolArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 561
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 565
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 566
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 570
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 571
    return-void
.end method

.method public putClass(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 656
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 657
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 575
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 576
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 581
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 585
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 586
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Float;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 591
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 595
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 596
    return-void
.end method

.method public putIntArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 601
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 605
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 606
    return-void
.end method

.method public putLongArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 611
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method public putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 620
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 621
    return-void
.end method

.method public putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 625
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 626
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 630
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 631
    return-void
.end method

.method public putShortArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Short;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 636
    return-void
.end method

.method public putUtfString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 640
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 641
    return-void
.end method

.method public putUtfStringArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putObj(Ljava/lang/String;Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/SFSDataType;)V

    .line 646
    return-void
.end method

.method public removeElement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->dataHolder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toBinary()[B
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->serializer:Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;

    invoke-interface {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;->object2binary(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)[B

    move-result-object v0

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSObject;->serializer:Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;

    invoke-direct {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->flatten()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;->object2json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[SFSObject, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->size()I

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
