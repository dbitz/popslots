.class public Lsfs2x/client/controllers/system/ResInvitationReply;
.super Ljava/lang/Object;
.source "ResInvitationReply.java"

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
    .line 25
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v6

    .line 26
    .local v6, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v3, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "ec"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 30
    const/4 v4, 0x0

    .line 33
    .local v4, "invitee":Lsfs2x/client/entities/User;
    const-string/jumbo v7, "ui"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v7

    const-string/jumbo v8, "ui"

    invoke-interface {v6, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v4

    .line 40
    :goto_0
    const-string/jumbo v7, "ri"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 41
    .local v5, "reply":I
    const-string/jumbo v7, "p"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    .line 43
    .local v0, "data":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v7, "invitee"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v7, "reply"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v7, "data"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v7, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v8, "invitationReply"

    invoke-direct {v7, v8, v3}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v7}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 60
    .end local v0    # "data":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .end local v4    # "invitee":Lsfs2x/client/entities/User;
    .end local v5    # "reply":I
    :goto_1
    return-void

    .line 37
    .restart local v4    # "invitee":Lsfs2x/client/entities/User;
    :cond_0
    const-string/jumbo v7, "u"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v7

    invoke-static {v7}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/User;

    move-result-object v4

    goto :goto_0

    .line 53
    .end local v4    # "invitee":Lsfs2x/client/entities/User;
    :cond_1
    const-string/jumbo v7, "ec"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 54
    .local v1, "errorCode":S
    const-string/jumbo v7, "ep"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "errorMsg":Ljava/lang/String;
    const-string/jumbo v7, "errorMessage"

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v7, "errorCode"

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v7, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v8, "invitationReplyError"

    invoke-direct {v7, v8, v3}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v7}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_1
.end method
