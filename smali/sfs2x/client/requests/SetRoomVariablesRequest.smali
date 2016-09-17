.class public Lsfs2x/client/requests/SetRoomVariablesRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "SetRoomVariablesRequest.java"


# static fields
.field public static final KEY_VAR_LIST:Ljava/lang/String; = "vl"

.field public static final KEY_VAR_ROOM:Ljava/lang/String; = "r"


# instance fields
.field private room:Lsfs2x/client/entities/Room;

.field private roomVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "roomVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/RoomVariable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/requests/SetRoomVariablesRequest;-><init>(Ljava/util/List;Lsfs2x/client/entities/Room;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p2, "room"    # Lsfs2x/client/entities/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;",
            "Lsfs2x/client/entities/Room;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "roomVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/RoomVariable;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 81
    iput-object p1, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->roomVariables:Ljava/util/List;

    .line 82
    iput-object p2, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->room:Lsfs2x/client/entities/Room;

    .line 83
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 5
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 123
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v1

    .line 125
    .local v1, "varList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v2, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->roomVariables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    iget-object v2, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v2, :cond_0

    .line 130
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v2

    iput-object v2, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->room:Lsfs2x/client/entities/Room;

    .line 133
    :cond_0
    iget-object v2, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "vl"

    invoke-interface {v2, v3, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 134
    iget-object v2, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "r"

    iget-object v4, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v4}, Lsfs2x/client/entities/Room;->getId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 135
    return-void

    .line 125
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/RoomVariable;

    .line 126
    .local v0, "rv":Lsfs2x/client/entities/variables/RoomVariable;
    invoke-interface {v0}, Lsfs2x/client/entities/variables/RoomVariable;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    goto :goto_0
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
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->room:Lsfs2x/client/entities/Room;

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v2

    invoke-interface {v1, v2}, Lsfs2x/client/entities/Room;->containsUser(Lsfs2x/client/entities/User;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const-string/jumbo v1, "You are not joined in the target room"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->roomVariables:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsfs2x/client/requests/SetRoomVariablesRequest;->roomVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    :cond_1
    const-string/jumbo v1, "No variables were specified"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "SetRoomVariables request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 105
    :cond_3
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    const-string/jumbo v1, "You are not joined in any rooms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method
