.class public Lsfs2x/client/requests/game/SFSGameSettings;
.super Lsfs2x/client/requests/RoomSettings;
.source "SFSGameSettings.java"


# instance fields
.field private invitationExpiryTime:I

.field private invitationParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field private invitedPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private isPublic:Z

.field private leaveJoinedLastRoom:Z

.field private minPlayersToStartGame:I

.field private notifyGameStarted:Z

.field private playerMatchExpression:Lsfs2x/client/entities/match/MatchExpression;

.field private searchableRooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spectatorMatchExpression:Lsfs2x/client/entities/match/MatchExpression;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0, p1}, Lsfs2x/client/requests/RoomSettings;-><init>(Ljava/lang/String;)V

    .line 45
    iput-boolean v1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->isPublic:Z

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->minPlayersToStartGame:I

    .line 47
    const/16 v0, 0xf

    iput v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitationExpiryTime:I

    .line 48
    iput-boolean v1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->leaveJoinedLastRoom:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitedPlayers:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->searchableRooms:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public getInvitationExpiryTime()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitationExpiryTime:I

    return v0
.end method

.method public getInvitationParams()Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitationParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    return-object v0
.end method

.method public getInvitedPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitedPlayers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeaveLastJoinedRoom()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->leaveJoinedLastRoom:Z

    return v0
.end method

.method public getMinPlayersToStartGame()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->minPlayersToStartGame:I

    return v0
.end method

.method public getNotifyGameStarted()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->notifyGameStarted:Z

    return v0
.end method

.method public getPlayerMatchExpression()Lsfs2x/client/entities/match/MatchExpression;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->playerMatchExpression:Lsfs2x/client/entities/match/MatchExpression;

    return-object v0
.end method

.method public getSearchableRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->searchableRooms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpectatorMatchExpression()Lsfs2x/client/entities/match/MatchExpression;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->spectatorMatchExpression:Lsfs2x/client/entities/match/MatchExpression;

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->isPublic:Z

    return v0
.end method

.method public setInvitationExpiryTime(I)V
    .locals 0
    .param p1, "invitationExpiryTime"    # I

    .prologue
    .line 240
    iput p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitationExpiryTime:I

    .line 241
    return-void
.end method

.method public setInvitationParams(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 0
    .param p1, "invitationParams"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 275
    iput-object p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitationParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 276
    return-void
.end method

.method public setInvitedPlayers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "invitedPlayers":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->invitedPlayers:Ljava/util/List;

    .line 227
    return-void
.end method

.method public setLeaveLastJoinedRoom(Z)V
    .locals 0
    .param p1, "leaveLastJoinedRoom"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->leaveJoinedLastRoom:Z

    .line 248
    return-void
.end method

.method public setMinPlayersToStartGame(I)V
    .locals 0
    .param p1, "minPlayersToStartGame"    # I

    .prologue
    .line 219
    iput p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->minPlayersToStartGame:I

    .line 220
    return-void
.end method

.method public setNotifyGameStarted(Z)V
    .locals 0
    .param p1, "notifyGameStarted"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->notifyGameStarted:Z

    .line 255
    return-void
.end method

.method public setPlayerMatchExpression(Lsfs2x/client/entities/match/MatchExpression;)V
    .locals 0
    .param p1, "playerMatchExpression"    # Lsfs2x/client/entities/match/MatchExpression;

    .prologue
    .line 261
    iput-object p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->playerMatchExpression:Lsfs2x/client/entities/match/MatchExpression;

    .line 262
    return-void
.end method

.method public setPublic(Z)V
    .locals 0
    .param p1, "isPublic"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->isPublic:Z

    .line 213
    return-void
.end method

.method public setSearchableRooms(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "searchableRooms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsfs2x/client/requests/game/SFSGameSettings;->searchableRooms:Ljava/util/List;

    .line 234
    return-void
.end method

.method public setSpectatorMatchExpression(Lsfs2x/client/entities/match/MatchExpression;)V
    .locals 0
    .param p1, "spectatorMatchExpression"    # Lsfs2x/client/entities/match/MatchExpression;

    .prologue
    .line 268
    iput-object p1, p0, Lsfs2x/client/requests/game/SFSGameSettings;->spectatorMatchExpression:Lsfs2x/client/entities/match/MatchExpression;

    .line 269
    return-void
.end method
