.class public Lsfs2x/client/controllers/system/ResFindUsers;
.super Ljava/lang/Object;
.source "ResFindUsers.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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
    .line 26
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    .line 27
    .local v3, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "fu"

    invoke-interface {v3, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    .line 30
    .local v6, "userListData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v5, "userList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/User;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v2

    .line 33
    .local v2, "mySelf":Lsfs2x/client/entities/User;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 47
    const-string/jumbo v7, "users"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v7, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v8, "userFindResult"

    invoke-direct {v7, v8, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v7}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 49
    return-void

    .line 34
    :cond_0
    invoke-interface {v6, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v7

    invoke-static {v7}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/User;

    move-result-object v4

    .line 40
    .local v4, "u":Lsfs2x/client/entities/User;
    invoke-interface {v4}, Lsfs2x/client/entities/User;->getId()I

    move-result v7

    invoke-interface {v2}, Lsfs2x/client/entities/User;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 41
    move-object v4, v2

    .line 44
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
