.class public Lsfs2x/client/requests/ObjectMessageRequest;
.super Lsfs2x/client/requests/GenericMessageRequest;
.source "ObjectMessageRequest.java"


# direct methods
.method public constructor <init>(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v0}, Lsfs2x/client/requests/ObjectMessageRequest;-><init>(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;)V
    .locals 1
    .param p1, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p2, "targetRoom"    # Lsfs2x/client/entities/Room;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/ObjectMessageRequest;-><init>(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Lsfs2x/client/entities/Room;Ljava/util/List;)V
    .locals 1
    .param p1, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p2, "targetRoom"    # Lsfs2x/client/entities/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartfoxserver/v2/entities/data/ISFSObject;",
            "Lsfs2x/client/entities/Room;",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "recipients":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/User;>;"
    invoke-direct {p0}, Lsfs2x/client/requests/GenericMessageRequest;-><init>()V

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lsfs2x/client/requests/ObjectMessageRequest;->type:I

    .line 59
    iput-object p1, p0, Lsfs2x/client/requests/ObjectMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 60
    iput-object p2, p0, Lsfs2x/client/requests/ObjectMessageRequest;->room:Lsfs2x/client/entities/Room;

    .line 61
    iput-object p3, p0, Lsfs2x/client/requests/ObjectMessageRequest;->recipient:Ljava/lang/Object;

    .line 62
    return-void
.end method
