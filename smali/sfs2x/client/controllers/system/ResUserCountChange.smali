.class public Lsfs2x/client/controllers/system/ResUserCountChange;
.super Ljava/lang/Object;
.source "ResUserCountChange.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    .line 21
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    .line 22
    .local v3, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-interface {v3, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v1

    .line 26
    .local v1, "room":Lsfs2x/client/entities/Room;
    if-eqz v1, :cond_1

    .line 27
    const-string/jumbo v5, "uc"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 28
    .local v4, "uCount":I
    const/4 v2, 0x0

    .line 31
    .local v2, "sCount":I
    const-string/jumbo v5, "sc"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    const-string/jumbo v5, "sc"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 35
    :cond_0
    invoke-interface {v1, v4}, Lsfs2x/client/entities/Room;->setUserCount(I)V

    .line 36
    invoke-interface {v1, v2}, Lsfs2x/client/entities/Room;->setSpectatorCount(I)V

    .line 38
    const-string/jumbo v5, "room"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v5, "uCount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v5, "sCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v5, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v6, "userCountChange"

    invoke-direct {v5, v6, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 44
    .end local v2    # "sCount":I
    .end local v4    # "uCount":I
    :cond_1
    return-void
.end method
