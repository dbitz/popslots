.class public interface abstract Lsfs2x/client/ISmartFox;
.super Ljava/lang/Object;
.source "ISmartFox.java"


# virtual methods
.method public abstract dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
.end method

.method public abstract getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;
.end method

.method public abstract getConfig()Lsfs2x/client/util/ConfigData;
.end method

.method public abstract getDispatcher()Lsfs2x/client/core/EventDispatcher;
.end method

.method public abstract getJoinedRooms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLagMonitor()Lsfs2x/client/util/LagMonitor;
.end method

.method public abstract getLastJoinedRoom()Lsfs2x/client/entities/Room;
.end method

.method public abstract getLogger()Lorg/slf4j/Logger;
.end method

.method public abstract getMySelf()Lsfs2x/client/entities/User;
.end method

.method public abstract getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;
.end method

.method public abstract getSessionToken()Ljava/lang/String;
.end method

.method public abstract getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;
.end method

.method public abstract getUserManager()Lsfs2x/client/entities/managers/IUserManager;
.end method

.method public abstract handleClientDisconnection(Ljava/lang/String;)V
.end method

.method public abstract handleHandShake(Lsfs2x/client/core/BaseEvent;)V
.end method

.method public abstract handleLogin(Lsfs2x/client/core/BaseEvent;)V
.end method

.method public abstract handleLogout()V
.end method

.method public abstract initCrypto()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isDebug()Z
.end method

.method public abstract setClientDetails(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setJoining(Z)V
.end method

.method public abstract setLastJoinedRoom(Lsfs2x/client/entities/Room;)V
.end method

.method public abstract setMySelf(Lsfs2x/client/entities/User;)V
.end method

.method public abstract setReconnectionSeconds(I)V
.end method
