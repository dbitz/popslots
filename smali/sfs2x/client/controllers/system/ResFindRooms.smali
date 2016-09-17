.class public Lsfs2x/client/controllers/system/ResFindRooms;
.super Ljava/lang/Object;
.source "ResFindRooms.java"

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
    .line 24
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v5

    .line 25
    .local v5, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "fr"

    invoke-interface {v5, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    .line 28
    .local v4, "roomListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v3, "roomList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 41
    const-string/jumbo v7, "rooms"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v7, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v8, "roomFindResult"

    invoke-direct {v7, v8, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v7}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 43
    return-void

    .line 32
    :cond_0
    invoke-interface {v4, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v7

    invoke-static {v7}, Lsfs2x/client/entities/SFSRoom;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Room;

    move-result-object v6

    .line 33
    .local v6, "theRoom":Lsfs2x/client/entities/Room;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v7

    invoke-interface {v6}, Lsfs2x/client/entities/Room;->getId()I

    move-result v8

    invoke-interface {v7, v8}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v2

    .line 35
    .local v2, "localRoom":Lsfs2x/client/entities/Room;
    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v2}, Lsfs2x/client/entities/Room;->isJoined()Z

    move-result v7

    invoke-interface {v6, v7}, Lsfs2x/client/entities/Room;->setJoined(Z)V

    .line 38
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
