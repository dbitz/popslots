.class public Lsfs2x/client/requests/game/QuickGameJoinRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "QuickGameJoinRequest.java"


# static fields
.field public static final KEY_GROUP_LIST:Ljava/lang/String; = "gl"

.field public static final KEY_MATCH_EXPRESSION:Ljava/lang/String; = "me"

.field public static final KEY_ROOM_LIST:Ljava/lang/String; = "rl"

.field public static final KEY_ROOM_TO_LEAVE:Ljava/lang/String; = "tl"

.field private static final MAX_ROOMS:I = 0x20


# instance fields
.field private matchExpression:Lsfs2x/client/entities/match/MatchExpression;

.field private roomToLeave:Lsfs2x/client/entities/Room;

.field private whereToSearch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/util/List;)V
    .locals 1
    .param p1, "matchExpression"    # Lsfs2x/client/entities/match/MatchExpression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/entities/match/MatchExpression;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "whereToSearch":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/game/QuickGameJoinRequest;-><init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/util/List;Lsfs2x/client/entities/Room;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/entities/match/MatchExpression;Ljava/util/List;Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "matchExpression"    # Lsfs2x/client/entities/match/MatchExpression;
    .param p3, "roomToLeave"    # Lsfs2x/client/entities/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/entities/match/MatchExpression;",
            "Ljava/util/List",
            "<*>;",
            "Lsfs2x/client/entities/Room;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "whereToSearch":Ljava/util/List;, "Ljava/util/List<*>;"
    const/16 v0, 0x12f

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 94
    iput-object p1, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->matchExpression:Lsfs2x/client/entities/match/MatchExpression;

    .line 95
    iput-object p3, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->roomToLeave:Lsfs2x/client/entities/Room;

    .line 97
    iput-object p2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    .line 98
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 5
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 132
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lsfs2x/client/entities/Room;

    if-eqz v2, :cond_3

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "roomIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "rl"

    invoke-interface {v2, v3, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 147
    .end local v1    # "roomIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->roomToLeave:Lsfs2x/client/entities/Room;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "tl"

    iget-object v4, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->roomToLeave:Lsfs2x/client/entities/Room;

    invoke-interface {v4}, Lsfs2x/client/entities/Room;->getId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 151
    :cond_0
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->matchExpression:Lsfs2x/client/entities/match/MatchExpression;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "me"

    iget-object v4, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->matchExpression:Lsfs2x/client/entities/match/MatchExpression;

    invoke-virtual {v4}, Lsfs2x/client/entities/match/MatchExpression;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 154
    :cond_1
    return-void

    .line 136
    .restart local v1    # "roomIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Room;

    .line 137
    .local v0, "room":Lsfs2x/client/entities/Room;
    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0    # "room":Lsfs2x/client/entities/Room;
    .end local v1    # "roomIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v2, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "gl"

    iget-object v4, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfStringArray(Ljava/lang/String;Ljava/util/Collection;)V

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
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 115
    :cond_0
    const-string/jumbo v1, "Missing whereToSearch parameter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "QuickJoinGame request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 118
    :cond_2
    iget-object v1, p0, Lsfs2x/client/requests/game/QuickGameJoinRequest;->whereToSearch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 119
    const-string/jumbo v1, "Too many Rooms specified in the whereToSearch parameter. Client limit is: 32"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_3
    return-void
.end method
