.class public Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "ChangeRoomPasswordStateRequest.java"


# static fields
.field public static final KEY_PASS:Ljava/lang/String; = "p"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"


# instance fields
.field private newPass:Ljava/lang/String;

.field private room:Lsfs2x/client/entities/Room;


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/Room;Ljava/lang/String;)V
    .locals 1
    .param p1, "room"    # Lsfs2x/client/entities/Room;
    .param p2, "newPass"    # Ljava/lang/String;

    .prologue
    .line 71
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 73
    iput-object p1, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->room:Lsfs2x/client/entities/Room;

    .line 74
    iput-object p2, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->newPass:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 101
    iget-object v0, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget-object v2, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->newPass:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
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
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v1, "Provided room is null"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget-object v1, p0, Lsfs2x/client/requests/ChangeRoomPasswordStateRequest;->newPass:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 89
    const-string/jumbo v1, "Invalid new room password. It must be a non-null string."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "ChangePassState request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 95
    :cond_2
    return-void
.end method
