.class public Lsfs2x/client/controllers/system/ResSetBuddyVariables;
.super Ljava/lang/Object;
.source "ResSetBuddyVariables.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 17
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface/range {p3 .. p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v12

    .line 30
    .local v12, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v8, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v14, "ec"

    invoke-interface {v12, v14}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 34
    const-string/jumbo v14, "bn"

    invoke-interface {v12, v14}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "buddyName":Ljava/lang/String;
    const-string/jumbo v14, "bv"

    invoke-interface {v12, v14}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    .line 37
    .local v4, "buddyVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface/range {p1 .. p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v14

    invoke-interface {v14, v2}, Lsfs2x/client/entities/managers/IBuddyManager;->getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;

    move-result-object v1

    .line 39
    .local v1, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface/range {p1 .. p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v14

    invoke-interface {v14}, Lsfs2x/client/entities/User;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 41
    .local v10, "isItMe":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v5, "changedVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v13, "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    const/4 v9, 0x1

    .line 47
    .local v9, "fireEvent":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-interface {v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v14

    if-lt v11, v14, :cond_1

    .line 55
    if-eqz v10, :cond_2

    .line 56
    invoke-interface/range {p1 .. p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v14

    invoke-interface {v14, v13}, Lsfs2x/client/entities/managers/IBuddyManager;->setMyVariables(Ljava/util/List;)V

    .line 73
    :goto_1
    if-eqz v9, :cond_0

    .line 74
    const-string/jumbo v14, "isItMe"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v14, "changedVars"

    invoke-interface {v8, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v14, "buddy"

    invoke-interface {v8, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v14, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v15, "buddyVariablesUpdate"

    invoke-direct {v14, v15, v8}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 91
    .end local v1    # "buddy":Lsfs2x/client/entities/Buddy;
    .end local v2    # "buddyName":Ljava/lang/String;
    .end local v4    # "buddyVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v5    # "changedVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "fireEvent":Z
    .end local v10    # "isItMe":Z
    .end local v11    # "j":I
    .end local v13    # "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    :cond_0
    :goto_2
    return-void

    .line 48
    .restart local v1    # "buddy":Lsfs2x/client/entities/Buddy;
    .restart local v2    # "buddyName":Ljava/lang/String;
    .restart local v4    # "buddyVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .restart local v5    # "changedVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "fireEvent":Z
    .restart local v10    # "isItMe":Z
    .restart local v11    # "j":I
    .restart local v13    # "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    :cond_1
    invoke-interface {v4, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v14

    invoke-static {v14}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v3

    .line 50
    .local v3, "buddyVar":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v3}, Lsfs2x/client/entities/variables/BuddyVariable;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "buddyVar":Lsfs2x/client/entities/variables/BuddyVariable;
    :cond_2
    if-eqz v1, :cond_3

    .line 61
    invoke-interface {v1, v13}, Lsfs2x/client/entities/Buddy;->setVariables(Ljava/util/List;)V

    .line 64
    invoke-interface/range {p1 .. p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v14

    invoke-interface {v14}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v9

    .line 65
    goto :goto_1

    .line 69
    :cond_3
    invoke-interface/range {p1 .. p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Unexpected. Target of BuddyVariables update not found: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    .end local v1    # "buddy":Lsfs2x/client/entities/Buddy;
    .end local v2    # "buddyName":Ljava/lang/String;
    .end local v4    # "buddyVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v5    # "changedVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "fireEvent":Z
    .end local v10    # "isItMe":Z
    .end local v11    # "j":I
    .end local v13    # "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    :cond_4
    const-string/jumbo v14, "ec"

    invoke-interface {v12, v14}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Short;->shortValue()S

    move-result v6

    .line 85
    .local v6, "errorCode":S
    const-string/jumbo v14, "ep"

    invoke-interface {v12, v14}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v6, v14}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "errorMsg":Ljava/lang/String;
    const-string/jumbo v14, "errorMessage"

    invoke-interface {v8, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v14, "errorCode"

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v14, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v15, "buddyError"

    invoke-direct {v14, v15, v8}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_2
.end method
