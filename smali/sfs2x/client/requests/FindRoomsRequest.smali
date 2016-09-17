.class public Lsfs2x/client/requests/FindRoomsRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "FindRoomsRequest.java"


# static fields
.field public static final KEY_EXPRESSION:Ljava/lang/String; = "e"

.field public static final KEY_FILTERED_ROOMS:Ljava/lang/String; = "fr"

.field public static final KEY_GROUP:Ljava/lang/String; = "g"

.field public static final KEY_LIMIT:Ljava/lang/String; = "l"


# instance fields
.field private groupId:Ljava/lang/String;

.field private limit:S

.field private matchExpr:Lsfs2x/client/entities/match/MatchExpression;


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;)V
    .locals 2
    .param p1, "expr"    # Lsfs2x/client/entities/match/MatchExpression;

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsfs2x/client/requests/FindRoomsRequest;-><init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/String;S)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/String;)V
    .locals 1
    .param p1, "expr"    # Lsfs2x/client/entities/match/MatchExpression;
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/FindRoomsRequest;-><init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/String;S)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/lang/String;S)V
    .locals 1
    .param p1, "expr"    # Lsfs2x/client/entities/match/MatchExpression;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "limit"    # S

    .prologue
    .line 75
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 77
    iput-object p1, p0, Lsfs2x/client/requests/FindRoomsRequest;->matchExpr:Lsfs2x/client/entities/match/MatchExpression;

    .line 78
    iput-object p2, p0, Lsfs2x/client/requests/FindRoomsRequest;->groupId:Ljava/lang/String;

    .line 79
    iput-short p3, p0, Lsfs2x/client/requests/FindRoomsRequest;->limit:S

    .line 80
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 115
    iget-object v0, p0, Lsfs2x/client/requests/FindRoomsRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "e"

    iget-object v2, p0, Lsfs2x/client/requests/FindRoomsRequest;->matchExpr:Lsfs2x/client/entities/match/MatchExpression;

    invoke-virtual {v2}, Lsfs2x/client/entities/match/MatchExpression;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 117
    iget-object v0, p0, Lsfs2x/client/requests/FindRoomsRequest;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lsfs2x/client/requests/FindRoomsRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "g"

    iget-object v2, p0, Lsfs2x/client/requests/FindRoomsRequest;->groupId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-short v0, p0, Lsfs2x/client/requests/FindRoomsRequest;->limit:S

    if-lez v0, :cond_1

    .line 123
    iget-object v0, p0, Lsfs2x/client/requests/FindRoomsRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "l"

    iget-short v2, p0, Lsfs2x/client/requests/FindRoomsRequest;->limit:S

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 125
    :cond_1
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
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/FindRoomsRequest;->matchExpr:Lsfs2x/client/entities/match/MatchExpression;

    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "Missing Match Expression"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "FindRooms request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 109
    :cond_1
    return-void
.end method
