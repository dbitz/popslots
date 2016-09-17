.class public Lsfs2x/client/controllers/system/ResUserExitRoom;
.super Ljava/lang/Object;
.source "ResUserExitRoom.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 9
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    .line 23
    .local v3, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "r"

    invoke-interface {v3, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 26
    .local v1, "rId":I
    const-string/jumbo v6, "u"

    invoke-interface {v3, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 27
    .local v4, "uId":I
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    invoke-interface {v6, v1}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v2

    .line 28
    .local v2, "room":Lsfs2x/client/entities/Room;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v6

    invoke-interface {v6, v4}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v5

    .line 30
    .local v5, "user":Lsfs2x/client/entities/User;
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 31
    invoke-interface {v2, v5}, Lsfs2x/client/entities/Room;->removeUser(Lsfs2x/client/entities/User;)V

    .line 32
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lsfs2x/client/entities/managers/IUserManager;->removeUser(Lsfs2x/client/entities/User;)V

    .line 35
    invoke-interface {v5}, Lsfs2x/client/entities/User;->isItMe()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->isJoined()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lsfs2x/client/entities/Room;->setJoined(Z)V

    .line 40
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 41
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->setLastJoinedRoom(Lsfs2x/client/entities/Room;)V

    .line 47
    :cond_0
    invoke-interface {v2}, Lsfs2x/client/entities/Room;->isManaged()Z

    move-result v6

    if-nez v6, :cond_1

    .line 48
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    invoke-interface {v6, v2}, Lsfs2x/client/entities/managers/IRoomManager;->removeRoom(Lsfs2x/client/entities/Room;)V

    .line 52
    :cond_1
    const-string/jumbo v6, "user"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v6, "room"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v6, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v7, "userExitRoom"

    invoke-direct {v6, v7, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to handle UserExit event. Room: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", User: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
