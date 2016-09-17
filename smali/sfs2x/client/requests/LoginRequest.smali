.class public Lsfs2x/client/requests/LoginRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "LoginRequest.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_PARAMS:Ljava/lang/String; = "p"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "pw"

.field public static final KEY_PRIVILEGE_ID:Ljava/lang/String; = "pi"

.field public static final KEY_RECONNECTION_SECONDS:Ljava/lang/String; = "rs"

.field public static final KEY_ROOMLIST:Ljava/lang/String; = "rl"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "un"

.field public static final KEY_ZONE_NAME:Ljava/lang/String; = "zn"


# instance fields
.field private params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0, v0, v0}, Lsfs2x/client/requests/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, v0, v0}, Lsfs2x/client/requests/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "zoneName"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsfs2x/client/requests/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "zoneName"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 111
    iput-object p3, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lsfs2x/client/requests/LoginRequest;->userName:Ljava/lang/String;

    .line 113
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "password":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lsfs2x/client/requests/LoginRequest;->password:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lsfs2x/client/requests/LoginRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 115
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 161
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "zn"

    iget-object v2, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "un"

    iget-object v2, p0, Lsfs2x/client/requests/LoginRequest;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/requests/LoginRequest;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsfs2x/client/util/PasswordUtil;->MD5Password(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/LoginRequest;->password:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "pw"

    iget-object v2, p0, Lsfs2x/client/requests/LoginRequest;->password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/LoginRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 180
    :cond_1
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
    .line 142
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v1, "LoginRequest Error"

    const-string/jumbo v2, "You are already logged in. Logout first"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/util/ConfigData;->getZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    .line 151
    :cond_2
    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsfs2x/client/requests/LoginRequest;->zoneName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 152
    :cond_3
    new-instance v0, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v1, "LoginRequest Error"

    const-string/jumbo v2, "Missing Zone name"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    .line 154
    :cond_4
    return-void
.end method
