.class public Lsfs2x/client/controllers/system/ResClientDisconnect;
.super Ljava/lang/Object;
.source "ResClientDisconnect.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v1

    .line 18
    .local v1, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v2, "dr"

    invoke-interface {v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 20
    .local v0, "reasonId":I
    invoke-static {v0}, Lsfs2x/client/util/ClientDisconnectionReason;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lsfs2x/client/ISmartFox;->handleClientDisconnection(Ljava/lang/String;)V

    .line 21
    return-void
.end method
