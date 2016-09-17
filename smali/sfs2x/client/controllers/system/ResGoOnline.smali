.class public Lsfs2x/client/controllers/system/ResGoOnline;
.super Ljava/lang/Object;
.source "ResGoOnline.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 14
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface/range {p3 .. p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v10

    .line 29
    .local v10, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v5, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v11, "ec"

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 33
    const-string/jumbo v11, "bn"

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "buddyName":Ljava/lang/String;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v11

    invoke-interface {v11, v1}, Lsfs2x/client/entities/managers/IBuddyManager;->getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 35
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v11

    invoke-interface {v11}, Lsfs2x/client/entities/User;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 36
    .local v7, "isItMe":Z
    const-string/jumbo v11, "o"

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    .line 37
    .local v9, "onlineValue":I
    if-nez v9, :cond_2

    const/4 v8, 0x1

    .line 39
    .local v8, "onlineState":Z
    :goto_0
    const/4 v6, 0x1

    .line 41
    .local v6, "fireEvent":Z
    if-eqz v7, :cond_3

    .line 47
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v11

    invoke-interface {v11}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v11

    if-eq v11, v8, :cond_0

    .line 48
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Unexpected: MyOnlineState is not in synch with the server. Resynching: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v11

    invoke-interface {v11, v8}, Lsfs2x/client/entities/managers/IBuddyManager;->setMyOnlineState(Z)V

    .line 82
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 83
    const-string/jumbo v11, "buddy"

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v11, "isItMe"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v11, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v12, "buddyOnlineStateChange"

    invoke-direct {v11, v12, v5}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v11}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 98
    .end local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    .end local v1    # "buddyName":Ljava/lang/String;
    .end local v6    # "fireEvent":Z
    .end local v7    # "isItMe":Z
    .end local v8    # "onlineState":Z
    .end local v9    # "onlineValue":I
    :cond_1
    :goto_2
    return-void

    .line 37
    .restart local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    .restart local v1    # "buddyName":Ljava/lang/String;
    .restart local v7    # "isItMe":Z
    .restart local v9    # "onlineValue":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 54
    .restart local v6    # "fireEvent":Z
    .restart local v8    # "onlineState":Z
    :cond_3
    if-eqz v0, :cond_5

    .line 56
    const-string/jumbo v11, "bi"

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0, v11}, Lsfs2x/client/entities/Buddy;->setId(I)V

    .line 57
    new-instance v2, Lsfs2x/client/entities/variables/SFSBuddyVariable;

    const-string/jumbo v11, "$__BV_ONLINE__"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Lsfs2x/client/entities/variables/SFSBuddyVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .local v2, "bvar":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v0, v2}, Lsfs2x/client/entities/Buddy;->setVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    .line 64
    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 65
    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->clearVolatileVariables()V

    .line 72
    :cond_4
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v11

    invoke-interface {v11}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v6

    .line 73
    goto :goto_1

    .line 78
    .end local v2    # "bvar":Lsfs2x/client/entities/variables/BuddyVariable;
    :cond_5
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "GoOnline error, buddy not found: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", in local BuddyList."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 91
    .end local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    .end local v1    # "buddyName":Ljava/lang/String;
    .end local v6    # "fireEvent":Z
    .end local v7    # "isItMe":Z
    .end local v8    # "onlineState":Z
    .end local v9    # "onlineValue":I
    :cond_6
    const-string/jumbo v11, "ec"

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v3

    .line 92
    .local v3, "errorCode":S
    const-string/jumbo v11, "ep"

    invoke-interface {v10, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v3, v11}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "errorMsg":Ljava/lang/String;
    const-string/jumbo v11, "errorMessage"

    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v11, "errorCode"

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v11, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v12, "buddyError"

    invoke-direct {v11, v12, v5}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v11}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto/16 :goto_2
.end method
