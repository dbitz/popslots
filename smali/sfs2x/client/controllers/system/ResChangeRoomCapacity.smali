.class public Lsfs2x/client/controllers/system/ResChangeRoomCapacity;
.super Ljava/lang/Object;
.source "ResChangeRoomCapacity.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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

    move-result-object v4

    .line 25
    .local v4, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v2, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "ec"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 30
    const-string/jumbo v6, "r"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 31
    .local v3, "roomId":I
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    invoke-interface {v6, v3}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v5

    .line 33
    .local v5, "targetRoom":Lsfs2x/client/entities/Room;
    if-eqz v5, :cond_0

    .line 34
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v6

    .line 36
    const-string/jumbo v7, "u"

    invoke-interface {v4, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 37
    const-string/jumbo v8, "s"

    invoke-interface {v4, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 34
    invoke-interface {v6, v5, v7, v8}, Lsfs2x/client/entities/managers/IRoomManager;->changeRoomCapacity(Lsfs2x/client/entities/Room;II)V

    .line 40
    const-string/jumbo v6, "room"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v6, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v7, "roomCapacityChange"

    invoke-direct {v6, v7, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 57
    .end local v3    # "roomId":I
    .end local v5    # "targetRoom":Lsfs2x/client/entities/Room;
    :goto_0
    return-void

    .line 44
    .restart local v3    # "roomId":I
    .restart local v5    # "targetRoom":Lsfs2x/client/entities/Room;
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Room not found, ID:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Room capacity change failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v3    # "roomId":I
    .end local v5    # "targetRoom":Lsfs2x/client/entities/Room;
    :cond_1
    const-string/jumbo v6, "ec"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 51
    .local v0, "errorCode":S
    const-string/jumbo v6, "ep"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "errorMessage"

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v6, "errorCode"

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v6, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v7, "roomCapacityChangeError"

    invoke-direct {v6, v7, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method
