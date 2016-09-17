.class public interface abstract Lcom/smartfoxserver/v2/entities/data/ISFSObject;
.super Ljava/lang/Object;
.source "ISFSObject.java"


# virtual methods
.method public abstract containsKey(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
.end method

.method public abstract getBool(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getBoolArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getByte(Ljava/lang/String;)Ljava/lang/Byte;
.end method

.method public abstract getByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getClass(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getDouble(Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract getDoubleArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getDump()Ljava/lang/String;
.end method

.method public abstract getDump(Z)Ljava/lang/String;
.end method

.method public abstract getFloat(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract getFloatArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getHexDump()Ljava/lang/String;
.end method

.method public abstract getInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getIntArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getLongArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
.end method

.method public abstract getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
.end method

.method public abstract getShort(Ljava/lang/String;)Ljava/lang/Short;
.end method

.method public abstract getShortArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getUnsignedByte(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getUnsignedByteArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract getUtfString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;
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
.end method

.method public abstract isNull(Ljava/lang/String;)Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
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
.end method

.method public abstract put(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V
.end method

.method public abstract putBool(Ljava/lang/String;Z)V
.end method

.method public abstract putBoolArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract putByte(Ljava/lang/String;B)V
.end method

.method public abstract putByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract putClass(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract putDouble(Ljava/lang/String;D)V
.end method

.method public abstract putDoubleArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract putFloat(Ljava/lang/String;F)V
.end method

.method public abstract putFloatArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putIntArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract putLongArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract putNull(Ljava/lang/String;)V
.end method

.method public abstract putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
.end method

.method public abstract putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
.end method

.method public abstract putShort(Ljava/lang/String;S)V
.end method

.method public abstract putShortArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract putUtfString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putUtfStringArray(Ljava/lang/String;Ljava/util/Collection;)V
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
.end method

.method public abstract removeElement(Ljava/lang/String;)Z
.end method

.method public abstract size()I
.end method

.method public abstract toBinary()[B
.end method

.method public abstract toJson()Ljava/lang/String;
.end method
