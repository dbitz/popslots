.class public Lsfs2x/client/entities/variables/MMOItemVariable;
.super Lsfs2x/client/entities/variables/SFSUserVariable;
.source "MMOItemVariable.java"

# interfaces
.implements Lsfs2x/client/entities/variables/IMMOItemVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lsfs2x/client/entities/variables/SFSUserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lsfs2x/client/entities/variables/SFSUserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 26
    return-void
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/IMMOItemVariable;
    .locals 4
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 10
    new-instance v0, Lsfs2x/client/entities/variables/MMOItemVariable;

    .line 12
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getElementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 14
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getByte(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lsfs2x/client/entities/variables/MMOItemVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static bridge synthetic fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/UserVariable;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lsfs2x/client/entities/variables/MMOItemVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/IMMOItemVariable;

    move-result-object v0

    return-object v0
.end method
