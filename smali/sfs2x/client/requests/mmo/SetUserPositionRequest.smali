.class public Lsfs2x/client/requests/mmo/SetUserPositionRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "SetUserPositionRequest.java"


# static fields
.field public static final KEY_MINUS_ITEM_LIST:Ljava/lang/String; = "n"

.field public static final KEY_MINUS_USER_LIST:Ljava/lang/String; = "m"

.field public static final KEY_PLUS_ITEM_LIST:Ljava/lang/String; = "q"

.field public static final KEY_PLUS_USER_LIST:Ljava/lang/String; = "p"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"

.field public static final KEY_VEC3D:Ljava/lang/String; = "v"


# instance fields
.field private pos:Lsfs2x/client/entities/data/Vec3D;

.field private room:Lsfs2x/client/entities/Room;


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/data/Vec3D;Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "position"    # Lsfs2x/client/entities/data/Vec3D;
    .param p2, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 110
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 111
    iput-object p1, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->pos:Lsfs2x/client/entities/data/Vec3D;

    .line 112
    iput-object p2, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->room:Lsfs2x/client/entities/Room;

    .line 113
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget-object v2, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 142
    iget-object v0, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->pos:Lsfs2x/client/entities/data/Vec3D;

    invoke-virtual {v0}, Lsfs2x/client/entities/data/Vec3D;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "v"

    iget-object v2, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->pos:Lsfs2x/client/entities/data/Vec3D;

    invoke-virtual {v2}, Lsfs2x/client/entities/data/Vec3D;->toFloatArray()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putFloatArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "v"

    iget-object v2, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->pos:Lsfs2x/client/entities/data/Vec3D;

    invoke-virtual {v2}, Lsfs2x/client/entities/data/Vec3D;->toIntArray()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

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
    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 120
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->pos:Lsfs2x/client/entities/data/Vec3D;

    if-nez v1, :cond_0

    .line 121
    const-string/jumbo v1, "Position must be a valid Vec3D "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    iget-object v1, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v1, :cond_1

    .line 124
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v1

    iput-object v1, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->room:Lsfs2x/client/entities/Room;

    .line 126
    :cond_1
    iget-object v1, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v1, :cond_2

    .line 127
    const-string/jumbo v1, "You are not joined in any room"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    iget-object v1, p0, Lsfs2x/client/requests/mmo/SetUserPositionRequest;->room:Lsfs2x/client/entities/Room;

    instance-of v1, v1, Lsfs2x/client/entities/MMORoom;

    if-nez v1, :cond_3

    .line 130
    const-string/jumbo v1, "Selected Room is not an MMORoom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 133
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "SetUserVariables request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 135
    :cond_4
    return-void
.end method
