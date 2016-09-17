.class public Lsfs2x/client/controllers/system/ResLogin;
.super Ljava/lang/Object;
.source "ResLogin.java"

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
    .line 27
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    .line 28
    .local v4, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v3, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "ec"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 33
    const-string/jumbo v5, "rl"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v5

    invoke-virtual {p2, v5}, Lsfs2x/client/controllers/SystemController;->populateRoomList(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 38
    new-instance v5, Lsfs2x/client/entities/SFSUser;

    .line 40
    const-string/jumbo v6, "id"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 41
    const-string/jumbo v7, "un"

    invoke-interface {v4, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    const/4 v8, 0x1

    .line 38
    invoke-direct {v5, v6, v7, v8}, Lsfs2x/client/entities/SFSUser;-><init>(ILjava/lang/String;Z)V

    .line 36
    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->setMySelf(Lsfs2x/client/entities/User;)V

    .line 46
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v5

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v6

    invoke-interface {v5, v6}, Lsfs2x/client/entities/User;->setUserManager(Lsfs2x/client/entities/managers/IUserManager;)V

    .line 47
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v5

    const-string/jumbo v6, "pi"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-interface {v5, v6}, Lsfs2x/client/entities/User;->setPrivilegeId(I)V

    .line 48
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v5

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v6

    invoke-interface {v5, v6}, Lsfs2x/client/entities/managers/IUserManager;->addUser(Lsfs2x/client/entities/User;)V

    .line 51
    const-string/jumbo v5, "rs"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->setReconnectionSeconds(I)V

    .line 53
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v5

    const-string/jumbo v6, "pi"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-interface {v5, v6}, Lsfs2x/client/entities/User;->setPrivilegeId(I)V

    .line 56
    const-string/jumbo v5, "zone"

    const-string/jumbo v6, "zn"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v5, "user"

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v5, "data"

    const-string/jumbo v6, "p"

    invoke-interface {v4, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v2, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "login"

    invoke-direct {v2, v5, v3}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .local v2, "evt":Lsfs2x/client/core/BaseEvent;
    invoke-interface {p1, v2}, Lsfs2x/client/ISmartFox;->handleLogin(Lsfs2x/client/core/BaseEvent;)V

    .line 62
    invoke-interface {p1, v2}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 75
    .end local v2    # "evt":Lsfs2x/client/core/BaseEvent;
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v5, "ec"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 69
    .local v0, "errorCode":S
    const-string/jumbo v5, "ep"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v5, "errorMessage"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v5, "errorCode"

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v5, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v6, "loginError"

    invoke-direct {v5, v6, v3}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method
