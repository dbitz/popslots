.class public Lsfs2x/client/requests/ModeratorMessageRequest;
.super Lsfs2x/client/requests/GenericMessageRequest;
.source "ModeratorMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/requests/MessageRecipientMode;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recipientMode"    # Lsfs2x/client/requests/MessageRecipientMode;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/ModeratorMessageRequest;-><init>(Ljava/lang/String;Lsfs2x/client/requests/MessageRecipientMode;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/requests/MessageRecipientMode;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recipientMode"    # Lsfs2x/client/requests/MessageRecipientMode;
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 49
    invoke-direct {p0}, Lsfs2x/client/requests/GenericMessageRequest;-><init>()V

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RecipientMode cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lsfs2x/client/requests/ModeratorMessageRequest;->type:I

    .line 55
    iput-object p1, p0, Lsfs2x/client/requests/ModeratorMessageRequest;->message:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lsfs2x/client/requests/ModeratorMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 57
    invoke-virtual {p2}, Lsfs2x/client/requests/MessageRecipientMode;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/ModeratorMessageRequest;->recipient:Ljava/lang/Object;

    .line 58
    invoke-virtual {p2}, Lsfs2x/client/requests/MessageRecipientMode;->getMode()I

    move-result v0

    iput v0, p0, Lsfs2x/client/requests/ModeratorMessageRequest;->sendMode:I

    .line 59
    return-void
.end method
