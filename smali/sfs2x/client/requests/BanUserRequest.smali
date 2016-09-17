.class public Lsfs2x/client/requests/BanUserRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "BanUserRequest.java"


# static fields
.field public static final KEY_BAN_DURATION_HOURS:Ljava/lang/String; = "dh"

.field public static final KEY_BAN_MODE:Ljava/lang/String; = "b"

.field public static final KEY_DELAY:Ljava/lang/String; = "d"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "m"

.field public static final KEY_USER_ID:Ljava/lang/String; = "u"


# instance fields
.field private banMode:I

.field private delay:I

.field private durationHours:I

.field private message:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Lsfs2x/client/requests/BanUserRequest;-><init>(ILjava/lang/String;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v0, v1}, Lsfs2x/client/requests/BanUserRequest;-><init>(ILjava/lang/String;II)V

    .line 109
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "banMode"    # I

    .prologue
    .line 101
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, p3, v0}, Lsfs2x/client/requests/BanUserRequest;-><init>(ILjava/lang/String;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "banMode"    # I
    .param p4, "delaySeconds"    # I

    .prologue
    .line 94
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lsfs2x/client/requests/BanUserRequest;-><init>(ILjava/lang/String;III)V

    .line 95
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "banMode"    # I
    .param p4, "delaySeconds"    # I
    .param p5, "durationHours"    # I

    .prologue
    .line 81
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 83
    iput p1, p0, Lsfs2x/client/requests/BanUserRequest;->userId:I

    .line 84
    iput-object p2, p0, Lsfs2x/client/requests/BanUserRequest;->message:Ljava/lang/String;

    .line 85
    iput p3, p0, Lsfs2x/client/requests/BanUserRequest;->banMode:I

    .line 86
    iput p4, p0, Lsfs2x/client/requests/BanUserRequest;->delay:I

    .line 87
    iput p5, p0, Lsfs2x/client/requests/BanUserRequest;->durationHours:I

    .line 88
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 138
    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "u"

    iget v2, p0, Lsfs2x/client/requests/BanUserRequest;->userId:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "d"

    iget v2, p0, Lsfs2x/client/requests/BanUserRequest;->delay:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "b"

    iget v2, p0, Lsfs2x/client/requests/BanUserRequest;->banMode:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "dh"

    iget v2, p0, Lsfs2x/client/requests/BanUserRequest;->durationHours:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lsfs2x/client/requests/BanUserRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lsfs2x/client/requests/BanUserRequest;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
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
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
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

    .line 126
    const-string/jumbo v1, "You don\'t have enough permissions to execute this request."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "BanUser request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 132
    :cond_1
    return-void
.end method
