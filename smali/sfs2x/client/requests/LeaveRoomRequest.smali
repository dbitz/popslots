.class public Lsfs2x/client/requests/LeaveRoomRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "LeaveRoomRequest.java"


# static fields
.field public static final KEY_ROOM_ID:Ljava/lang/String; = "r"


# instance fields
.field private room:Lsfs2x/client/entities/Room;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsfs2x/client/requests/LeaveRoomRequest;-><init>(Lsfs2x/client/entities/Room;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "theRoom"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 58
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 59
    iput-object p1, p0, Lsfs2x/client/requests/LeaveRoomRequest;->room:Lsfs2x/client/entities/Room;

    .line 60
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 89
    iget-object v0, p0, Lsfs2x/client/requests/LeaveRoomRequest;->room:Lsfs2x/client/entities/Room;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lsfs2x/client/requests/LeaveRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget-object v2, p0, Lsfs2x/client/requests/LeaveRoomRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 92
    :cond_0
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 77
    const-string/jumbo v1, "You are not joined in any rooms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "LeaveRoom request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 83
    :cond_1
    return-void
.end method
