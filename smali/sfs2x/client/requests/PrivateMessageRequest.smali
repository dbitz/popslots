.class public Lsfs2x/client/requests/PrivateMessageRequest;
.super Lsfs2x/client/requests/GenericMessageRequest;
.source "PrivateMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recipientId"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/PrivateMessageRequest;-><init>(Ljava/lang/String;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recipientId"    # I
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 50
    invoke-direct {p0}, Lsfs2x/client/requests/GenericMessageRequest;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lsfs2x/client/requests/PrivateMessageRequest;->type:I

    .line 52
    iput-object p1, p0, Lsfs2x/client/requests/PrivateMessageRequest;->message:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/PrivateMessageRequest;->recipient:Ljava/lang/Object;

    .line 54
    iput-object p3, p0, Lsfs2x/client/requests/PrivateMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 55
    return-void
.end method
