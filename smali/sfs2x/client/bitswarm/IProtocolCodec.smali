.class public interface abstract Lsfs2x/client/bitswarm/IProtocolCodec;
.super Ljava/lang/Object;
.source "IProtocolCodec.java"


# virtual methods
.method public abstract getIOHandler()Lsfs2x/client/bitswarm/IOHandler;
.end method

.method public abstract onPacketRead(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract onPacketRead(Lsfs2x/client/util/ByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract onPacketWrite(Lsfs2x/client/bitswarm/IMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract setIOHandler(Lsfs2x/client/bitswarm/IOHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method
