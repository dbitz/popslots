.class public Lsfs2x/client/requests/buddylist/GoOnlineRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "GoOnlineRequest.java"


# static fields
.field public static final KEY_BUDDY_ID:Ljava/lang/String; = "bi"

.field public static final KEY_BUDDY_NAME:Ljava/lang/String; = "bn"

.field public static final KEY_ONLINE:Ljava/lang/String; = "o"


# instance fields
.field private online:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "online"    # Z

    .prologue
    .line 77
    const/16 v0, 0xcd

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 78
    iput-boolean p1, p0, Lsfs2x/client/requests/buddylist/GoOnlineRequest;->online:Z

    .line 79
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v0

    iget-boolean v1, p0, Lsfs2x/client/requests/buddylist/GoOnlineRequest;->online:Z

    invoke-interface {v0, v1}, Lsfs2x/client/entities/managers/IBuddyManager;->setMyOnlineState(Z)V

    .line 107
    iget-object v0, p0, Lsfs2x/client/requests/buddylist/GoOnlineRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "o"

    iget-boolean v2, p0, Lsfs2x/client/requests/buddylist/GoOnlineRequest;->online:Z

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 108
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
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "BuddyList is not inited. Please send an InitBuddyRequest first."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 92
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "GoOnline request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 94
    :cond_1
    return-void
.end method
