.class public Lsfs2x/client/requests/ExtensionRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "ExtensionRequest.java"


# static fields
.field public static final KEY_CMD:Ljava/lang/String; = "c"

.field public static final KEY_PARAMS:Ljava/lang/String; = "p"

.field public static final KEY_ROOM:Ljava/lang/String; = "r"


# instance fields
.field private extCmd:Ljava/lang/String;

.field private params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field private room:Lsfs2x/client/entities/Room;

.field private useUDP:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 2
    .param p1, "extCmd"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lsfs2x/client/requests/ExtensionRequest;-><init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "extCmd"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p3, "room"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsfs2x/client/requests/ExtensionRequest;-><init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;Z)V
    .locals 1
    .param p1, "extCmd"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p3, "room"    # Lsfs2x/client/entities/Room;
    .param p4, "useUDP"    # Z

    .prologue
    .line 86
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lsfs2x/client/requests/ExtensionRequest;->targetController:I

    .line 89
    iput-object p1, p0, Lsfs2x/client/requests/ExtensionRequest;->extCmd:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lsfs2x/client/requests/ExtensionRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 91
    iput-object p3, p0, Lsfs2x/client/requests/ExtensionRequest;->room:Lsfs2x/client/entities/Room;

    .line 92
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->useUDP:Ljava/lang/Boolean;

    .line 95
    iget-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    iput-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 144
    iget-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "c"

    iget-object v2, p0, Lsfs2x/client/requests/ExtensionRequest;->extCmd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lsfs2x/client/requests/ExtensionRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "r"

    iget-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/ExtensionRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 147
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getUseUDP()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lsfs2x/client/requests/ExtensionRequest;->useUDP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
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
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsfs2x/client/requests/ExtensionRequest;->extCmd:Ljava/lang/String;

    invoke-static {v1}, Lsfs2x/client/util/SFSStringUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v1, "Missing extension command"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    iget-object v1, p0, Lsfs2x/client/requests/ExtensionRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-nez v1, :cond_1

    .line 132
    const-string/jumbo v1, "Missing extension parameters"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 136
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "ExtensionCall request error"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 138
    :cond_2
    return-void
.end method
