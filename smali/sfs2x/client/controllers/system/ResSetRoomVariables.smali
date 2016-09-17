.class public Lsfs2x/client/controllers/system/ResSetRoomVariables;
.super Ljava/lang/Object;
.source "ResSetRoomVariables.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 11
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v5

    .line 28
    .local v5, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v1, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "r"

    invoke-interface {v5, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 31
    .local v3, "rId":I
    const-string/jumbo v8, "vl"

    invoke-interface {v5, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v7

    .line 33
    .local v7, "varListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v8

    invoke-interface {v8, v3}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v6

    .line 34
    .local v6, "targetRoom":Lsfs2x/client/entities/Room;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "changedVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 37
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {v7}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 44
    const-string/jumbo v8, "changedVars"

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v8, "room"

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v8, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v9, "roomVariablesUpdate"

    invoke-direct {v8, v9, v1}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v8}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 52
    .end local v2    # "j":I
    :goto_1
    return-void

    .line 38
    .restart local v2    # "j":I
    :cond_0
    invoke-interface {v7, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v8

    invoke-static {v8}, Lsfs2x/client/entities/variables/SFSRoomVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/RoomVariable;

    move-result-object v4

    .line 39
    .local v4, "roomVar":Lsfs2x/client/entities/variables/RoomVariable;
    invoke-interface {v6, v4}, Lsfs2x/client/entities/Room;->setVariable(Lsfs2x/client/entities/variables/RoomVariable;)V

    .line 41
    invoke-interface {v4}, Lsfs2x/client/entities/variables/RoomVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "j":I
    .end local v4    # "roomVar":Lsfs2x/client/entities/variables/RoomVariable;
    :cond_1
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "RoomVariablesUpdate, unknown Room id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method
