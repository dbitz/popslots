.class public Lsfs2x/client/requests/SetUserVariablesRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "SetUserVariablesRequest.java"


# static fields
.field public static final KEY_USER:Ljava/lang/String; = "u"

.field public static final KEY_VAR_LIST:Ljava/lang/String; = "vl"


# instance fields
.field private userVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/UserVariable;",
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
            "Lsfs2x/client/entities/variables/UserVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "userVariables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/UserVariable;>;"
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 76
    iput-object p1, p0, Lsfs2x/client/requests/SetUserVariablesRequest;->userVariables:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 4
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 98
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v1

    .line 100
    .local v1, "varList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v2, p0, Lsfs2x/client/requests/SetUserVariablesRequest;->userVariables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    iget-object v2, p0, Lsfs2x/client/requests/SetUserVariablesRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v3, "vl"

    invoke-interface {v2, v3, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 105
    return-void

    .line 100
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/UserVariable;

    .line 101
    .local v0, "uVar":Lsfs2x/client/entities/variables/UserVariable;
    invoke-interface {v0}, Lsfs2x/client/entities/variables/UserVariable;->toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

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
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/SetUserVariablesRequest;->userVariables:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsfs2x/client/requests/SetUserVariablesRequest;->userVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    const-string/jumbo v1, "No variables were specified"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "SetUserVariables request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 92
    :cond_2
    return-void
.end method
