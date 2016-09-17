.class public Lsfs2x/client/requests/PlayerToSpectatorRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "PlayerToSpectatorRequest.java"


# static fields
.field public static final KEY_ROOM_ID:Ljava/lang/String; = "r"

.field public static final KEY_USER_ID:Ljava/lang/String; = "u"


# instance fields
.field private room:Lsfs2x/client/entities/Room;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsfs2x/client/requests/PlayerToSpectatorRequest;-><init>(Lsfs2x/client/entities/Room;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "targetRoom"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 65
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 66
    iput-object p1, p0, Lsfs2x/client/requests/PlayerToSpectatorRequest;->room:Lsfs2x/client/entities/Room;

    .line 67
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 97
    iget-object v0, p0, Lsfs2x/client/requests/PlayerToSpectatorRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/PlayerToSpectatorRequest;->room:Lsfs2x/client/entities/Room;

    .line 101
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/PlayerToSpectatorRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget-object v2, p0, Lsfs2x/client/requests/PlayerToSpectatorRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 84
    const-string/jumbo v1, "You are not joined in any rooms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "LeaveRoom request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 91
    :cond_1
    return-void
.end method
