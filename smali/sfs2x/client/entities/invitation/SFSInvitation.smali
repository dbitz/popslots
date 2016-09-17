.class public Lsfs2x/client/entities/invitation/SFSInvitation;
.super Ljava/lang/Object;
.source "SFSInvitation.java"

# interfaces
.implements Lsfs2x/client/entities/invitation/Invitation;


# instance fields
.field protected id:I

.field protected invitee:Lsfs2x/client/entities/User;

.field protected inviter:Lsfs2x/client/entities/User;

.field protected parameters:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field protected secondsForAnswer:I


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/User;Lsfs2x/client/entities/User;)V
    .locals 2
    .param p1, "inviter"    # Lsfs2x/client/entities/User;
    .param p2, "invitee"    # Lsfs2x/client/entities/User;

    .prologue
    .line 52
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lsfs2x/client/entities/invitation/SFSInvitation;-><init>(Lsfs2x/client/entities/User;Lsfs2x/client/entities/User;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/User;Lsfs2x/client/entities/User;I)V
    .locals 1
    .param p1, "inviter"    # Lsfs2x/client/entities/User;
    .param p2, "invitee"    # Lsfs2x/client/entities/User;
    .param p3, "secondsForAnswer"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsfs2x/client/entities/invitation/SFSInvitation;-><init>(Lsfs2x/client/entities/User;Lsfs2x/client/entities/User;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/User;Lsfs2x/client/entities/User;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 0
    .param p1, "inviter"    # Lsfs2x/client/entities/User;
    .param p2, "invitee"    # Lsfs2x/client/entities/User;
    .param p3, "secondsForAnswer"    # I
    .param p4, "parameters"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->inviter:Lsfs2x/client/entities/User;

    .line 42
    iput-object p2, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->invitee:Lsfs2x/client/entities/User;

    .line 43
    iput p3, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->secondsForAnswer:I

    .line 44
    iput-object p4, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->parameters:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 45
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->id:I

    return v0
.end method

.method public getInvitee()Lsfs2x/client/entities/User;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->invitee:Lsfs2x/client/entities/User;

    return-object v0
.end method

.method public getInviter()Lsfs2x/client/entities/User;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->inviter:Lsfs2x/client/entities/User;

    return-object v0
.end method

.method public getParams()Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->parameters:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    return-object v0
.end method

.method public getSecondsForAnswer()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->secondsForAnswer:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 66
    iput p1, p0, Lsfs2x/client/entities/invitation/SFSInvitation;->id:I

    .line 67
    return-void
.end method
