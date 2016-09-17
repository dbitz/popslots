.class public Lsfs2x/client/requests/game/InviteUsersRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "InviteUsersRequest.java"


# static fields
.field public static final KEY_INVITATION_ID:Ljava/lang/String; = "ii"

.field public static final KEY_INVITED_USERS:Ljava/lang/String; = "iu"

.field public static final KEY_INVITEE_ID:Ljava/lang/String; = "ee"

.field public static final KEY_PARAMS:Ljava/lang/String; = "p"

.field public static final KEY_REPLY_ID:Ljava/lang/String; = "ri"

.field public static final KEY_TIME:Ljava/lang/String; = "t"

.field public static final KEY_USER:Ljava/lang/String; = "u"

.field public static final KEY_USER_ID:Ljava/lang/String; = "ui"

.field public static final MAX_EXPIRY_TIME:I = 0x12c

.field public static final MAX_INVITATIONS_FROM_CLIENT_SIDE:I = 0x8

.field public static final MIN_EXPIRY_TIME:I = 0x5


# instance fields
.field private invitedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field private secondsForAnswer:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p2, "secondsForAnswer"    # I
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/smartfoxserver/v2/entities/data/ISFSObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "invitedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 140
    iput-object p1, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->invitedUsers:Ljava/util/List;

    .line 141
    iput p2, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->secondsForAnswer:I

    .line 142
    iput-object p3, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 143
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 6
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "invitedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->invitedUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 194
    iget-object v3, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v4, "iu"

    invoke-interface {v3, v4, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 197
    iget-object v3, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v4, "t"

    iget v5, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->secondsForAnswer:I

    int-to-short v5, v5

    invoke-interface {v3, v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 200
    iget-object v3, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v4, "p"

    iget-object v5, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v3, v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 203
    :cond_1
    return-void

    .line 175
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 176
    .local v2, "item":Ljava/lang/Object;
    instance-of v4, v2, Lsfs2x/client/entities/User;

    if-nez v4, :cond_3

    instance-of v4, v2, Lsfs2x/client/entities/Buddy;

    if-eqz v4, :cond_0

    .line 178
    :cond_3
    instance-of v4, v2, Lsfs2x/client/entities/User;

    if-eqz v4, :cond_4

    .line 179
    check-cast v2, Lsfs2x/client/entities/User;

    .end local v2    # "item":Ljava/lang/Object;
    invoke-interface {v2}, Lsfs2x/client/entities/User;->getId()I

    move-result v0

    .line 185
    .local v0, "id":I
    :goto_1
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v4

    invoke-interface {v4}, Lsfs2x/client/entities/User;->getId()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v0    # "id":I
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_4
    check-cast v2, Lsfs2x/client/entities/Buddy;

    .end local v2    # "item":Ljava/lang/Object;
    invoke-interface {v2}, Lsfs2x/client/entities/Buddy;->getId()I

    move-result v0

    .restart local v0    # "id":I
    goto :goto_1
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
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->invitedUsers:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->invitedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    const-string/jumbo v1, "No invitation(s) to send"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-object v1, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->invitedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 156
    const-string/jumbo v1, "Too many invitations. Max allowed from client side is: 8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    iget v1, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->secondsForAnswer:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    iget v1, p0, Lsfs2x/client/requests/game/InviteUsersRequest;->secondsForAnswer:I

    const/16 v2, 0x12c

    if-le v1, v2, :cond_4

    .line 160
    :cond_3
    const-string/jumbo v1, "SecondsForAnswer value is out of range (5-300)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 164
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "InvitationReply request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 166
    :cond_5
    return-void
.end method
