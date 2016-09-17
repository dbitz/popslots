.class public Lsfs2x/client/requests/buddylist/BuddyMessageRequest;
.super Lsfs2x/client/requests/GenericMessageRequest;
.source "BuddyMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/entities/Buddy;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "targetBuddy"    # Lsfs2x/client/entities/Buddy;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/requests/buddylist/BuddyMessageRequest;-><init>(Ljava/lang/String;Lsfs2x/client/entities/Buddy;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/entities/Buddy;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "targetBuddy"    # Lsfs2x/client/entities/Buddy;
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 68
    invoke-direct {p0}, Lsfs2x/client/requests/GenericMessageRequest;-><init>()V

    .line 69
    const/4 v0, 0x5

    iput v0, p0, Lsfs2x/client/requests/buddylist/BuddyMessageRequest;->type:I

    .line 70
    iput-object p1, p0, Lsfs2x/client/requests/buddylist/BuddyMessageRequest;->message:Ljava/lang/String;

    .line 71
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lsfs2x/client/entities/Buddy;->getId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/buddylist/BuddyMessageRequest;->recipient:Ljava/lang/Object;

    .line 72
    iput-object p3, p0, Lsfs2x/client/requests/buddylist/BuddyMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
