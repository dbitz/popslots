.class public interface abstract Lsfs2x/client/bitswarm/IOHandler;
.super Ljava/lang/Object;
.source "IOHandler.java"


# virtual methods
.method public abstract getCodec()Lsfs2x/client/bitswarm/IProtocolCodec;
.end method

.method public abstract onDataRead(Lsfs2x/client/util/ByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract onDataWrite(Lsfs2x/client/bitswarm/IMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method
