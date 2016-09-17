.class public Lsfs2x/client/controllers/system/ResInitBuddyList;
.super Ljava/lang/Object;
.source "ResInitBuddyList.java"

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

    move-result-object v9

    .line 28
    .local v9, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v5, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v10, "ec"

    invoke-interface {v9, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 33
    const-string/jumbo v10, "bl"

    invoke-interface {v9, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v1

    .line 34
    .local v1, "bListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const-string/jumbo v10, "mv"

    invoke-interface {v9, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v8

    .line 35
    .local v8, "myVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const-string/jumbo v10, "bs"

    invoke-interface {v9, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 38
    .local v2, "buddyStates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v10

    invoke-interface {v10}, Lsfs2x/client/entities/managers/IBuddyManager;->clearAll()V

    .line 41
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v10

    if-lt v6, v10, :cond_1

    .line 48
    if-eqz v2, :cond_0

    .line 49
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10, v11}, Lsfs2x/client/entities/managers/IBuddyManager;->setBuddyStates(Ljava/util/List;)V

    .line 53
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, "myBuddyVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v8}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v10

    if-lt v6, v10, :cond_2

    .line 59
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v10

    invoke-interface {v10, v7}, Lsfs2x/client/entities/managers/IBuddyManager;->setMyVariables(Ljava/util/List;)V

    .line 60
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lsfs2x/client/entities/managers/IBuddyManager;->setInited(Z)V

    .line 63
    const-string/jumbo v10, "buddyList"

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v11

    invoke-interface {v11}, Lsfs2x/client/entities/managers/IBuddyManager;->getBuddyList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v10, "myVariables"

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v11

    invoke-interface {v11}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyVariables()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v10, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v11, "buddyListInit"

    invoke-direct {v10, v11, v5}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v10}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 78
    .end local v1    # "bListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v2    # "buddyStates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "myBuddyVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    .end local v8    # "myVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :goto_2
    return-void

    .line 43
    .restart local v1    # "bListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .restart local v2    # "buddyStates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v8    # "myVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_1
    invoke-interface {v1, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v10

    invoke-static {v10}, Lsfs2x/client/entities/SFSBuddy;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 44
    .local v0, "b":Lsfs2x/client/entities/Buddy;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v10

    invoke-interface {v10, v0}, Lsfs2x/client/entities/managers/IBuddyManager;->addBuddy(Lsfs2x/client/entities/Buddy;)V

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "b":Lsfs2x/client/entities/Buddy;
    .restart local v7    # "myBuddyVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    :cond_2
    invoke-interface {v8, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v10

    invoke-static {v10}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "bListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v2    # "buddyStates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "myBuddyVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    .end local v8    # "myVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_3
    const-string/jumbo v10, "ec"

    invoke-interface {v9, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Short;->shortValue()S

    move-result v3

    .line 72
    .local v3, "errorCode":S
    const-string/jumbo v10, "ep"

    invoke-interface {v9, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "errorMsg":Ljava/lang/String;
    const-string/jumbo v10, "errorMessage"

    invoke-interface {v5, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v10, "errorCode"

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v10, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v11, "buddyError"

    invoke-direct {v10, v11, v5}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v10}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_2
.end method
