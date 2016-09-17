.class public Lsfs2x/client/controllers/system/ResSpectatorToPlayer;
.super Ljava/lang/Object;
.source "ResSpectatorToPlayer.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 12
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v5

    .line 26
    .local v5, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v2, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "ec"

    invoke-interface {v5, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 31
    const-string/jumbo v9, "r"

    invoke-interface {v5, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 32
    .local v4, "roomId":I
    const-string/jumbo v9, "u"

    invoke-interface {v5, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 33
    .local v8, "userId":I
    const-string/jumbo v9, "p"

    invoke-interface {v5, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v3

    .line 35
    .local v3, "playerId":I
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v9

    invoke-interface {v9, v8}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v7

    .line 36
    .local v7, "user":Lsfs2x/client/entities/User;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v9

    invoke-interface {v9, v4}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v6

    .line 38
    .local v6, "targetRoom":Lsfs2x/client/entities/Room;
    if-eqz v6, :cond_2

    .line 39
    if-eqz v7, :cond_1

    .line 40
    invoke-interface {v7, v6}, Lsfs2x/client/entities/User;->isJoinedInRoom(Lsfs2x/client/entities/Room;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 42
    invoke-interface {v7, v3, v6}, Lsfs2x/client/entities/User;->setPlayerId(ILsfs2x/client/entities/Room;)V

    .line 44
    const-string/jumbo v9, "room"

    invoke-interface {v2, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v9, "user"

    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v9, "playerId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v9, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v10, "spectatorToPlayer"

    invoke-direct {v9, v10, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v9}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 73
    .end local v3    # "playerId":I
    .end local v4    # "roomId":I
    .end local v6    # "targetRoom":Lsfs2x/client/entities/Room;
    .end local v7    # "user":Lsfs2x/client/entities/User;
    .end local v8    # "userId":I
    :goto_0
    return-void

    .line 51
    .restart local v3    # "playerId":I
    .restart local v4    # "roomId":I
    .restart local v6    # "targetRoom":Lsfs2x/client/entities/Room;
    .restart local v7    # "user":Lsfs2x/client/entities/User;
    .restart local v8    # "userId":I
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "User: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not joined in Room: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", SpectatorToPlayer failed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "User not found, ID:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", SpectatorToPlayer failed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Room not found, ID:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", SpectatorToPlayer failed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v3    # "playerId":I
    .end local v4    # "roomId":I
    .end local v6    # "targetRoom":Lsfs2x/client/entities/Room;
    .end local v7    # "user":Lsfs2x/client/entities/User;
    .end local v8    # "userId":I
    :cond_3
    const-string/jumbo v9, "ec"

    invoke-interface {v5, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 67
    .local v0, "errorCode":S
    const-string/jumbo v9, "ep"

    invoke-interface {v5, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v9}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v9, "errorMessage"

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v9, "errorCode"

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v9, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v10, "spectatorToPlayerError"

    invoke-direct {v9, v10, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v9}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto/16 :goto_0
.end method
