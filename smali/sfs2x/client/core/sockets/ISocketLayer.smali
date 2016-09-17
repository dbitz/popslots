.class public interface abstract Lsfs2x/client/core/sockets/ISocketLayer;
.super Ljava/lang/Object;
.source "ISocketLayer.java"

# interfaces
.implements Lsfs2x/client/core/IDispatchable;


# virtual methods
.method public abstract connect(Ljava/lang/String;I)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract kill()V
.end method

.method public abstract requiresConnection()Z
.end method

.method public abstract write([B)V
.end method
