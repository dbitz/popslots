.class public Lsfs2x/client/controllers/system/ResJoinRoom;
.super Ljava/lang/Object;
.source "ResJoinRoom.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 13
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v5

    .line 29
    .local v5, "roomManager":Lsfs2x/client/entities/managers/IRoomManager;
    invoke-interface/range {p3 .. p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v7

    .line 30
    .local v7, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v2, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Lsfs2x/client/ISmartFox;->setJoining(Z)V

    .line 36
    const-string/jumbo v11, "ec"

    invoke-interface {v7, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 37
    const-string/jumbo v11, "r"

    invoke-interface {v7, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    .line 38
    .local v6, "roomObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const-string/jumbo v11, "ul"

    invoke-interface {v7, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v9

    .line 41
    .local v9, "userList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-static {v6}, Lsfs2x/client/entities/SFSRoom;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Room;

    move-result-object v4

    .line 42
    .local v4, "room":Lsfs2x/client/entities/Room;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v11

    invoke-interface {v4, v11}, Lsfs2x/client/entities/Room;->setRoomManager(Lsfs2x/client/entities/managers/IRoomManager;)V

    .line 53
    invoke-interface {v4}, Lsfs2x/client/entities/Room;->getGroupId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lsfs2x/client/entities/managers/IRoomManager;->containsGroup(Ljava/lang/String;)Z

    move-result v11

    invoke-interface {v5, v4, v11}, Lsfs2x/client/entities/managers/IRoomManager;->replaceRoom(Lsfs2x/client/entities/Room;Z)Lsfs2x/client/entities/Room;

    move-result-object v4

    .line 56
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {v9}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 69
    const/4 v11, 0x1

    invoke-interface {v4, v11}, Lsfs2x/client/entities/Room;->setJoined(Z)V

    .line 72
    invoke-interface {p1, v4}, Lsfs2x/client/ISmartFox;->setLastJoinedRoom(Lsfs2x/client/entities/Room;)V

    .line 74
    const-string/jumbo v11, "room"

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v11, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v12, "roomJoin"

    invoke-direct {v11, v12, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v11}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 86
    .end local v3    # "j":I
    .end local v4    # "room":Lsfs2x/client/entities/Room;
    .end local v6    # "roomObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v9    # "userList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :goto_1
    return-void

    .line 57
    .restart local v3    # "j":I
    .restart local v4    # "room":Lsfs2x/client/entities/Room;
    .restart local v6    # "roomObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .restart local v9    # "userList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_0
    invoke-interface {v9, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v10

    .line 60
    .local v10, "userObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11, v4}, Lsfs2x/client/controllers/SystemController;->getOrCreateUser(Lcom/smartfoxserver/v2/entities/data/ISFSArray;ZLsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;

    move-result-object v8

    .line 63
    .local v8, "user":Lsfs2x/client/entities/User;
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    invoke-interface {v8, v11, v4}, Lsfs2x/client/entities/User;->setPlayerId(ILsfs2x/client/entities/Room;)V

    .line 64
    invoke-interface {v4, v8}, Lsfs2x/client/entities/Room;->addUser(Lsfs2x/client/entities/User;)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "j":I
    .end local v4    # "room":Lsfs2x/client/entities/Room;
    .end local v6    # "roomObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v8    # "user":Lsfs2x/client/entities/User;
    .end local v9    # "userList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v10    # "userObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_1
    const-string/jumbo v11, "ec"

    invoke-interface {v7, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 80
    .local v0, "errorCode":S
    const-string/jumbo v11, "ep"

    invoke-interface {v7, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v0, v11}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v11, "errorMessage"

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v11, "errorCode"

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v11, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v12, "roomJoinError"

    invoke-direct {v11, v12, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v11}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_1
.end method
