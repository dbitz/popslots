.class public interface abstract Lsfs2x/client/net/ISocketConnection;
.super Ljava/lang/Object;
.source "ISocketConnection.java"


# virtual methods
.method public abstract connect(Ljava/lang/String;I)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getEventHandler()Lsfs2x/client/net/IConnectionEventHandler;
.end method

.method public abstract getId()I
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setEventHandler(Lsfs2x/client/net/IConnectionEventHandler;)V
.end method

.method public abstract write(Ljava/lang/Object;)V
.end method
