.class public Lsfs2x/client/requests/CreateRoomRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "CreateRoomRequest.java"


# static fields
.field public static final KEY_AUTOJOIN:Ljava/lang/String; = "aj"

.field public static final KEY_EVENTS:Ljava/lang/String; = "ev"

.field public static final KEY_EXTCLASS:Ljava/lang/String; = "xc"

.field public static final KEY_EXTID:Ljava/lang/String; = "xn"

.field public static final KEY_EXTPROP:Ljava/lang/String; = "xp"

.field public static final KEY_GROUP_ID:Ljava/lang/String; = "g"

.field public static final KEY_ISGAME:Ljava/lang/String; = "ig"

.field public static final KEY_MAXSPECTATORS:Ljava/lang/String; = "ms"

.field public static final KEY_MAXUSERS:Ljava/lang/String; = "mu"

.field public static final KEY_MAXVARS:Ljava/lang/String; = "mv"

.field public static final KEY_MMO_DEFAULT_AOI:Ljava/lang/String; = "maoi"

.field public static final KEY_MMO_MAP_HIGH_LIMIT:Ljava/lang/String; = "mlhm"

.field public static final KEY_MMO_MAP_LOW_LIMIT:Ljava/lang/String; = "mllm"

.field public static final KEY_MMO_PROXIMITY_UPDATE_MILLIS:Ljava/lang/String; = "mpum"

.field public static final KEY_MMO_SEND_ENTRY_POINT:Ljava/lang/String; = "msep"

.field public static final KEY_MMO_USER_MAX_LIMBO_SECONDS:Ljava/lang/String; = "muls"

.field public static final KEY_NAME:Ljava/lang/String; = "n"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "p"

.field public static final KEY_PERMISSIONS:Ljava/lang/String; = "pm"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"

.field public static final KEY_ROOMVARS:Ljava/lang/String; = "rv"

.field public static final KEY_ROOM_TO_LEAVE:Ljava/lang/String; = "rl"


# instance fields
.field private autoJoin:Z

.field private roomToLeave:Lsfs2x/client/entities/Room;

.field private settings:Lsfs2x/client/requests/RoomSettings;


# direct methods
.method public constructor <init>(Lsfs2x/client/requests/RoomSettings;)V
    .locals 2
    .param p1, "settings"    # Lsfs2x/client/requests/RoomSettings;

    .prologue
    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsfs2x/client/requests/CreateRoomRequest;-><init>(Lsfs2x/client/requests/RoomSettings;ZLsfs2x/client/entities/Room;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/requests/RoomSettings;Z)V
    .locals 1
    .param p1, "settings"    # Lsfs2x/client/requests/RoomSettings;
    .param p2, "autoJoin"    # Z

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/CreateRoomRequest;-><init>(Lsfs2x/client/requests/RoomSettings;ZLsfs2x/client/entities/Room;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/requests/RoomSettings;ZLsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "settings"    # Lsfs2x/client/requests/RoomSettings;
    .param p2, "autoJoin"    # Z
    .param p3, "roomToLeave"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 181
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 183
    iput-object p1, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    .line 184
    iput-boolean p2, p0, Lsfs2x/client/requests/CreateRoomRequest;->autoJoin:Z

    .line 185
    iput-object p3, p0, Lsfs2x/client/requests/CreateRoomRequest;->roomToLeave:Lsfs2x/client/entities/Room;

    .line 186
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 9
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 249
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "n"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "g"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "p"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "ig"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->isGame()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 253
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mu"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getMaxUsers()I

    move-result v8

    int-to-short v8, v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 254
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "ms"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getMaxSpectators()I

    move-result v8

    int-to-short v8, v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 255
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mv"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getMaxVariables()I

    move-result v8

    int-to-short v8, v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 258
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getVariables()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getVariables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 260
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v2

    .line 262
    .local v2, "roomVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getVariables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 267
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "rv"

    invoke-interface {v6, v7, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 271
    .end local v2    # "roomVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_0
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getPermissions()Lsfs2x/client/requests/RoomPermissions;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v4, "sfsPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getPermissions()Lsfs2x/client/requests/RoomPermissions;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomPermissions;->getAllowNameChange()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getPermissions()Lsfs2x/client/requests/RoomPermissions;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomPermissions;->getAllowPasswordStateChange()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getPermissions()Lsfs2x/client/requests/RoomPermissions;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomPermissions;->getAllowPublicMessages()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getPermissions()Lsfs2x/client/requests/RoomPermissions;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomPermissions;->getAllowResizing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "pm"

    invoke-interface {v6, v7, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBoolArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 283
    .end local v4    # "sfsPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getEvents()Lsfs2x/client/requests/RoomEvents;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 285
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, "sfsEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getEvents()Lsfs2x/client/requests/RoomEvents;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomEvents;->getAllowUserEnter()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getEvents()Lsfs2x/client/requests/RoomEvents;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomEvents;->getAllowUserExit()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getEvents()Lsfs2x/client/requests/RoomEvents;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomEvents;->getAllowUserCountChange()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getEvents()Lsfs2x/client/requests/RoomEvents;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomEvents;->getAllowUserVariablesUpdate()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "ev"

    invoke-interface {v6, v7, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBoolArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 295
    .end local v3    # "sfsEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_2
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 297
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "xn"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomExtension;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "xc"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomExtension;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomExtension;->getPropertiesFile()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/requests/RoomExtension;->getPropertiesFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 302
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "xp"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/RoomExtension;->getPropertiesFile()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_3
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    instance-of v6, v6, Lsfs2x/client/requests/mmo/MMORoomSettings;

    if-eqz v6, :cond_5

    .line 308
    iget-object v0, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    check-cast v0, Lsfs2x/client/requests/mmo/MMORoomSettings;

    .line 309
    .local v0, "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getDefaultAOI()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v6

    invoke-virtual {v6}, Lsfs2x/client/entities/data/Vec3D;->isFloat()Z

    move-result v5

    .line 311
    .local v5, "useFloats":Z
    if-eqz v5, :cond_8

    .line 313
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "maoi"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getDefaultAOI()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/entities/data/Vec3D;->toFloatArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putFloatArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 315
    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 317
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mllm"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/mmo/MapLimits;->getLowerLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/entities/data/Vec3D;->toFloatArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putFloatArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 318
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mlhm"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/mmo/MapLimits;->getHigherLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/entities/data/Vec3D;->toFloatArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putFloatArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 332
    :cond_4
    :goto_1
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "muls"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getUserMaxLimboSeconds()I

    move-result v8

    int-to-short v8, v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 333
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mpum"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getProximityListUpdateMillis()I

    move-result v8

    int-to-short v8, v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 334
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "msep"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->isSendAOIEntryPoint()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 338
    .end local v0    # "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    .end local v5    # "useFloats":Z
    :cond_5
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "aj"

    iget-boolean v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->autoJoin:Z

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 341
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->roomToLeave:Lsfs2x/client/entities/Room;

    if-eqz v6, :cond_6

    .line 342
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "rl"

    iget-object v8, p0, Lsfs2x/client/requests/CreateRoomRequest;->roomToLeave:Lsfs2x/client/entities/Room;

    invoke-interface {v8}, Lsfs2x/client/entities/Room;->getId()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 344
    :cond_6
    return-void

    .line 262
    .restart local v2    # "roomVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/entities/variables/RoomVariable;

    .line 264
    .local v1, "rVar":Lsfs2x/client/entities/variables/RoomVariable;
    invoke-interface {v1}, Lsfs2x/client/entities/variables/RoomVariable;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    goto/16 :goto_0

    .line 323
    .end local v1    # "rVar":Lsfs2x/client/entities/variables/RoomVariable;
    .end local v2    # "roomVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .restart local v0    # "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    .restart local v5    # "useFloats":Z
    :cond_8
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "maoi"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getDefaultAOI()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/entities/data/Vec3D;->toIntArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 325
    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 327
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mllm"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/mmo/MapLimits;->getLowerLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/entities/data/Vec3D;->toIntArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 328
    iget-object v6, p0, Lsfs2x/client/requests/CreateRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v7, "mlhm"

    invoke-virtual {v0}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/mmo/MapLimits;->getHigherLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/entities/data/Vec3D;->toIntArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 9
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v2, "Missing room name"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getMaxUsers()I

    move-result v2

    if-gtz v2, :cond_2

    .line 214
    const-string/jumbo v2, "maxUsers must be > 0"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 218
    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomExtension;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomExtension;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 219
    :cond_3
    const-string/jumbo v2, "Missing Extension class name"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_4
    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomExtension;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomSettings;->getExtension()Lsfs2x/client/requests/RoomExtension;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/RoomExtension;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 222
    :cond_5
    const-string/jumbo v2, "Missing Extension id"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_6
    iget-object v2, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    instance-of v2, v2, Lsfs2x/client/requests/mmo/MMORoomSettings;

    if-eqz v2, :cond_a

    .line 228
    iget-object v1, p0, Lsfs2x/client/requests/CreateRoomRequest;->settings:Lsfs2x/client/requests/RoomSettings;

    check-cast v1, Lsfs2x/client/requests/mmo/MMORoomSettings;

    .line 230
    .local v1, "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getDefaultAOI()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v2

    if-nez v2, :cond_7

    .line 231
    const-string/jumbo v2, "Missing default AOI (area of interest)"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_7
    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/mmo/MapLimits;->getLowerLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/mmo/MapLimits;->getHigherLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v2

    if-nez v2, :cond_9

    .line 234
    :cond_8
    const-string/jumbo v2, "Map limits must be both defined"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_9
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "---> %s AND (%s OR %s)"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v2

    invoke-virtual {v2}, Lsfs2x/client/requests/mmo/MapLimits;->getLowerLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    invoke-virtual {v1}, Lsfs2x/client/requests/mmo/MMORoomSettings;->getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/requests/mmo/MapLimits;->getHigherLimit()Lsfs2x/client/entities/data/Vec3D;

    move-result-object v8

    if-nez v8, :cond_d

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    .end local v1    # "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 241
    new-instance v2, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v3, "CreateRoom request error"

    invoke-direct {v2, v3, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v2

    .restart local v1    # "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    :cond_b
    move v2, v4

    .line 236
    goto :goto_0

    :cond_c
    move v2, v4

    goto :goto_1

    :cond_d
    move v3, v4

    goto :goto_2

    .line 242
    .end local v1    # "mmoSettings":Lsfs2x/client/requests/mmo/MMORoomSettings;
    :cond_e
    return-void
.end method
