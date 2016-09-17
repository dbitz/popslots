.class public Lsfs2x/client/requests/buddylist/RemoveBuddyRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "RemoveBuddyRequest.java"


# static fields
.field public static final KEY_BUDDY_NAME:Ljava/lang/String; = "bn"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "buddyName"    # Ljava/lang/String;

    .prologue
    .line 61
    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 63
    iput-object p1, p0, Lsfs2x/client/requests/buddylist/RemoveBuddyRequest;->name:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 93
    iget-object v0, p0, Lsfs2x/client/requests/buddylist/RemoveBuddyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "bn"

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/RemoveBuddyRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
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
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string/jumbo v1, "BuddyList is not inited. Please send an InitBuddyRequest first."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string/jumbo v1, "Can\'t remove buddy while off-line"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/RemoveBuddyRequest;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lsfs2x/client/entities/managers/IBuddyManager;->containsBuddy(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t remove buddy, it\'s not in your list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/RemoveBuddyRequest;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 85
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "BuddyList request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 87
    :cond_3
    return-void
.end method
