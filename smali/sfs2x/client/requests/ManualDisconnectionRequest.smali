.class public Lsfs2x/client/requests/ManualDisconnectionRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "ManualDisconnectionRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 27
    return-void
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method
