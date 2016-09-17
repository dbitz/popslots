.class public Lsfs2x/client/controllers/system/ResUserEnterRoom;
.super Ljava/lang/Object;
.source "ResUserEnterRoom.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 7
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    .line 24
    .local v2, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-interface {v2, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v1

    .line 29
    .local v1, "room":Lsfs2x/client/entities/Room;
    if-eqz v1, :cond_0

    .line 30
    const-string/jumbo v5, "u"

    invoke-interface {v2, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    .line 31
    .local v4, "userObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5, v1}, Lsfs2x/client/controllers/SystemController;->getOrCreateUser(Lcom/smartfoxserver/v2/entities/data/ISFSArray;ZLsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;

    move-result-object v3

    .line 33
    .local v3, "user":Lsfs2x/client/entities/User;
    invoke-interface {v1, v3}, Lsfs2x/client/entities/Room;->addUser(Lsfs2x/client/entities/User;)V

    .line 35
    const-string/jumbo v5, "user"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v5, "room"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v5, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v6, "userEnterRoom"

    invoke-direct {v5, v6, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 39
    .end local v3    # "user":Lsfs2x/client/entities/User;
    .end local v4    # "userObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_0
    return-void
.end method
