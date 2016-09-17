.class Lcom/helpshift/support/HSApiData$12;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$12;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$12;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 922
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$12;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v3, v3, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/HSApiData$12;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 923
    .local v0, "activeCnt":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$12;->val$success:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 924
    .local v2, "msgToPost":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v1, "countData":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    const-string/jumbo v3, "cache"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 927
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 928
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$12;->val$success:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 929
    return-void
.end method
