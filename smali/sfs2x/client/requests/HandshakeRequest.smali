.class public Lsfs2x/client/requests/HandshakeRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "HandshakeRequest.java"


# static fields
.field public static final KEY_API:Ljava/lang/String; = "api"

.field public static final KEY_CLIENT_TYPE:Ljava/lang/String; = "cl"

.field public static final KEY_COMPRESSION_THRESHOLD:Ljava/lang/String; = "ct"

.field public static final KEY_MAX_MESSAGE_SIZE:Ljava/lang/String; = "ms"

.field public static final KEY_RECONNECTION_TOKEN:Ljava/lang/String; = "rt"

.field public static final KEY_SESSION_TOKEN:Ljava/lang/String; = "tk"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apiVersion"    # Ljava/lang/String;
    .param p2, "clientType"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsfs2x/client/requests/HandshakeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apiVersion"    # Ljava/lang/String;
    .param p2, "reconnectionToken"    # Ljava/lang/String;
    .param p3, "clientType"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 46
    iget-object v0, p0, Lsfs2x/client/requests/HandshakeRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "api"

    invoke-interface {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lsfs2x/client/requests/HandshakeRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "cl"

    invoke-interface {v0, v1, p3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lsfs2x/client/requests/HandshakeRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "bin"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putBool(Ljava/lang/String;Z)V

    .line 53
    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lsfs2x/client/requests/HandshakeRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "rt"

    invoke-interface {v0, v1, p2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 64
    return-void
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 62
    return-void
.end method
