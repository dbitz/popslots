.class public Lsfs2x/client/requests/PublicMessageRequest;
.super Lsfs2x/client/requests/GenericMessageRequest;
.source "PublicMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0}, Lsfs2x/client/requests/PublicMessageRequest;-><init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/PublicMessageRequest;-><init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p3, "targetRoom"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 56
    invoke-direct {p0}, Lsfs2x/client/requests/GenericMessageRequest;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lsfs2x/client/requests/PublicMessageRequest;->type:I

    .line 58
    iput-object p1, p0, Lsfs2x/client/requests/PublicMessageRequest;->message:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lsfs2x/client/requests/PublicMessageRequest;->room:Lsfs2x/client/entities/Room;

    .line 60
    iput-object p2, p0, Lsfs2x/client/requests/PublicMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 61
    return-void
.end method
