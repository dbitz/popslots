.class public Lsfs2x/client/controllers/system/ResReconnectionFailure;
.super Ljava/lang/Object;
.source "ResReconnectionFailure.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    instance-of v0, p1, Lsfs2x/client/SmartFox;

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lsfs2x/client/ISmartFox;->setReconnectionSeconds(I)V

    .line 28
    check-cast p1, Lsfs2x/client/SmartFox;

    .end local p1    # "sfs":Lsfs2x/client/ISmartFox;
    invoke-virtual {p1}, Lsfs2x/client/SmartFox;->getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->stopReconnection()V

    .line 30
    :cond_0
    return-void
.end method
