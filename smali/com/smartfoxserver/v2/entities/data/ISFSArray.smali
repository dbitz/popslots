.class public interface abstract Lcom/smartfoxserver/v2/entities/data/ISFSArray;
.super Ljava/lang/Object;
.source "ISFSArray.java"


# virtual methods
.method public abstract add(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V
.end method

.method public abstract addBool(Z)V
.end method

.method public abstract addBoolArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addByte(B)V
.end method

.method public abstract addByteArray([B)V
.end method

.method public abstract addClass(Ljava/lang/Object;)V
.end method

.method public abstract addDouble(D)V
.end method

.method public abstract addDoubleArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addFloat(F)V
.end method

.method public abstract addFloatArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addInt(I)V
.end method

.method public abstract addIntArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addLong(J)V
.end method

.method public abstract addLongArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addNull()V
.end method

.method public abstract addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
.end method

.method public abstract addSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
.end method

.method public abstract addShort(S)V
.end method

.method public abstract addShortArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addUtfString(Ljava/lang/String;)V
.end method

.method public abstract addUtfStringArray(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
.end method

.method public abstract getBool(I)Ljava/lang/Boolean;
.end method

.method public abstract getBoolArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByte(I)Ljava/lang/Byte;
.end method

.method public abstract getByteArray(I)[B
.end method

.method public abstract getClass(I)Ljava/lang/Object;
.end method

.method public abstract getDouble(I)Ljava/lang/Double;
.end method

.method public abstract getDoubleArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

.method public abstract getElementAt(I)Ljava/lang/Object;
.end method

.method public abstract getFloat(I)Ljava/lang/Float;
.end method

.method public abstract getFloatArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHexDump()Ljava/lang/String;
.end method

.method public abstract getInt(I)Ljava/lang/Integer;
.end method

.method public abstract getIntArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLong(I)Ljava/lang/Long;
.end method

.method public abstract getLongArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
.end method

.method public abstract getSFSObject(I)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
.end method

.method public abstract getShort(I)Ljava/lang/Short;
.end method

.method public abstract getShortArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnsignedByte(I)Ljava/lang/Integer;
.end method

.method public abstract getUnsignedByteArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUtfString(I)Ljava/lang/String;
.end method

.method public abstract getUtfStringArray(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isNull(I)Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeElementAt(I)V
.end method

.method public abstract size()I
.end method

.method public abstract toBinary()[B
.end method

.method public abstract toJson()Ljava/lang/String;
.end method
