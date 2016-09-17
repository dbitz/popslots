.class Lcom/helpshift/support/HSMessagesFragment$4;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$4;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 179
    .local v0, "result":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 180
    .local v1, "status":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$4;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    .line 181
    # getter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$4;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$4;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v2}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$4;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v3}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 187
    :cond_1
    return-void
.end method
