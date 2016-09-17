.class public Lsfs2x/client/entities/managers/SFSRoomManager;
.super Ljava/lang/Object;
.source "SFSRoomManager.java"

# interfaces
.implements Lsfs2x/client/entities/managers/IRoomManager;


# instance fields
.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ownerZone:Ljava/lang/String;

.field private roomsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation
.end field

.field private roomsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation
.end field

.field protected smartFox:Lsfs2x/client/ISmartFox;


# direct methods
.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 1
    .param p1, "smartFox"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->smartFox:Lsfs2x/client/ISmartFox;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->groups:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private removeRoom(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public addRoom(Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/entities/managers/SFSRoomManager;->addRoom(Lsfs2x/client/entities/Room;Z)V

    .line 57
    return-void
.end method

.method public addRoom(Lsfs2x/client/entities/Room;Z)V
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "addGroupIfMissing"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-eqz p2, :cond_1

    .line 68
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSRoomManager;->containsGroup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSRoomManager;->addGroup(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lsfs2x/client/entities/Room;->setManaged(Z)V

    goto :goto_0
.end method

.method public changeRoomCapacity(Lsfs2x/client/entities/Room;II)V
    .locals 0
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "maxUsers"    # I
    .param p3, "maxSpect"    # I

    .prologue
    .line 219
    invoke-interface {p1, p2}, Lsfs2x/client/entities/Room;->setMaxUsers(I)V

    .line 220
    invoke-interface {p1, p3}, Lsfs2x/client/entities/Room;->setMaxSpectators(I)V

    .line 221
    return-void
.end method

.method public changeRoomName(Lsfs2x/client/entities/Room;Ljava/lang/String;)V
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getName()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "oldName":Ljava/lang/String;
    invoke-interface {p1, p2}, Lsfs2x/client/entities/Room;->setName(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public changeRoomPasswordState(Lsfs2x/client/entities/Room;Z)V
    .locals 0
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "isPassProtected"    # Z

    .prologue
    .line 212
    invoke-interface {p1, p2}, Lsfs2x/client/entities/Room;->setPasswordProtected(Z)V

    .line 213
    return-void
.end method

.method public containsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRoom(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRoom(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRoomInGroup(ILjava/lang/String;)Z
    .locals 4
    .param p1, "roomId"    # I
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0, p2}, Lsfs2x/client/entities/managers/SFSRoomManager;->getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "roomList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 172
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 173
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 174
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsRoomInGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "roomName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0, p2}, Lsfs2x/client/entities/managers/SFSRoomManager;->getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "roomList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 187
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 188
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getJoinedRooms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "rooms":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    iget-object v2, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    return-object v1

    .line 286
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 287
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->isJoined()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOwnerZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->ownerZone:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomById(I)Lsfs2x/client/entities/Room;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    goto :goto_0
.end method

.method public getRoomByName(Ljava/lang/String;)Lsfs2x/client/entities/Room;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    goto :goto_0
.end method

.method public getRoomCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getRoomGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getRoomList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Room;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;
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

    .prologue
    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "roomList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    iget-object v2, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 276
    return-object v1

    .line 270
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 271
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSmartFox()Lsfs2x/client/ISmartFox;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->smartFox:Lsfs2x/client/ISmartFox;

    return-object v0
.end method

.method public getUserRooms(Lsfs2x/client/entities/User;)Ljava/util/List;
    .locals 4
    .param p1, "user"    # Lsfs2x/client/entities/User;
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

    .prologue
    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "rooms":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    iget-object v2, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    return-object v1

    .line 301
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 303
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0, p1}, Lsfs2x/client/entities/Room;->containsUser(Lsfs2x/client/entities/User;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeGroup(Ljava/lang/String;)V
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v2, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->groups:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, p1}, Lsfs2x/client/entities/managers/SFSRoomManager;->getRoomListFromGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "roomsInGroup":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    return-void

    .line 136
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 137
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->isJoined()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSRoomManager;->removeRoom(Lsfs2x/client/entities/Room;)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lsfs2x/client/entities/Room;->setManaged(Z)V

    goto :goto_0
.end method

.method public removeRoom(Lsfs2x/client/entities/Room;)V
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 315
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v0

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsfs2x/client/entities/managers/SFSRoomManager;->removeRoom(ILjava/lang/String;)V

    .line 316
    return-void
.end method

.method public removeRoomById(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 322
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 326
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lsfs2x/client/entities/managers/SFSRoomManager;->removeRoom(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public removeRoomByName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 337
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lsfs2x/client/entities/managers/SFSRoomManager;->removeRoom(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public removeUser(Lsfs2x/client/entities/User;)V
    .locals 3
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 344
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSRoomManager;->roomsById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    return-void

    .line 344
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 346
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0, p1}, Lsfs2x/client/entities/Room;->containsUser(Lsfs2x/client/entities/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-interface {v0, p1}, Lsfs2x/client/entities/Room;->removeUser(Lsfs2x/client/entities/User;)V

    goto :goto_0
.end method

.method public replaceRoom(Lsfs2x/client/entities/Room;)Lsfs2x/client/entities/Room;
    .locals 1
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsfs2x/client/entities/managers/SFSRoomManager;->replaceRoom(Lsfs2x/client/entities/Room;Z)Lsfs2x/client/entities/Room;

    move-result-object v0

    return-object v0
.end method

.method public replaceRoom(Lsfs2x/client/entities/Room;Z)Lsfs2x/client/entities/Room;
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "addToGroupIfMissing"    # Z

    .prologue
    .line 102
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lsfs2x/client/entities/managers/SFSRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v0

    .line 108
    .local v0, "oldRoom":Lsfs2x/client/entities/Room;
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1}, Lsfs2x/client/entities/Room;->merge(Lsfs2x/client/entities/Room;)V

    .line 116
    .end local v0    # "oldRoom":Lsfs2x/client/entities/Room;
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "oldRoom":Lsfs2x/client/entities/Room;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lsfs2x/client/entities/managers/SFSRoomManager;->addRoom(Lsfs2x/client/entities/Room;Z)V

    move-object v0, p1

    .line 116
    goto :goto_0
.end method
