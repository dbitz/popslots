.class public interface abstract Lsfs2x/client/bitswarm/IUDPManager;
.super Ljava/lang/Object;
.source "IUDPManager.java"


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getNextUdpPacketId()J
.end method

.method public abstract initialize(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract isInited()Z
.end method

.method public abstract reset()V
.end method

.method public abstract send(Lsfs2x/client/util/ByteArray;)V
.end method

.method public abstract setSfs(Lsfs2x/client/SmartFox;)V
.end method
