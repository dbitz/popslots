.class public Lsfs2x/client/requests/AdminMessageRequest;
.super Lsfs2x/client/requests/GenericMessageRequest;
.source "AdminMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/requests/MessageRecipientMode;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recipientMode"    # Lsfs2x/client/requests/MessageRecipientMode;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/AdminMessageRequest;-><init>(Ljava/lang/String;Lsfs2x/client/requests/MessageRecipientMode;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/requests/MessageRecipientMode;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recipientMode"    # Lsfs2x/client/requests/MessageRecipientMode;
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 48
    invoke-direct {p0}, Lsfs2x/client/requests/GenericMessageRequest;-><init>()V

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RecipientMode cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lsfs2x/client/requests/AdminMessageRequest;->type:I

    .line 54
    iput-object p1, p0, Lsfs2x/client/requests/AdminMessageRequest;->message:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lsfs2x/client/requests/AdminMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 56
    invoke-virtual {p2}, Lsfs2x/client/requests/MessageRecipientMode;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/AdminMessageRequest;->recipient:Ljava/lang/Object;

    .line 57
    invoke-virtual {p2}, Lsfs2x/client/requests/MessageRecipientMode;->getMode()I

    move-result v0

    iput v0, p0, Lsfs2x/client/requests/AdminMessageRequest;->sendMode:I

    .line 58
    return-void
.end method
