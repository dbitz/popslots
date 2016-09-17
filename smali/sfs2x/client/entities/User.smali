.class public interface abstract Lsfs2x/client/entities/User;
.super Ljava/lang/Object;
.source "User.java"


# virtual methods
.method public abstract containsVariable(Ljava/lang/String;)Z
.end method

.method public abstract getAOIEntryPoint()Lsfs2x/client/entities/data/Vec3D;
.end method

.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlayerId()I
.end method

.method public abstract getPlayerId(Lsfs2x/client/entities/Room;)I
.end method

.method public abstract getPrivilegeId()I
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserManager()Lsfs2x/client/entities/managers/IUserManager;
.end method

.method public abstract getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/UserVariable;
.end method

.method public abstract getVariables()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/UserVariable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAdmin()Z
.end method

.method public abstract isGuest()Z
.end method

.method public abstract isItMe()Z
.end method

.method public abstract isJoinedInRoom(Lsfs2x/client/entities/Room;)Z
.end method

.method public abstract isModerator()Z
.end method

.method public abstract isPlayer()Z
.end method

.method public abstract isPlayerInRoom(Lsfs2x/client/entities/Room;)Z
.end method

.method public abstract isSpectator()Z
.end method

.method public abstract isSpectatorInRoom(Lsfs2x/client/entities/Room;)Z
.end method

.method public abstract isStandardUser()Z
.end method

.method public abstract removePlayerId(Lsfs2x/client/entities/Room;)V
.end method

.method public abstract setAOIEntryPoint(Lsfs2x/client/entities/data/Vec3D;)V
.end method

.method public abstract setPlayerId(ILsfs2x/client/entities/Room;)V
.end method

.method public abstract setPrivilegeId(I)V
.end method

.method public abstract setProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserManager(Lsfs2x/client/entities/managers/IUserManager;)V
.end method

.method public abstract setVariable(Lsfs2x/client/entities/variables/UserVariable;)V
.end method

.method public abstract setVariables(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lsfs2x/client/entities/variables/UserVariable;",
            ">;)V"
        }
    .end annotation
.end method
