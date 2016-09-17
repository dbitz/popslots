.class public Lsfs2x/client/controllers/system/ResHandshake;
.super Ljava/lang/Object;
.source "ResHandshake.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 4
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v1, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "message"

    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v2, "handshake"

    invoke-direct {v0, v2, v1}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .local v0, "evt":Lsfs2x/client/core/BaseEvent;
    invoke-interface {p1, v0}, Lsfs2x/client/ISmartFox;->handleHandShake(Lsfs2x/client/core/BaseEvent;)V

    .line 23
    invoke-interface {p1, v0}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 24
    return-void
.end method
