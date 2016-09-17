.class public interface abstract Lsfs2x/client/requests/IRequest;
.super Ljava/lang/Object;
.source "IRequest.java"


# virtual methods
.method public abstract execute(Lsfs2x/client/ISmartFox;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract getMessage()Lsfs2x/client/bitswarm/IMessage;
.end method

.method public abstract getTargetController()I
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract setEncrypted(Z)V
.end method

.method public abstract setTargetController(I)V
.end method

.method public abstract validate(Lsfs2x/client/ISmartFox;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation
.end method
