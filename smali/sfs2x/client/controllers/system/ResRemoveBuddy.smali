.class public Lsfs2x/client/controllers/system/ResRemoveBuddy;
.super Ljava/lang/Object;
.source "ResRemoveBuddy.java"

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
    .line 24
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v5

    .line 25
    .local v5, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v4, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "ec"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 29
    const-string/jumbo v6, "bn"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "buddyName":Ljava/lang/String;
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v6

    invoke-interface {v6, v1}, Lsfs2x/client/entities/managers/IBuddyManager;->removeBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 32
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v6, "buddy"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v6, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v7, "buddyRemove"

    invoke-direct {v6, v7, v4}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 52
    .end local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    .end local v1    # "buddyName":Ljava/lang/String;
    :goto_0
    return-void

    .line 38
    .restart local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    .restart local v1    # "buddyName":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "RemoveBuddy failed, buddy not found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0    # "buddy":Lsfs2x/client/entities/Buddy;
    .end local v1    # "buddyName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "ec"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 45
    .local v2, "errorCode":S
    const-string/jumbo v6, "ep"

    invoke-interface {v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfStringArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lsfs2x/client/util/SFSErrorCodes;->getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "errorMessage"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v6, "errorCode"

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v6, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v7, "buddyError"

    invoke-direct {v6, v7, v4}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method
