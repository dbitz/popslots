.class public interface abstract Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;
.super Ljava/lang/Object;
.source "ISFSDataSerializer.java"


# virtual methods
.method public abstract array2binary(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)[B
.end method

.method public abstract array2json(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract binary2array([B)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
.end method

.method public abstract binary2object([B)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
.end method

.method public abstract json2array(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
.end method

.method public abstract json2object(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
.end method

.method public abstract object2binary(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)[B
.end method

.method public abstract object2json(Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract pojo2sfs(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
.end method

.method public abstract resultSet2array(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract resultSet2object(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract sfs2pojo(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)Ljava/lang/Object;
.end method
