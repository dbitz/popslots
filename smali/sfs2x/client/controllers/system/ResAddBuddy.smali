.class public Lsfs2x/client/controllers/system/ResAddBuddy;
.super Ljava/lang/Object;
.source "ResAddBuddy.java"

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
    .locals 7
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

    move-result-object v4

    .line 26
    .local v4, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v3, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "ec"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 31
    const-string/jumbo v5, "bn"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v5

    invoke-static {v5}, Lsfs2x/client/entities/SFSBuddy;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 32
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v5

    invoke-interface {v5, v0}, Lsfs2x/client/entities/managers/IBuddyManager;->addBuddy(Lsfs2x/client/entities/Buddy;)V

    .line 35
    const-string/jumbo v5, "buddy"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v5, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v6, "buddyAdd"

    invoke-direct {v5, v6, v3}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 48
    .end local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string/jumbo v5, "ec"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 42
    .local v1, "errorCode":S
    const-string/jumbo v5, "ep"

    invoke-interface {v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "errorMsg":Ljava/lang/String;
    const-string/jumbo v5, "errorMessage"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v5, "errorCode"

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v5, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v6, "buddyError"

    invoke-direct {v5, v6, v3}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v5}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method
