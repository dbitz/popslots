.class public Lsfs2x/client/entities/SFSRoom;
.super Ljava/lang/Object;
.source "SFSRoom.java"

# interfaces
.implements Lsfs2x/client/entities/Room;


# instance fields
.field protected groupId:Ljava/lang/String;

.field protected id:I

.field protected isGame:Z

.field protected isHidden:Z

.field protected isJoined:Z

.field protected isManaged:Z

.field protected isPasswordProtected:Z

.field protected maxSpectators:I

.field protected maxUsers:I

.field protected name:Ljava/lang/String;

.field protected properties:Ljava/util/Map;

.field protected roomManager:Lsfs2x/client/entities/managers/IRoomManager;

.field protected specCount:I

.field protected userCount:I

.field protected userManager:Lsfs2x/client/entities/managers/IUserManager;

.field protected variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/variables/RoomVariable;",
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
    .line 111
    const-string/jumbo v0, "default"

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/SFSRoom;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lsfs2x/client/entities/SFSRoom;->id:I

    .line 125
    iput-object p2, p0, Lsfs2x/client/entities/SFSRoom;->name:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lsfs2x/client/entities/SFSRoom;->groupId:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lsfs2x/client/entities/SFSRoom;->isHidden:Z

    iput-boolean v1, p0, Lsfs2x/client/entities/SFSRoom;->isGame:Z

    iput-boolean v1, p0, Lsfs2x/client/entities/SFSRoom;->isJoined:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isManaged:Z

    .line 133
    iput v1, p0, Lsfs2x/client/entities/SFSRoom;->specCount:I

    iput v1, p0, Lsfs2x/client/entities/SFSRoom;->userCount:I

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSRoom;->properties:Ljava/util/Map;

    .line 137
    new-instance v0, Lsfs2x/client/entities/managers/SFSUserManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsfs2x/client/entities/managers/SFSUserManager;-><init>(Lsfs2x/client/ISmartFox;)V

    iput-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    .line 138
    return-void
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Room;
    .locals 12
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-interface {p0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_3

    move v0, v6

    .line 63
    .local v0, "isMMORoom":Z
    :goto_0
    const/4 v3, 0x0

    .line 65
    .local v3, "newRoom":Lsfs2x/client/entities/Room;
    if-eqz v0, :cond_4

    .line 66
    new-instance v3, Lsfs2x/client/entities/MMORoom;

    .end local v3    # "newRoom":Lsfs2x/client/entities/Room;
    invoke-interface {p0, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v6, v8}, Lsfs2x/client/entities/MMORoom;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .restart local v3    # "newRoom":Lsfs2x/client/entities/Room;
    :goto_1
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setGame(Z)V

    .line 71
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setHidden(Z)V

    .line 72
    const/4 v6, 0x5

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setPasswordProtected(Z)V

    .line 73
    const/4 v6, 0x6

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setUserCount(I)V

    .line 74
    const/4 v6, 0x7

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setMaxUsers(I)V

    .line 77
    const/16 v6, 0x8

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v5

    .line 78
    .local v5, "varsList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface {v5}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/RoomVariable;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v5}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 85
    invoke-interface {v3, v4}, Lsfs2x/client/entities/Room;->setVariables(Ljava/util/List;)V

    .line 88
    .end local v1    # "j":I
    .end local v4    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/RoomVariable;>;"
    :cond_0
    invoke-interface {v3}, Lsfs2x/client/entities/Room;->isGame()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    const/16 v6, 0x9

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setSpectatorCount(I)V

    .line 90
    const/16 v6, 0xa

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getShort(I)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-interface {v3, v6}, Lsfs2x/client/entities/Room;->setMaxSpectators(I)V

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    move-object v2, v3

    .line 96
    check-cast v2, Lsfs2x/client/entities/MMORoom;

    .line 97
    .local v2, "mmoRoom":Lsfs2x/client/entities/MMORoom;
    const/16 v6, 0xb

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v6

    invoke-static {v6}, Lsfs2x/client/entities/data/Vec3D;->fromArray(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v6

    invoke-virtual {v2, v6}, Lsfs2x/client/entities/MMORoom;->setDefaultAOI(Lsfs2x/client/entities/data/Vec3D;)V

    .line 100
    invoke-interface {p0, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 102
    const/16 v6, 0xc

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v6

    invoke-static {v6}, Lsfs2x/client/entities/data/Vec3D;->fromArray(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v6

    invoke-virtual {v2, v6}, Lsfs2x/client/entities/MMORoom;->setLowerMapLimit(Lsfs2x/client/entities/data/Vec3D;)V

    .line 103
    invoke-interface {p0, v11}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v6

    invoke-static {v6}, Lsfs2x/client/entities/data/Vec3D;->fromArray(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v6

    invoke-virtual {v2, v6}, Lsfs2x/client/entities/MMORoom;->setHigherMapLimit(Lsfs2x/client/entities/data/Vec3D;)V

    .line 107
    .end local v2    # "mmoRoom":Lsfs2x/client/entities/MMORoom;
    :cond_2
    return-object v3

    .end local v0    # "isMMORoom":Z
    .end local v3    # "newRoom":Lsfs2x/client/entities/Room;
    .end local v5    # "varsList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_3
    move v0, v7

    .line 62
    goto/16 :goto_0

    .line 68
    .restart local v0    # "isMMORoom":Z
    .restart local v3    # "newRoom":Lsfs2x/client/entities/Room;
    :cond_4
    new-instance v3, Lsfs2x/client/entities/SFSRoom;

    .end local v3    # "newRoom":Lsfs2x/client/entities/Room;
    invoke-interface {p0, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v10}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v6, v8}, Lsfs2x/client/entities/SFSRoom;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "newRoom":Lsfs2x/client/entities/Room;
    goto/16 :goto_1

    .line 82
    .restart local v1    # "j":I
    .restart local v4    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/RoomVariable;>;"
    .restart local v5    # "varsList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_5
    invoke-interface {v5, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    invoke-static {v6}, Lsfs2x/client/entities/variables/SFSRoomVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/RoomVariable;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public addUser(Lsfs2x/client/entities/User;)V
    .locals 1
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 333
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IUserManager;->addUser(Lsfs2x/client/entities/User;)V

    .line 334
    return-void
.end method

.method public containsUser(Lsfs2x/client/entities/User;)Z
    .locals 1
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 347
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IUserManager;->containsUser(Lsfs2x/client/entities/User;)Z

    move-result v0

    return v0
.end method

.method public containsVariable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCapacity()I
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lsfs2x/client/entities/SFSRoom;->maxUsers:I

    iget v1, p0, Lsfs2x/client/entities/SFSRoom;->maxSpectators:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lsfs2x/client/entities/SFSRoom;->id:I

    return v0
.end method

.method public getMaxSpectators()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lsfs2x/client/entities/SFSRoom;->maxSpectators:I

    return v0
.end method

.method public getMaxUsers()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lsfs2x/client/entities/SFSRoom;->maxUsers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "playerList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/User;>;"
    iget-object v2, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IUserManager;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    return-object v0

    .line 377
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/entities/User;

    .line 378
    .local v1, "user":Lsfs2x/client/entities/User;
    invoke-interface {v1, p0}, Lsfs2x/client/entities/User;->isPlayerInRoom(Lsfs2x/client/entities/Room;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    return-object v0
.end method

.method public getSpectatorCount()I
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isGame:Z

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isJoined:Z

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lsfs2x/client/entities/SFSRoom;->getSpectatorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 255
    :cond_1
    iget v0, p0, Lsfs2x/client/entities/SFSRoom;->specCount:I

    goto :goto_0
.end method

.method public getSpectatorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "spectatorList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/User;>;"
    iget-object v2, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IUserManager;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    return-object v0

    .line 392
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/entities/User;

    .line 393
    .local v1, "user":Lsfs2x/client/entities/User;
    invoke-interface {v1, p0}, Lsfs2x/client/entities/User;->isSpectatorInRoom(Lsfs2x/client/entities/Room;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUserById(I)Lsfs2x/client/entities/User;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserByName(Ljava/lang/String;)Lsfs2x/client/entities/User;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IUserManager;->getUserByName(Ljava/lang/String;)Lsfs2x/client/entities/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isJoined:Z

    if-nez v0, :cond_0

    .line 220
    iget v0, p0, Lsfs2x/client/entities/SFSRoom;->userCount:I

    .line 229
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isGame:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lsfs2x/client/entities/SFSRoom;->getPlayerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0}, Lsfs2x/client/entities/managers/IUserManager;->getUserCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0}, Lsfs2x/client/entities/managers/IUserManager;->getUserList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/RoomVariable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/RoomVariable;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isGame()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isGame:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isHidden:Z

    return v0
.end method

.method public isJoined()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isJoined:Z

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isManaged:Z

    return v0
.end method

.method public isPasswordProtected()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSRoom;->isPasswordProtected:Z

    return v0
.end method

.method public merge(Lsfs2x/client/entities/Room;)V
    .locals 5
    .param p1, "anotherRoom"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 497
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    .line 500
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    iget-object v2, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IUserManager;->clearAll()V

    .line 507
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    return-void

    .line 500
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/RoomVariable;

    .line 501
    .local v0, "rv":Lsfs2x/client/entities/variables/RoomVariable;
    iget-object v3, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {v0}, Lsfs2x/client/entities/variables/RoomVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    .end local v0    # "rv":Lsfs2x/client/entities/variables/RoomVariable;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/entities/User;

    .line 508
    .local v1, "user":Lsfs2x/client/entities/User;
    iget-object v3, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v3, v1}, Lsfs2x/client/entities/managers/IUserManager;->addUser(Lsfs2x/client/entities/User;)V

    goto :goto_1
.end method

.method public removeUser(Lsfs2x/client/entities/User;)V
    .locals 1
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 340
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->userManager:Lsfs2x/client/entities/managers/IUserManager;

    invoke-interface {v0, p1}, Lsfs2x/client/entities/managers/IUserManager;->removeUser(Lsfs2x/client/entities/User;)V

    .line 341
    return-void
.end method

.method public setGame(Z)V
    .locals 0
    .param p1, "game"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lsfs2x/client/entities/SFSRoom;->isGame:Z

    .line 285
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lsfs2x/client/entities/SFSRoom;->isHidden:Z

    .line 292
    return-void
.end method

.method public setJoined(Z)V
    .locals 0
    .param p1, "joined"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lsfs2x/client/entities/SFSRoom;->isJoined:Z

    .line 278
    return-void
.end method

.method public setManaged(Z)V
    .locals 0
    .param p1, "managed"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lsfs2x/client/entities/SFSRoom;->isManaged:Z

    .line 299
    return-void
.end method

.method public setMaxSpectators(I)V
    .locals 0
    .param p1, "maxSpectators"    # I

    .prologue
    .line 326
    iput p1, p0, Lsfs2x/client/entities/SFSRoom;->maxSpectators:I

    .line 327
    return-void
.end method

.method public setMaxUsers(I)V
    .locals 0
    .param p1, "maxUsers"    # I

    .prologue
    .line 312
    iput p1, p0, Lsfs2x/client/entities/SFSRoom;->maxUsers:I

    .line 313
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lsfs2x/client/entities/SFSRoom;->name:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setPasswordProtected(Z)V
    .locals 0
    .param p1, "passwordProtected"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lsfs2x/client/entities/SFSRoom;->isPasswordProtected:Z

    .line 201
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iput-object p1, p0, Lsfs2x/client/entities/SFSRoom;->properties:Ljava/util/Map;

    .line 460
    return-void
.end method

.method public setRoomManager(Lsfs2x/client/entities/managers/IRoomManager;)V
    .locals 3
    .param p1, "manager"    # Lsfs2x/client/entities/managers/IRoomManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Room manager already assigned. Room: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iput-object p1, p0, Lsfs2x/client/entities/SFSRoom;->roomManager:Lsfs2x/client/entities/managers/IRoomManager;

    .line 478
    return-void
.end method

.method public setSpectatorCount(I)V
    .locals 0
    .param p1, "spectatorCount"    # I

    .prologue
    .line 319
    iput p1, p0, Lsfs2x/client/entities/SFSRoom;->specCount:I

    .line 320
    return-void
.end method

.method public setUserCount(I)V
    .locals 0
    .param p1, "userCount"    # I

    .prologue
    .line 305
    iput p1, p0, Lsfs2x/client/entities/SFSRoom;->userCount:I

    .line 306
    return-void
.end method

.method public setVariable(Lsfs2x/client/entities/variables/RoomVariable;)V
    .locals 2
    .param p1, "roomVariable"    # Lsfs2x/client/entities/variables/RoomVariable;

    .prologue
    .line 423
    invoke-interface {p1}, Lsfs2x/client/entities/variables/RoomVariable;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/RoomVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/SFSRoom;->variables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/RoomVariable;->getName()Ljava/lang/String;

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
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "roomVariables":Ljava/util/List;, "Ljava/util/List<+Lsfs2x/client/entities/variables/RoomVariable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    return-void

    .line 436
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/RoomVariable;

    .line 437
    .local v0, "roomVar":Lsfs2x/client/entities/variables/RoomVariable;
    invoke-virtual {p0, v0}, Lsfs2x/client/entities/SFSRoom;->setVariable(Lsfs2x/client/entities/variables/RoomVariable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Room: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/entities/SFSRoom;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/entities/SFSRoom;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", GroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/entities/SFSRoom;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
