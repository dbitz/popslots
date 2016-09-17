.class public Lsfs2x/client/controllers/system/ResCreateRoom;
.super Ljava/lang/Object;
.source "ResCreateRoom.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 8
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v5

    .line 27
    .local v5, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v2, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "ec"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 31
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v4

    .line 32
    .local v4, "roomManager":Lsfs2x/client/entities/managers/IRoomManager;
    const-string/jumbo v6, "r"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    invoke-static {v6}, Lsfs2x/client/entities/SFSRoom;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Room;

    move-result-object v3

    .line 33
    .local v3, "newRoom":Lsfs2x/client/entities/Room;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setRoomManager(Lsfs2x/client/entities/managers/IRoomManager;)V

    .line 36
    invoke-interface {v4, v3}, Lsfs2x/client/entities/managers/IRoomManager;->addRoom(Lsfs2x/client/entities/Room;)V

    .line 38
    const-string/jumbo v6, "room"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v6, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v7, "roomAdd"

    invoke-direct {v6, v7, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 51
    .end local v3    # "newRoom":Lsfs2x/client/entities/Room;
    .end local v4    # "roomManager":Lsfs2x/client/entities/managers/IRoomManager;
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string/jumbo v6, "ec"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 45
    .local v0, "errorCode":S
    const-string/jumbo v6, "ep"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "errorMessage"

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v6, "errorCode"

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v6, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v7, "roomCreationError"

    invoke-direct {v6, v7, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method
