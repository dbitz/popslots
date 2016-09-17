.class public Lsfs2x/client/controllers/SystemController;
.super Lsfs2x/client/bitswarm/BaseController;
.source "SystemController.java"


# static fields
.field private static final RES_HANDLERS_PACKAGE:Ljava/lang/String; = "sfs2x.client.controllers.system."


# instance fields
.field private bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private responseHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/controllers/IResHandler;",
            ">;"
        }
    .end annotation
.end field

.field private responseHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sfs:Lsfs2x/client/ISmartFox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lsfs2x/client/bitswarm/BaseController;-><init>()V

    .line 34
    invoke-direct {p0}, Lsfs2x/client/controllers/SystemController;->initRequestHandlers()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 39
    invoke-direct {p0}, Lsfs2x/client/controllers/SystemController;-><init>()V

    .line 40
    iput-object p1, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    .line 41
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 1
    .param p1, "bitSwarm"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 45
    invoke-direct {p0}, Lsfs2x/client/controllers/SystemController;-><init>()V

    .line 46
    iput-object p1, p0, Lsfs2x/client/controllers/SystemController;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 47
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSfs()Lsfs2x/client/SmartFox;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    .line 48
    return-void
.end method

.method private getEvtName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private initRequestHandlers()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlerCache:Ljava/util/Map;

    .line 55
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResHandshake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResLogin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResLogout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResJoinRoom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResCreateRoom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResGenericMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResChangeRoomName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResChangeRoomPassword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResChangeRoomCapacity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSetRoomVariables"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSetUserVariables"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResCallExtension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSubscribeRoomGroup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResUnsubscribeRoomGroup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSpectatorToPlayer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResPlayerToSpectator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResInitBuddyList"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResAddBuddy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResRemoveBuddy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResBlockBuddy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResGoOnline"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSetBuddyVariables"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResFindRooms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResFindUsers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResInviteUsers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResInvitationReply"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResQuickJoinGame"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResPingPong"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSetUserPosition"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResUserEnterRoom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResUserCountChange"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResUserLost"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResRoomLost"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResUserExitRoom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResClientDisconnect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResReconnectionFailure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    const/16 v1, 0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ResSetMMOItemVariable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public getOrCreateUser(Lcom/smartfoxserver/v2/entities/data/ISFSArray;ZLsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;
    .locals 5
    .param p1, "userObj"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .param p2, "addToGlobalManager"    # Z
    .param p3, "room"    # Lsfs2x/client/entities/Room;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 172
    .local v1, "uId":I
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v3

    .line 175
    .local v3, "user":Lsfs2x/client/entities/User;
    if-nez v3, :cond_2

    .line 176
    invoke-static {p1, p3}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Lsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;

    move-result-object v3

    .line 177
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v4

    invoke-interface {v3, v4}, Lsfs2x/client/entities/User;->setUserManager(Lsfs2x/client/entities/managers/IUserManager;)V

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    .line 192
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lsfs2x/client/entities/managers/IUserManager;->addUser(Lsfs2x/client/entities/User;)V

    .line 195
    :cond_1
    return-object v3

    .line 180
    :cond_2
    if-eqz p3, :cond_0

    .line 182
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-interface {v3, v4, p3}, Lsfs2x/client/entities/User;->setPlayerId(ILsfs2x/client/entities/Room;)V

    .line 184
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    .line 185
    .local v2, "uVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 186
    invoke-interface {v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    invoke-static {v4}, Lsfs2x/client/entities/variables/SFSUserVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/UserVariable;

    move-result-object v4

    invoke-interface {v3, v4}, Lsfs2x/client/entities/User;->setVariable(Lsfs2x/client/entities/variables/UserVariable;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Lsfs2x/client/bitswarm/IMessage;)V
    .locals 9
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;

    .prologue
    .line 100
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getId()I

    move-result v6

    invoke-direct {p0, v6}, Lsfs2x/client/controllers/SystemController;->getEvtName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->responseHandlers:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "resHandlerName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 113
    :try_start_0
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->responseHandlerCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->responseHandlerCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsfs2x/client/controllers/IResHandler;

    .line 124
    .local v2, "resHandler":Lsfs2x/client/controllers/IResHandler;
    :goto_0
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v2, v4, p0, p1}, Lsfs2x/client/controllers/IResHandler;->handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V

    .line 148
    .end local v2    # "resHandler":Lsfs2x/client/controllers/IResHandler;
    :goto_1
    return-void

    .line 118
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sfs2x.client.controllers.system."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 119
    .local v1, "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsfs2x/client/controllers/IResHandler;

    .line 120
    .restart local v2    # "resHandler":Lsfs2x/client/controllers/IResHandler;
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->responseHandlerCache:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 126
    .end local v1    # "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "resHandler":Lsfs2x/client/controllers/IResHandler;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->log:Lorg/slf4j/Logger;

    .line 132
    const-string/jumbo v5, "Cannot instantiate handler for eventId: %s, %s, Class: %s.%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 133
    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 134
    aput-object v3, v6, v7

    const/4 v7, 0x2

    .line 135
    const-string/jumbo v8, "sfs2x.client.controllers.system."

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 136
    aput-object v3, v6, v7

    .line 130
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error in handling event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unknown message id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public populateRoomList(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
    .locals 5
    .param p1, "roomList"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v4, p0, Lsfs2x/client/controllers/SystemController;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v2

    .line 162
    .local v2, "roomManager":Lsfs2x/client/entities/managers/IRoomManager;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 167
    return-void

    .line 163
    :cond_0
    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    .line 164
    .local v3, "roomObj":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-static {v3}, Lsfs2x/client/entities/SFSRoom;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Room;

    move-result-object v1

    .line 165
    .local v1, "newRoom":Lsfs2x/client/entities/Room;
    invoke-interface {v2, v1}, Lsfs2x/client/entities/managers/IRoomManager;->replaceRoom(Lsfs2x/client/entities/Room;)Lsfs2x/client/entities/Room;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
