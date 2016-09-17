.class public Lsfs2x/client/controllers/ExtensionController;
.super Lsfs2x/client/bitswarm/BaseController;
.source "ExtensionController.java"


# static fields
.field public static final KEY_CMD:Ljava/lang/String; = "c"

.field public static final KEY_PARAMS:Ljava/lang/String; = "p"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"


# instance fields
.field private bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private sfs:Lsfs2x/client/ISmartFox;


# direct methods
.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 25
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BaseController;-><init>()V

    .line 27
    iput-object p1, p0, Lsfs2x/client/controllers/ExtensionController;->sfs:Lsfs2x/client/ISmartFox;

    .line 28
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 1
    .param p1, "bitSwarm"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 30
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BaseController;-><init>()V

    .line 32
    iput-object p1, p0, Lsfs2x/client/controllers/ExtensionController;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 33
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSfs()Lsfs2x/client/SmartFox;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/controllers/ExtensionController;->sfs:Lsfs2x/client/ISmartFox;

    .line 34
    return-void
.end method


# virtual methods
.method public handleMessage(Lsfs2x/client/bitswarm/IMessage;)V
    .locals 6
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;

    .prologue
    .line 38
    iget-object v2, p0, Lsfs2x/client/controllers/ExtensionController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v2}, Lsfs2x/client/ISmartFox;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lsfs2x/client/controllers/ExtensionController;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v1

    .line 43
    .local v1, "obj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "c"

    invoke-interface {v1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v2, "params"

    const-string/jumbo v3, "p"

    invoke-interface {v1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v2, "r"

    invoke-interface {v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string/jumbo v2, "sourceRoom"

    const-string/jumbo v3, "r"

    invoke-interface {v1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->isUDP()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string/jumbo v2, "packetId"

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getPacketId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_2
    iget-object v2, p0, Lsfs2x/client/controllers/ExtensionController;->sfs:Lsfs2x/client/ISmartFox;

    new-instance v3, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v4, "extensionResponse"

    invoke-direct {v3, v4, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 56
    return-void
.end method
