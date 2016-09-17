.class public interface abstract Lsfs2x/client/entities/managers/IRoomManager;
.super Ljava/lang/Object;
.source "IRoomManager.java"


# virtual methods
.method public abstract addGroup(Ljava/lang/String;)V
.end method

.method public abstract addRoom(Lsfs2x/client/entities/Room;)V
.end method

.method public abstract addRoom(Lsfs2x/client/entities/Room;Z)V
.end method

.method public abstract changeRoomCapacity(Lsfs2x/client/entities/Room;II)V
.end method

.method public abstract changeRoomName(Lsfs2x/client/entities/Room;Ljava/lang/String;)V
.end method

.method public abstract changeRoomPasswordState(Lsfs2x/client/entities/Room;Z)V
.end method

.method public abstract containsGroup(Ljava/lang/String;)Z
.end method

.method public abstract containsRoom(I)Z
.end method

.method public abstract containsRoom(Ljava/lang/String;)Z
.end method

.method public abstract containsRoomInGroup(ILjava/lang/String;)Z
.end method

.method public abstract containsRoomInGroup(Ljava/lang/String;Ljava/lang/String;)Z
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

.method public abstract getOwnerZone()Ljava/lang/String;
.end method

.method public abstract getRoomById(I)Lsfs2x/client/entities/Room;
.end method

.method public abstract getRoomByName(Ljava/lang/String;)Lsfs2x/client/entities/Room;
.end method

.method public abstract getRoomCount()I
.end method

.method public abstract getRoomGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoomList()Ljava/util/List;
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

.method public abstract getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmartFox()Lsfs2x/client/ISmartFox;
.end method

.method public abstract getUserRooms(Lsfs2x/client/entities/User;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/entities/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeGroup(Ljava/lang/String;)V
.end method

.method public abstract removeRoom(Lsfs2x/client/entities/Room;)V
.end method

.method public abstract removeRoomById(I)V
.end method

.method public abstract removeRoomByName(Ljava/lang/String;)V
.end method

.method public abstract removeUser(Lsfs2x/client/entities/User;)V
.end method

.method public abstract replaceRoom(Lsfs2x/client/entities/Room;)Lsfs2x/client/entities/Room;
.end method

.method public abstract replaceRoom(Lsfs2x/client/entities/Room;Z)Lsfs2x/client/entities/Room;
.end method
