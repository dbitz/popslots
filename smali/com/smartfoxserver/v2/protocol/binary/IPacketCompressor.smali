.class public interface abstract Lcom/smartfoxserver/v2/protocol/binary/IPacketCompressor;
.super Ljava/lang/Object;
.source "IPacketCompressor.java"


# virtual methods
.method public abstract compress([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract uncompress([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
