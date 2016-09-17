.class public Lsfs2x/client/requests/game/CreateSFSGameRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "CreateSFSGameRequest.java"


# static fields
.field public static final KEY_INVITATION_EXPIRY:Ljava/lang/String; = "gie"

.field public static final KEY_INVITATION_PARAMS:Ljava/lang/String; = "ip"

.field public static final KEY_INVITED_PLAYERS:Ljava/lang/String; = "ginp"

.field public static final KEY_IS_PUBLIC:Ljava/lang/String; = "gip"

.field public static final KEY_LEAVE_ROOM:Ljava/lang/String; = "glr"

.field public static final KEY_MIN_PLAYERS:Ljava/lang/String; = "gmp"

.field public static final KEY_NOTIFY_GAME_STARTED:Ljava/lang/String; = "gns"

.field public static final KEY_PLAYER_MATCH_EXP:Ljava/lang/String; = "gpme"

.field public static final KEY_SEARCHABLE_ROOMS:Ljava/lang/String; = "gsr"

.field public static final KEY_SPECTATOR_MATCH_EXP:Ljava/lang/String; = "gsme"


# instance fields
.field private createRoomRequest:Lsfs2x/client/requests/CreateRoomRequest;

.field private settings:Lsfs2x/client/requests/game/SFSGameSettings;


# direct methods
.method public constructor <init>(Lsfs2x/client/requests/game/SFSGameSettings;)V
    .locals 3
    .param p1, "settings"    # Lsfs2x/client/requests/game/SFSGameSettings;

    .prologue
    .line 135
    const/16 v0, 0x12e

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 136
    iput-object p1, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    .line 137
    new-instance v0, Lsfs2x/client/requests/CreateRoomRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lsfs2x/client/requests/CreateRoomRequest;-><init>(Lsfs2x/client/requests/RoomSettings;ZLsfs2x/client/entities/Room;)V

    iput-object v0, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->createRoomRequest:Lsfs2x/client/requests/CreateRoomRequest;

    .line 138
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 7
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 177
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->createRoomRequest:Lsfs2x/client/requests/CreateRoomRequest;

    invoke-virtual {v4, p1}, Lsfs2x/client/requests/CreateRoomRequest;->execute(Lsfs2x/client/ISmartFox;)V

    .line 178
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->createRoomRequest:Lsfs2x/client/requests/CreateRoomRequest;

    invoke-virtual {v4}, Lsfs2x/client/requests/CreateRoomRequest;->getMessage()Lsfs2x/client/bitswarm/IMessage;

    move-result-object v4

    invoke-interface {v4}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    iput-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 181
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gip"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->isPublic()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 182
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gmp"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getMinPlayersToStartGame()I

    move-result v6

    int-to-short v6, v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 183
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gie"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitationExpiryTime()I

    move-result v6

    int-to-short v6, v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 184
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "glr"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getLeaveLastJoinedRoom()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 185
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gns"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getNotifyGameStarted()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 187
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v4}, Lsfs2x/client/requests/game/SFSGameSettings;->getPlayerMatchExpression()Lsfs2x/client/entities/match/MatchExpression;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gpme"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getPlayerMatchExpression()Lsfs2x/client/entities/match/MatchExpression;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/entities/match/MatchExpression;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 191
    :cond_0
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v4}, Lsfs2x/client/requests/game/SFSGameSettings;->getSpectatorMatchExpression()Lsfs2x/client/entities/match/MatchExpression;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 192
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gsme"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getSpectatorMatchExpression()Lsfs2x/client/entities/match/MatchExpression;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/entities/match/MatchExpression;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 196
    :cond_1
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v4}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitedPlayers()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "invitedPlayers":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v0, :cond_3

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v2, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 208
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "ginp"

    invoke-interface {v4, v5, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 212
    .end local v2    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v4}, Lsfs2x/client/requests/game/SFSGameSettings;->getSearchableRooms()Ljava/util/List;

    move-result-object v3

    .line 213
    .local v3, "searchableRooms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 214
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "gsr"

    invoke-interface {v4, v5, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfStringArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 218
    :cond_4
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v4}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitationParams()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 219
    iget-object v4, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v5, "ip"

    iget-object v6, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitationParams()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 221
    :cond_5
    return-void

    .line 200
    .end local v3    # "searchableRooms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 201
    .local v1, "player":Ljava/lang/Object;
    instance-of v5, v1, Lsfs2x/client/entities/User;

    if-eqz v5, :cond_7

    .line 202
    check-cast v1, Lsfs2x/client/entities/User;

    .end local v1    # "player":Ljava/lang/Object;
    invoke-interface {v1}, Lsfs2x/client/entities/User;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .restart local v1    # "player":Ljava/lang/Object;
    :cond_7
    instance-of v5, v1, Lsfs2x/client/entities/Buddy;

    if-eqz v5, :cond_2

    .line 205
    check-cast v1, Lsfs2x/client/entities/Buddy;

    .end local v1    # "player":Ljava/lang/Object;
    invoke-interface {v1}, Lsfs2x/client/entities/Buddy;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 4
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->createRoomRequest:Lsfs2x/client/requests/CreateRoomRequest;

    invoke-virtual {v2, p1}, Lsfs2x/client/requests/CreateRoomRequest;->validate(Lsfs2x/client/ISmartFox;)V
    :try_end_0
    .catch Lsfs2x/client/exceptions/SFSValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget-object v2, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/game/SFSGameSettings;->getMinPlayersToStartGame()I

    move-result v2

    iget-object v3, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v3}, Lsfs2x/client/requests/game/SFSGameSettings;->getMaxUsers()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 156
    const-string/jumbo v2, "minPlayersToStartGame cannot be greater than maxUsers"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    iget-object v2, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitationExpiryTime()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitationExpiryTime()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_2

    .line 160
    :cond_1
    const-string/jumbo v2, "Expiry time value is out of range (5-300)"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    iget-object v2, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitedPlayers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsfs2x/client/requests/game/CreateSFSGameRequest;->settings:Lsfs2x/client/requests/game/SFSGameSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/game/SFSGameSettings;->getInvitedPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_3

    .line 164
    const-string/jumbo v2, "Cannot invite more than 8 players from client side"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    new-instance v2, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v3, "CreateSFSGameRoom request error"

    invoke-direct {v2, v3, v1}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v2

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "err":Lsfs2x/client/exceptions/SFSValidationException;
    invoke-virtual {v0}, Lsfs2x/client/exceptions/SFSValidationException;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 170
    .end local v0    # "err":Lsfs2x/client/exceptions/SFSValidationException;
    :cond_4
    return-void
.end method
