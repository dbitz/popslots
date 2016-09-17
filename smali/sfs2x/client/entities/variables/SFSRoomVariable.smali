.class public Lsfs2x/client/entities/variables/SFSRoomVariable;
.super Lsfs2x/client/entities/variables/SFSUserVariable;
.source "SFSRoomVariable.java"

# interfaces
.implements Lsfs2x/client/entities/variables/RoomVariable;


# instance fields
.field private isPersistent:Z

.field private isPrivate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 51
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/variables/SFSUserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lsfs2x/client/entities/variables/SFSUserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 64
    return-void
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/RoomVariable;
    .locals 4
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 35
    new-instance v0, Lsfs2x/client/entities/variables/SFSRoomVariable;

    .line 36
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getElementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 38
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getByte(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 35
    invoke-direct {v0, v1, v2, v3}, Lsfs2x/client/entities/variables/SFSRoomVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 41
    .local v0, "roomVariable":Lsfs2x/client/entities/variables/RoomVariable;
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lsfs2x/client/entities/variables/RoomVariable;->setPrivate(Z)V

    .line 42
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lsfs2x/client/entities/variables/RoomVariable;->setPersistent(Z)V

    .line 44
    return-object v0
.end method

.method public static bridge synthetic fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/UserVariable;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lsfs2x/client/entities/variables/SFSRoomVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/RoomVariable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isPersistent()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPersistent:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPrivate:Z

    return v0
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPersistent:Z

    .line 92
    return-void
.end method

.method public setPrivate(Z)V
    .locals 0
    .param p1, "setPrivate"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPrivate:Z

    .line 85
    return-void
.end method

.method public toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    .line 101
    .local v0, "arr":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-boolean v1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPrivate:Z

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addBool(Z)V

    .line 104
    iget-boolean v1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPersistent:Z

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addBool(Z)V

    .line 106
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[RVar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPriv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lsfs2x/client/entities/variables/SFSRoomVariable;->isPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
