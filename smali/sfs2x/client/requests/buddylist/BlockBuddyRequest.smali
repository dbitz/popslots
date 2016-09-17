.class public Lsfs2x/client/requests/buddylist/BlockBuddyRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "BlockBuddyRequest.java"


# static fields
.field public static final KEY_BUDDY_BLOCK_STATE:Ljava/lang/String; = "bs"

.field public static final KEY_BUDDY_NAME:Ljava/lang/String; = "bn"


# instance fields
.field private blocked:Z

.field private buddyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "buddyName"    # Ljava/lang/String;
    .param p2, "blocked"    # Z

    .prologue
    .line 72
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 74
    iput-object p1, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->blocked:Z

    .line 76
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 115
    iget-object v0, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "bn"

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "bs"

    iget-boolean v2, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->blocked:Z

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 117
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
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v2

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string/jumbo v2, "BuddyList is not inited. Please send an InitBuddyRequest first."

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget-object v2, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 89
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid buddy name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_2
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v2

    invoke-interface {v2}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    const-string/jumbo v2, "Can\'t block buddy while off-line"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v2

    iget-object v3, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lsfs2x/client/entities/managers/IBuddyManager;->getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 98
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    if-nez v0, :cond_5

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t block buddy, it\'s not in your list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->buddyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 107
    new-instance v2, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v3, "BuddyList request error"

    invoke-direct {v2, v3, v1}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v2

    .line 102
    :cond_5
    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->isBlocked()Z

    move-result v2

    iget-boolean v3, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->blocked:Z

    if-ne v2, v3, :cond_4

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BuddyBlock flag is already in the requested state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lsfs2x/client/requests/buddylist/BlockBuddyRequest;->blocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", for buddy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_6
    return-void
.end method
