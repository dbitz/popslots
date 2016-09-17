.class public Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
.super Ljava/lang/Object;
.source "PacketHeader.java"


# instance fields
.field private final bigSized:Z

.field private final binary:Z

.field private final blueBoxed:Z

.field private final compressed:Z

.field private final encrypted:Z

.field private expectedLen:I


# direct methods
.method public constructor <init>(ZZZZZ)V
    .locals 1
    .param p1, "binary"    # Z
    .param p2, "encrypted"    # Z
    .param p3, "compressed"    # Z
    .param p4, "blueBoxed"    # Z
    .param p5, "bigSized"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->expectedLen:I

    .line 19
    iput-boolean p1, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->binary:Z

    .line 20
    iput-boolean p3, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->compressed:Z

    .line 21
    iput-boolean p2, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->encrypted:Z

    .line 22
    iput-boolean p4, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->blueBoxed:Z

    .line 23
    iput-boolean p5, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->bigSized:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getExpectedLen()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->expectedLen:I

    return v0
.end method

.method public isBigSized()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->bigSized:Z

    return v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->binary:Z

    return v0
.end method

.method public isBlueBoxed()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->blueBoxed:Z

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->compressed:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->encrypted:Z

    return v0
.end method

.method public setExpectedLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->expectedLen:I

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\n---------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Binary:  \t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Compressed:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isCompressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Encrypted:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BlueBoxed:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBlueBoxed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BigSized:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "---------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
