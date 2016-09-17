.class public interface abstract Lsfs2x/client/entities/Room;
.super Ljava/lang/Object;
.source "Room.java"


# virtual methods
.method public abstract addUser(Lsfs2x/client/entities/User;)V
.end method

.method public abstract containsUser(Lsfs2x/client/entities/User;)Z
.end method

.method public abstract containsVariable(Ljava/lang/String;)Z
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getGroupId()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public abstract getMaxSpectators()I
.end method

.method public abstract getMaxUsers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlayerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end method

.method public abstract getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;
.end method

.method public abstract getSpectatorCount()I
.end method

.method public abstract getSpectatorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserById(I)Lsfs2x/client/entities/User;
.end method

.method public abstract getUserByName(Ljava/lang/String;)Lsfs2x/client/entities/User;
.end method

.method public abstract getUserCount()I
.end method

.method public abstract getUserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/RoomVariable;
.end method

.method public abstract getVariables()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isGame()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isJoined()Z
.end method

.method public abstract isManaged()Z
.end method

.method public abstract isPasswordProtected()Z
.end method

.method public abstract merge(Lsfs2x/client/entities/Room;)V
.end method

.method public abstract removeUser(Lsfs2x/client/entities/User;)V
.end method

.method public abstract setGame(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setJoined(Z)V
.end method

.method public abstract setManaged(Z)V
.end method

.method public abstract setMaxSpectators(I)V
.end method

.method public abstract setMaxUsers(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPasswordProtected(Z)V
.end method

.method public abstract setProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract setRoomManager(Lsfs2x/client/entities/managers/IRoomManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract setSpectatorCount(I)V
.end method

.method public abstract setUserCount(I)V
.end method

.method public abstract setVariable(Lsfs2x/client/entities/variables/RoomVariable;)V
.end method

.method public abstract setVariables(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;)V"
        }
    .end annotation
.end method
