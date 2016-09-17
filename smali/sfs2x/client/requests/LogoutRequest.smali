.class public Lsfs2x/client/requests/LogoutRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "LogoutRequest.java"


# static fields
.field public static final KEY_ZONE_NAME:Ljava/lang/String; = "zn"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 0
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 61
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
    .line 52
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v1, "LogoutRequest Error"

    const-string/jumbo v2, "You are not logged in a the moment!"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method
