.class public Lsfs2x/client/requests/FindUsersRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "FindUsersRequest.java"


# static fields
.field public static final KEY_EXPRESSION:Ljava/lang/String; = "e"

.field public static final KEY_FILTERED_USERS:Ljava/lang/String; = "fu"

.field public static final KEY_GROUP:Ljava/lang/String; = "g"

.field public static final KEY_LIMIT:Ljava/lang/String; = "l"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"


# instance fields
.field private limit:S

.field private matchExpr:Lsfs2x/client/entities/match/MatchExpression;

.field private target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;)V
    .locals 2
    .param p1, "matchExpr"    # Lsfs2x/client/entities/match/MatchExpression;

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsfs2x/client/requests/FindUsersRequest;-><init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/Object;S)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/Object;)V
    .locals 1
    .param p1, "matchExpr"    # Lsfs2x/client/entities/match/MatchExpression;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/FindUsersRequest;-><init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/Object;S)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/Object;S)V
    .locals 1
    .param p1, "matchExpr"    # Lsfs2x/client/entities/match/MatchExpression;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "limit"    # S

    .prologue
    .line 81
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 83
    iput-short p3, p0, Lsfs2x/client/requests/FindUsersRequest;->limit:S

    .line 84
    iput-object p2, p0, Lsfs2x/client/requests/FindUsersRequest;->target:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lsfs2x/client/requests/FindUsersRequest;->matchExpr:Lsfs2x/client/entities/match/MatchExpression;

    .line 86
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 121
    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "e"

    iget-object v2, p0, Lsfs2x/client/requests/FindUsersRequest;->matchExpr:Lsfs2x/client/entities/match/MatchExpression;

    invoke-virtual {v2}, Lsfs2x/client/entities/match/MatchExpression;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 123
    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->target:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->target:Ljava/lang/Object;

    instance-of v0, v0, Lsfs2x/client/entities/Room;

    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lsfs2x/client/requests/FindUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "r"

    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->target:Ljava/lang/Object;

    check-cast v0, Lsfs2x/client/entities/Room;

    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 133
    :cond_0
    :goto_0
    iget-short v0, p0, Lsfs2x/client/requests/FindUsersRequest;->limit:S

    if-lez v0, :cond_1

    .line 134
    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "l"

    iget-short v2, p0, Lsfs2x/client/requests/FindUsersRequest;->limit:S

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 136
    :cond_1
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->target:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lsfs2x/client/requests/FindUsersRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "g"

    iget-object v0, p0, Lsfs2x/client/requests/FindUsersRequest;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/FindUsersRequest;->matchExpr:Lsfs2x/client/entities/match/MatchExpression;

    if-nez v1, :cond_0

    .line 109
    const-string/jumbo v1, "Missing Match Expression"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 113
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "FindUsers request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 115
    :cond_1
    return-void
.end method
