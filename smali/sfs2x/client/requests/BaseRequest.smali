.class public abstract Lsfs2x/client/requests/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lsfs2x/client/requests/IRequest;


# static fields
.field public static final AddBuddy:I = 0xc9

.field public static final AdminMessage:I = 0x17

.field public static final AutoJoin:I = 0x5

.field public static final BanUser:I = 0x19

.field public static final BlockBuddy:I = 0xca

.field public static final CallExtension:I = 0xd

.field public static final ChangeRoomCapacity:I = 0x13

.field public static final ChangeRoomName:I = 0x8

.field public static final ChangeRoomPassword:I = 0x9

.field public static final CreateRoom:I = 0x6

.field public static final CreateSFSGame:I = 0x12e

.field public static final FindRooms:I = 0x1b

.field public static final FindUsers:I = 0x1c

.field public static final GenericMessage:I = 0x7

.field public static final GetRoomList:I = 0x3

.field public static final GoOnline:I = 0xcd

.field public static final Handshake:I = 0x0

.field public static final InitBuddyList:I = 0xc8

.field public static final InvitationReply:I = 0x12d

.field public static final InviteUser:I = 0x12c

.field public static final JoinRoom:I = 0x4

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "ec"

.field public static final KEY_ERROR_PARAMS:Ljava/lang/String; = "ep"

.field public static final KickUser:I = 0x18

.field public static final LeaveRoom:I = 0xe

.field public static final Login:I = 0x1

.field public static final Logout:I = 0x2

.field public static final ManualDisconnection:I = 0x1a

.field public static final ModeratorMessage:I = 0x16

.field public static final ObjectMessage:I = 0xa

.field public static final PingPong:I = 0x1d

.field public static final PlayerToSpectator:I = 0x12

.field public static final PrivateMessage:I = 0x15

.field public static final PublicMessage:I = 0x14

.field public static final QuickJoinGame:I = 0x12f

.field public static final RemoveBuddy:I = 0xcb

.field public static final SetBuddyVariables:I = 0xcc

.field public static final SetRoomVariables:I = 0xb

.field public static final SetUserPosition:I = 0x1e

.field public static final SetUserVariables:I = 0xc

.field public static final SpectatorToPlayer:I = 0x11

.field public static final SubscribeRoomGroup:I = 0xf

.field public static final UnsubscribeRoomGroup:I = 0x10


# instance fields
.field private id:I

.field private isEncrypted:Z

.field protected sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field protected targetController:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/BaseRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 253
    iput v1, p0, Lsfs2x/client/requests/BaseRequest;->targetController:I

    .line 254
    iput-boolean v1, p0, Lsfs2x/client/requests/BaseRequest;->isEncrypted:Z

    .line 255
    iput p1, p0, Lsfs2x/client/requests/BaseRequest;->id:I

    .line 256
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lsfs2x/client/requests/BaseRequest;->id:I

    return v0
.end method

.method public getMessage()Lsfs2x/client/bitswarm/IMessage;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Lsfs2x/client/bitswarm/Message;

    invoke-direct {v0}, Lsfs2x/client/bitswarm/Message;-><init>()V

    .line 268
    .local v0, "message":Lsfs2x/client/bitswarm/IMessage;
    iget v1, p0, Lsfs2x/client/requests/BaseRequest;->id:I

    invoke-interface {v0, v1}, Lsfs2x/client/bitswarm/IMessage;->setId(I)V

    .line 269
    iget-boolean v1, p0, Lsfs2x/client/requests/BaseRequest;->isEncrypted:Z

    invoke-interface {v0, v1}, Lsfs2x/client/bitswarm/IMessage;->setEncrypted(Z)V

    .line 270
    iget v1, p0, Lsfs2x/client/requests/BaseRequest;->targetController:I

    invoke-interface {v0, v1}, Lsfs2x/client/bitswarm/IMessage;->setTargetController(I)V

    .line 271
    iget-object v1, p0, Lsfs2x/client/requests/BaseRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1}, Lsfs2x/client/bitswarm/IMessage;->setContent(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 278
    instance-of v1, p0, Lsfs2x/client/requests/ExtensionRequest;

    if-eqz v1, :cond_0

    .line 279
    check-cast p0, Lsfs2x/client/requests/ExtensionRequest;

    .end local p0    # "this":Lsfs2x/client/requests/BaseRequest;
    invoke-virtual {p0}, Lsfs2x/client/requests/ExtensionRequest;->getUseUDP()Z

    move-result v1

    invoke-interface {v0, v1}, Lsfs2x/client/bitswarm/IMessage;->setUDP(Z)V

    .line 281
    :cond_0
    return-object v0
.end method

.method public getTargetController()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lsfs2x/client/requests/BaseRequest;->targetController:I

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lsfs2x/client/requests/BaseRequest;->isEncrypted:Z

    return v0
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "encrypted"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lsfs2x/client/requests/BaseRequest;->isEncrypted:Z

    .line 298
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 263
    iput p1, p0, Lsfs2x/client/requests/BaseRequest;->id:I

    .line 264
    return-void
.end method

.method public setTargetController(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    .line 289
    iput p1, p0, Lsfs2x/client/requests/BaseRequest;->targetController:I

    .line 290
    return-void
.end method
