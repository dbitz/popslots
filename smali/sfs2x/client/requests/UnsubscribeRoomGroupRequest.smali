.class public Lsfs2x/client/requests/UnsubscribeRoomGroupRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "UnsubscribeRoomGroupRequest.java"


# static fields
.field public static final KEY_GROUP_ID:Ljava/lang/String; = "g"


# instance fields
.field private groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 59
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 60
    iput-object p1, p0, Lsfs2x/client/requests/UnsubscribeRoomGroupRequest;->groupId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 83
    iget-object v0, p0, Lsfs2x/client/requests/UnsubscribeRoomGroupRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "g"

    iget-object v2, p0, Lsfs2x/client/requests/UnsubscribeRoomGroupRequest;->groupId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
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
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/UnsubscribeRoomGroupRequest;->groupId:Ljava/lang/String;

    invoke-static {v1}, Lsfs2x/client/util/SFSStringUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo v1, "Invalid groupId. Must be a string with at least 1 character."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "UnsubscribeGroup request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 77
    :cond_1
    return-void
.end method
