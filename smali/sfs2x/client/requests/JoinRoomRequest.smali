.class public Lsfs2x/client/requests/JoinRoomRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "JoinRoomRequest.java"


# static fields
.field public static final KEY_AS_SPECTATOR:Ljava/lang/String; = "sp"

.field public static final KEY_PASS:Ljava/lang/String; = "p"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"

.field public static final KEY_ROOM_ID:Ljava/lang/String; = "i"

.field public static final KEY_ROOM_NAME:Ljava/lang/String; = "n"

.field public static final KEY_ROOM_TO_LEAVE:Ljava/lang/String; = "rl"

.field public static final KEY_USER_LIST:Ljava/lang/String; = "ul"


# instance fields
.field private asSpectator:Z

.field private id:I

.field private name:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private roomIdToLeave:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lsfs2x/client/requests/JoinRoomRequest;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lsfs2x/client/requests/JoinRoomRequest;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "roomIdToLeave"    # Ljava/lang/Integer;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsfs2x/client/requests/JoinRoomRequest;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "roomIdToLeave"    # Ljava/lang/Integer;
    .param p4, "asSpectator"    # Z

    .prologue
    .line 102
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->id:I

    .line 104
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Ljava/lang/String;

    .end local p1    # "id":Ljava/lang/Object;
    iput-object p1, p0, Lsfs2x/client/requests/JoinRoomRequest;->name:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    iput-object p2, p0, Lsfs2x/client/requests/JoinRoomRequest;->pass:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lsfs2x/client/requests/JoinRoomRequest;->roomIdToLeave:Ljava/lang/Integer;

    .line 116
    iput-boolean p4, p0, Lsfs2x/client/requests/JoinRoomRequest;->asSpectator:Z

    .line 117
    return-void

    .line 107
    .restart local p1    # "id":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 108
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "id":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->id:I

    goto :goto_0

    .line 110
    .restart local p1    # "id":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lsfs2x/client/entities/Room;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lsfs2x/client/entities/Room;

    .end local p1    # "id":Ljava/lang/Object;
    invoke-interface {p1}, Lsfs2x/client/entities/Room;->getId()I

    move-result v0

    iput v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->id:I

    goto :goto_0
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 156
    iget v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->id:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 157
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "i"

    iget v2, p0, Lsfs2x/client/requests/JoinRoomRequest;->id:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->pass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/JoinRoomRequest;->pass:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->roomIdToLeave:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "rl"

    iget-object v2, p0, Lsfs2x/client/requests/JoinRoomRequest;->roomIdToLeave:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 178
    :cond_2
    iget-boolean v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->asSpectator:Z

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "sp"

    iget-boolean v2, p0, Lsfs2x/client/requests/JoinRoomRequest;->asSpectator:Z

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 181
    :cond_3
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lsfs2x/client/requests/JoinRoomRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "n"

    iget-object v2, p0, Lsfs2x/client/requests/JoinRoomRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 145
    iget v1, p0, Lsfs2x/client/requests/JoinRoomRequest;->id:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lsfs2x/client/requests/JoinRoomRequest;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "Missing Room id or name, you should provide at least one"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "JoinRoomRequest Error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 150
    .end local v0    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
