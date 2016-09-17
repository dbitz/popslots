.class public Lsfs2x/client/requests/ChangeRoomCapacityRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "ChangeRoomCapacityRequest.java"


# static fields
.field public static final KEY_ROOM:Ljava/lang/String; = "r"

.field public static final KEY_SPEC_SIZE:Ljava/lang/String; = "s"

.field public static final KEY_USER_SIZE:Ljava/lang/String; = "u"


# instance fields
.field private newMaxSpect:I

.field private newMaxUsers:I

.field private room:Lsfs2x/client/entities/Room;


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/Room;II)V
    .locals 1
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "newMaxUsers"    # I
    .param p3, "newMaxSpect"    # I

    .prologue
    .line 81
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 83
    iput-object p1, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->room:Lsfs2x/client/entities/Room;

    .line 84
    iput p2, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->newMaxUsers:I

    .line 85
    iput p3, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->newMaxSpect:I

    .line 86
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 108
    iget-object v0, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget-object v2, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "u"

    iget v2, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->newMaxUsers:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "s"

    iget v2, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->newMaxSpect:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 111
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
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/ChangeRoomCapacityRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "Provided room is null"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "ChangeRoomCapacity request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 102
    :cond_1
    return-void
.end method
