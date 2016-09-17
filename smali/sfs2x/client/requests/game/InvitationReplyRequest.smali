.class public Lsfs2x/client/requests/game/InvitationReplyRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "InvitationReplyRequest.java"


# static fields
.field public static final KEY_INVITATION_ID:Ljava/lang/String; = "i"

.field public static final KEY_INVITATION_PARAMS:Ljava/lang/String; = "p"

.field public static final KEY_INVITATION_REPLY:Ljava/lang/String; = "r"


# instance fields
.field private invitation:Lsfs2x/client/entities/invitation/Invitation;

.field private params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field private reply:I


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/invitation/Invitation;I)V
    .locals 1
    .param p1, "invitation"    # Lsfs2x/client/entities/invitation/Invitation;
    .param p2, "invitationReply"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/game/InvitationReplyRequest;-><init>(Lsfs2x/client/entities/invitation/Invitation;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/invitation/Invitation;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "invitation"    # Lsfs2x/client/entities/invitation/Invitation;
    .param p2, "invitationReply"    # I
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 82
    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 83
    iput-object p1, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->invitation:Lsfs2x/client/entities/invitation/Invitation;

    .line 84
    iput p2, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->reply:I

    .line 85
    iput-object p3, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 86
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 114
    iget-object v0, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "i"

    iget-object v2, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->invitation:Lsfs2x/client/entities/invitation/Invitation;

    invoke-interface {v2}, Lsfs2x/client/entities/invitation/Invitation;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget v2, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->reply:I

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putByte(Ljava/lang/String;B)V

    .line 117
    iget-object v0, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 120
    :cond_0
    return-void
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
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/game/InvitationReplyRequest;->invitation:Lsfs2x/client/entities/invitation/Invitation;

    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, "Missing invitation object"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "InvitationReply request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 108
    :cond_1
    return-void
.end method
