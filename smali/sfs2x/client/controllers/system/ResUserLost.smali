.class public Lsfs2x/client/controllers/system/ResUserLost;
.super Ljava/lang/Object;
.source "ResUserLost.java"

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
    .line 23
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    .line 25
    .local v3, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v6, "u"

    invoke-interface {v3, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 26
    .local v4, "uId":I
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v6

    invoke-interface {v6, v4}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v5

    .line 28
    .local v5, "user":Lsfs2x/client/entities/User;
    if-eqz v5, :cond_0

    .line 30
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lsfs2x/client/entities/managers/IRoomManager;->getUserRooms(Lsfs2x/client/entities/User;)Ljava/util/List;

    move-result-object v1

    .line 33
    .local v1, "joinedRooms":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lsfs2x/client/entities/managers/IRoomManager;->removeUser(Lsfs2x/client/entities/User;)V

    .line 36
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lsfs2x/client/entities/managers/IUserManager;->removeUser(Lsfs2x/client/entities/User;)V

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    .end local v1    # "joinedRooms":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    :cond_0
    return-void

    .line 39
    .restart local v1    # "joinedRooms":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Room;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsfs2x/client/entities/Room;

    .line 40
    .local v2, "room":Lsfs2x/client/entities/Room;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "user"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v7, "room"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v7, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v8, "userExitRoom"

    invoke-direct {v7, v8, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v7}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method
