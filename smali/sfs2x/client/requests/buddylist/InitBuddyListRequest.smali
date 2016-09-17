.class public Lsfs2x/client/requests/buddylist/InitBuddyListRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "InitBuddyListRequest.java"


# static fields
.field public static final KEY_BLIST:Ljava/lang/String; = "bl"

.field public static final KEY_BUDDY_STATES:Ljava/lang/String; = "bs"

.field public static final KEY_MY_VARS:Ljava/lang/String; = "mv"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
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
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v1, "Buddy List is already initialized."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 85
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "InitBuddyRequest error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 87
    :cond_1
    return-void
.end method
