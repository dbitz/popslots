.class public Lsfs2x/client/bitswarm/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lsfs2x/client/bitswarm/IMessage;


# instance fields
.field private content:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field private id:I

.field private isEncrypted:Z

.field private isUDP:Z

.field private packetId:J

.field private targetController:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/bitswarm/Message;->isEncrypted:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lsfs2x/client/bitswarm/Message;->content:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lsfs2x/client/bitswarm/Message;->id:I

    return v0
.end method

.method public getPacketId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lsfs2x/client/bitswarm/Message;->packetId:J

    return-wide v0
.end method

.method public getTargetController()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lsfs2x/client/bitswarm/Message;->targetController:I

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/Message;->isEncrypted:Z

    return v0
.end method

.method public isUDP()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lsfs2x/client/bitswarm/Message;->isUDP:Z

    return v0
.end method

.method public setContent(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 0
    .param p1, "content"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 33
    iput-object p1, p0, Lsfs2x/client/bitswarm/Message;->content:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 34
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "encrypted"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lsfs2x/client/bitswarm/Message;->isEncrypted:Z

    .line 50
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 25
    iput p1, p0, Lsfs2x/client/bitswarm/Message;->id:I

    .line 26
    return-void
.end method

.method public setPacketId(J)V
    .locals 1
    .param p1, "packetId"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lsfs2x/client/bitswarm/Message;->packetId:J

    .line 66
    return-void
.end method

.method public setTargetController(I)V
    .locals 0
    .param p1, "targetController"    # I

    .prologue
    .line 41
    iput p1, p0, Lsfs2x/client/bitswarm/Message;->targetController:I

    .line 42
    return-void
.end method

.method public setUDP(Z)V
    .locals 0
    .param p1, "udp"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lsfs2x/client/bitswarm/Message;->isUDP:Z

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ Message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsfs2x/client/bitswarm/Message;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "{\ufffd\ufffdDump: }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lsfs2x/client/bitswarm/Message;->content:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
