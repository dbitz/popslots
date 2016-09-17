.class public Lsfs2x/client/controllers/system/ResInviteUsers;
.super Ljava/lang/Object;
.source "ResInviteUsers.java"

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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 30
    .local v5, "inviter":Lsfs2x/client/entities/User;
    const-string/jumbo v7, "ui"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 31
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v7

    const-string/jumbo v8, "ui"

    invoke-interface {v6, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v5

    .line 37
    :goto_0
    const-string/jumbo v7, "t"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 38
    .local v1, "expiryTime":I
    const-string/jumbo v7, "ii"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 39
    .local v4, "invitationId":I
    const-string/jumbo v7, "p"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    .line 40
    .local v2, "invParams":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v3, Lsfs2x/client/entities/invitation/SFSInvitation;

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v7

    invoke-direct {v3, v5, v7, v1, v2}, Lsfs2x/client/entities/invitation/SFSInvitation;-><init>(Lsfs2x/client/entities/User;Lsfs2x/client/entities/User;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 41
    .local v3, "invitation":Lsfs2x/client/entities/invitation/Invitation;
    invoke-interface {v3, v4}, Lsfs2x/client/entities/invitation/Invitation;->setId(I)V

    .line 43
    const-string/jumbo v7, "invitation"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v7, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v8, "invitation"

    invoke-direct {v7, v8, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v7}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 46
    return-void

    .line 34
    .end local v1    # "expiryTime":I
    .end local v2    # "invParams":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .end local v3    # "invitation":Lsfs2x/client/entities/invitation/Invitation;
    .end local v4    # "invitationId":I
    :cond_0
    const-string/jumbo v7, "u"

    invoke-interface {v6, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v7

    invoke-static {v7}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/User;

    move-result-object v5

    goto :goto_0
.end method
