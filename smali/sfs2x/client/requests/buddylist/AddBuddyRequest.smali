.class public Lsfs2x/client/requests/buddylist/AddBuddyRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "AddBuddyRequest.java"


# static fields
.field public static final KEY_BUDDY_NAME:Ljava/lang/String; = "bn"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "buddyName"    # Ljava/lang/String;

    .prologue
    .line 62
    const/16 v0, 0xc9

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 63
    iput-object p1, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 99
    iget-object v0, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "bn"

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 4
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v2

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const-string/jumbo v2, "BuddyList is not inited. Please send an InitBuddyRequest first."

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    iget-object v2, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 77
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid buddy name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v2

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    const-string/jumbo v2, "Can\'t add buddy while off-line"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_3
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v2

    iget-object v3, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lsfs2x/client/entities/managers/IBuddyManager;->getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 86
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->isTemp()Z

    move-result v2

    if-nez v2, :cond_4

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t add buddy, it is already in your list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsfs2x/client/requests/buddylist/AddBuddyRequest;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 91
    new-instance v2, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v3, "BuddyList request error"

    invoke-direct {v2, v3, v1}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v2

    .line 93
    :cond_5
    return-void
.end method
