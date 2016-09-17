.class public Lsfs2x/client/entities/SFSUser;
.super Ljava/lang/Object;
.source "SFSUser.java"

# interfaces
.implements Lsfs2x/client/entities/User;


# instance fields
.field protected aoiEntryPoint:Lsfs2x/client/entities/data/Vec3D;

.field protected id:I

.field protected isItMe:Z

.field protected isModerator:Z

.field protected name:Ljava/lang/String;

.field protected playerIdByRoomId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected privilegeId:I

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected userManager:Lsfs2x/client/entities/managers/IUserManager;

.field protected variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/variables/UserVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/SFSUser;-><init>(ILjava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isItMe"    # Z

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lsfs2x/client/entities/SFSUser;->id:I

    .line 29
    iput v1, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    .line 84
    iput p1, p0, Lsfs2x/client/entities/SFSUser;->id:I

    .line 85
    iput-object p2, p0, Lsfs2x/client/entities/SFSUser;->name:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lsfs2x/client/entities/SFSUser;->isItMe:Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSUser;->properties:Ljava/util/Map;

    .line 89
    iput-boolean v1, p0, Lsfs2x/client/entities/SFSUser;->isModerator:Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/User;
    .locals 1
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Lsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;

    move-result-object v0

    return-object v0
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Lsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;
    .locals 5
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 44
    new-instance v1, Lsfs2x/client/entities/SFSUser;

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lsfs2x/client/entities/SFSUser;-><init>(ILjava/lang/String;)V

    .line 47
    .local v1, "newUser":Lsfs2x/client/entities/User;
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-interface {v1, v3}, Lsfs2x/client/entities/User;->setPrivilegeId(I)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-interface {v1, v3, p1}, Lsfs2x/client/entities/User;->setPlayerId(ILsfs2x/client/entities/Room;)V

    .line 55
    :cond_0
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    .line 56
    .local v2, "uVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 60
    return-object v1

    .line 57
    :cond_1
    invoke-interface {v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    invoke-static {v3}, Lsfs2x/client/entities/variables/SFSUserVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/UserVariable;

    move-result-object v3

    invoke-interface {v1, v3}, Lsfs2x/client/entities/User;->setVariable(Lsfs2x/client/entities/variables/UserVariable;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public containsVariable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAOIEntryPoint()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->aoiEntryPoint:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lsfs2x/client/entities/SFSUser;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0}, Lsfs2x/client/entities/managers/IUserManager;->getSmartFox()Lsfs2x/client/ISmartFox;

    move-result-object v0

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsfs2x/client/entities/SFSUser;->getPlayerId(Lsfs2x/client/entities/Room;)I

    move-result v0

    return v0
.end method

.method public getPlayerId(Lsfs2x/client/entities/Room;)I
    .locals 3
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "pId":I
    iget-object v1, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public getPrivilegeId()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    return v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getUserManager()Lsfs2x/client/entities/managers/IUserManager;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/UserVariable;
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/UserVariable;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/UserVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItMe()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSUser;->isItMe:Z

    return v0
.end method

.method public isJoinedInRoom(Lsfs2x/client/entities/Room;)Z
    .locals 1
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 230
    invoke-interface {p1, p0}, Lsfs2x/client/entities/Room;->containsUser(Lsfs2x/client/entities/User;)Z

    move-result v0

    return v0
.end method

.method public isModerator()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayer()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lsfs2x/client/entities/SFSUser;->getPlayerId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayerInRoom(Lsfs2x/client/entities/Room;)Z
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 216
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpectator()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lsfs2x/client/entities/SFSUser;->isPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSpectatorInRoom(Lsfs2x/client/entities/Room;)Z
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 223
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandardUser()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePlayerId(Lsfs2x/client/entities/Room;)V
    .locals 2
    .param p1, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 153
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setAOIEntryPoint(Lsfs2x/client/entities/data/Vec3D;)V
    .locals 0
    .param p1, "aoiEntryPoint"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 311
    iput-object p1, p0, Lsfs2x/client/entities/SFSUser;->aoiEntryPoint:Lsfs2x/client/entities/data/Vec3D;

    .line 312
    return-void
.end method

.method public setPlayerId(ILsfs2x/client/entities/Room;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 146
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->playerIdByRoomId:Ljava/util/Map;

    invoke-interface {p2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public setPrivilegeId(I)V
    .locals 0
    .param p1, "privilegeId"    # I

    .prologue
    .line 167
    iput p1, p0, Lsfs2x/client/entities/SFSUser;->privilegeId:I

    .line 168
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lsfs2x/client/entities/SFSUser;->properties:Ljava/util/Map;

    .line 300
    return-void
.end method

.method public setUserManager(Lsfs2x/client/entities/managers/IUserManager;)V
    .locals 0
    .param p1, "userManager"    # Lsfs2x/client/entities/managers/IUserManager;

    .prologue
    .line 181
    iput-object p1, p0, Lsfs2x/client/entities/SFSUser;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    .line 182
    return-void
.end method

.method public setVariable(Lsfs2x/client/entities/variables/UserVariable;)V
    .locals 2
    .param p1, "userVariable"    # Lsfs2x/client/entities/variables/UserVariable;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 263
    invoke-interface {p1}, Lsfs2x/client/entities/variables/UserVariable;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/UserVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lsfs2x/client/entities/SFSUser;->variables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/UserVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setVariables(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lsfs2x/client/entities/variables/UserVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "userVariables":Ljava/util/List;, "Ljava/util/List<+Lsfs2x/client/entities/variables/UserVariable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    return-void

    .line 276
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/UserVariable;

    .line 277
    .local v0, "userVar":Lsfs2x/client/entities/variables/UserVariable;
    invoke-virtual {p0, v0}, Lsfs2x/client/entities/SFSUser;->setVariable(Lsfs2x/client/entities/variables/UserVariable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[User: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/entities/SFSUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/entities/SFSUser;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isMe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lsfs2x/client/entities/SFSUser;->isItMe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
