.class Lcom/helpshift/support/HSService$1;
.super Landroid/os/Handler;
.source "HSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSService;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSService;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    # invokes: Lcom/helpshift/support/HSService;->isAppOnForeground()Z
    invoke-static {v1}, Lcom/helpshift/support/HSService;->access$000(Lcom/helpshift/support/HSService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    # getter for: Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/helpshift/support/HSService;->access$100(Lcom/helpshift/support/HSService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    # getter for: Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;
    invoke-static {}, Lcom/helpshift/support/HSService;->access$200()Lcom/helpshift/support/util/HSPolling;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    # getter for: Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;
    invoke-static {}, Lcom/helpshift/support/HSService;->access$200()Lcom/helpshift/support/util/HSPolling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/util/HSPolling;->resetInterval()V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/helpshift/support/HSService;->access$102(Lcom/helpshift/support/HSService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 85
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    .line 86
    # getter for: Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;
    invoke-static {}, Lcom/helpshift/support/HSService;->access$200()Lcom/helpshift/support/util/HSPolling;

    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Lcom/helpshift/support/util/HSNotification;->getNotifHandler(Landroid/content/Context;Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;

    move-result-object v0

    .line 87
    .local v0, "notifHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    # getter for: Lcom/helpshift/support/HSService;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {v1}, Lcom/helpshift/support/HSService;->access$300(Lcom/helpshift/support/HSService;)Lcom/helpshift/support/HSApiData;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/support/HSApiData;->getNotificationData(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 92
    .end local v0    # "notifHandler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/helpshift/support/HSService;->access$102(Lcom/helpshift/support/HSService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 90
    iget-object v1, p0, Lcom/helpshift/support/HSService$1;->this$0:Lcom/helpshift/support/HSService;

    invoke-virtual {v1}, Lcom/helpshift/support/HSService;->stopSelf()V

    goto :goto_0
.end method
