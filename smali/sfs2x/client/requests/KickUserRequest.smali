.class public Lsfs2x/client/requests/KickUserRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "KickUserRequest.java"


# static fields
.field public static final KEY_DELAY:Ljava/lang/String; = "d"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "m"

.field public static final KEY_USER_ID:Ljava/lang/String; = "u"


# instance fields
.field private delay:I

.field private message:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lsfs2x/client/requests/KickUserRequest;-><init>(ILjava/lang/String;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/KickUserRequest;-><init>(ILjava/lang/String;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "delaySeconds"    # I

    .prologue
    .line 63
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 65
    iput p1, p0, Lsfs2x/client/requests/KickUserRequest;->userId:I

    .line 66
    iput-object p2, p0, Lsfs2x/client/requests/KickUserRequest;->message:Ljava/lang/String;

    .line 67
    iput p3, p0, Lsfs2x/client/requests/KickUserRequest;->delay:I

    .line 70
    iget v0, p0, Lsfs2x/client/requests/KickUserRequest;->delay:I

    if-gez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lsfs2x/client/requests/KickUserRequest;->delay:I

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 109
    iget-object v0, p0, Lsfs2x/client/requests/KickUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "u"

    iget v2, p0, Lsfs2x/client/requests/KickUserRequest;->userId:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lsfs2x/client/requests/KickUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "d"

    iget v2, p0, Lsfs2x/client/requests/KickUserRequest;->delay:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lsfs2x/client/requests/KickUserRequest;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/requests/KickUserRequest;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lsfs2x/client/requests/KickUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lsfs2x/client/requests/KickUserRequest;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
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
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/User;->isModerator()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/User;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string/jumbo v1, "You don\'t have enough permissions to execute this request."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "KickUser request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 103
    :cond_1
    return-void
.end method
