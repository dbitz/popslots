.class public Lsfs2x/client/requests/buddylist/SetBuddyVariablesRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "SetBuddyVariablesRequest.java"


# static fields
.field public static final KEY_BUDDY_NAME:Ljava/lang/String; = "bn"

.field public static final KEY_BUDDY_VARS:Ljava/lang/String; = "bv"


# instance fields
.field private buddyVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "buddyVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    const/16 v0, 0xcc

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 98
    iput-object p1, p0, Lsfs2x/client/requests/buddylist/SetBuddyVariablesRequest;->buddyVariables:Ljava/util/List;

    .line 99
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 4
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 128
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v1

    .line 130
    .local v1, "varList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v2, p0, Lsfs2x/client/requests/buddylist/SetBuddyVariablesRequest;->buddyVariables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object v2, p0, Lsfs2x/client/requests/buddylist/SetBuddyVariablesRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "bv"

    invoke-interface {v2, v3, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 135
    return-void

    .line 130
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 131
    .local v0, "bVar":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

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
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string/jumbo v1, "BuddyList is not inited. Please send an InitBuddyRequest first."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const-string/jumbo v1, "Can\'t set buddy variables while off-line"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    iget-object v1, p0, Lsfs2x/client/requests/buddylist/SetBuddyVariablesRequest;->buddyVariables:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsfs2x/client/requests/buddylist/SetBuddyVariablesRequest;->buddyVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 116
    :cond_2
    const-string/jumbo v1, "No variables were specified"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 120
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "SetBuddyVariables request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 122
    :cond_4
    return-void
.end method
