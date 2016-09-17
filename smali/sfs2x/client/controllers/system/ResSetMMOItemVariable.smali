.class public Lsfs2x/client/controllers/system/ResSetMMOItemVariable;
.super Ljava/lang/Object;
.source "ResSetMMOItemVariable.java"

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
    .line 27
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v8

    .line 28
    .local v8, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v1, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v10, "r"

    invoke-interface {v8, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 31
    .local v7, "roomId":I
    const-string/jumbo v10, "i"

    invoke-interface {v8, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 32
    .local v5, "mmoItemId":I
    const-string/jumbo v10, "v"

    invoke-interface {v8, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v9

    .line 34
    .local v9, "varList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v10

    invoke-interface {v10, v7}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v6

    check-cast v6, Lsfs2x/client/entities/MMORoom;

    .line 36
    .local v6, "mmoRoom":Lsfs2x/client/entities/MMORoom;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .local v0, "changedVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v6, v5}, Lsfs2x/client/entities/MMORoom;->getMMOItem(I)Lsfs2x/client/entities/IMMOItem;

    move-result-object v4

    .line 42
    .local v4, "mmoItem":Lsfs2x/client/entities/IMMOItem;
    if-eqz v4, :cond_0

    .line 44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v9}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v10

    if-lt v2, v10, :cond_1

    .line 52
    const-string/jumbo v10, "changedVars"

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v10, "mmoItem"

    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v10, "room"

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v10, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v11, "mmoItemVariablesUpdate"

    invoke-direct {v10, v11, v1}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v10}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 59
    .end local v2    # "i":I
    .end local v4    # "mmoItem":Lsfs2x/client/entities/IMMOItem;
    :cond_0
    return-void

    .line 46
    .restart local v2    # "i":I
    .restart local v4    # "mmoItem":Lsfs2x/client/entities/IMMOItem;
    :cond_1
    invoke-interface {v9, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v10

    invoke-static {v10}, Lsfs2x/client/entities/variables/MMOItemVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/IMMOItemVariable;

    move-result-object v3

    .line 47
    .local v3, "itemVar":Lsfs2x/client/entities/variables/IMMOItemVariable;
    invoke-interface {v4, v3}, Lsfs2x/client/entities/IMMOItem;->setVariable(Lsfs2x/client/entities/variables/IMMOItemVariable;)V

    .line 49
    invoke-interface {v3}, Lsfs2x/client/entities/variables/IMMOItemVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
