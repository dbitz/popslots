.class Lcom/helpshift/support/HSMessagesFragment$15;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->replyConfirmation(Ljava/lang/String;Ljava/lang/Boolean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$15;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iput p2, p0, Lcom/helpshift/support/HSMessagesFragment$15;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 905
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$15;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/helpshift/support/HSMessagesFragment;->access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/helpshift/support/HSMessagesFragment$15;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 906
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 907
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 908
    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 909
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$15;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;
    invoke-static {v3}, Lcom/helpshift/support/HSMessagesFragment;->access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 911
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 912
    .local v1, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 913
    .local v2, "status":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$15;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v3}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$15;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v4}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 916
    :cond_0
    return-void
.end method
