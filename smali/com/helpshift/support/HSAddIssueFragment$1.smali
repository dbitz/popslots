.class Lcom/helpshift/support/HSAddIssueFragment$1;
.super Landroid/os/Handler;
.source "HSAddIssueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSAddIssueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSAddIssueFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSAddIssueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$1;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 124
    .local v0, "result":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 125
    .local v1, "status":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment$1;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-virtual {v2}, Lcom/helpshift/support/HSAddIssueFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment$1;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-virtual {v3}, Lcom/helpshift/support/HSAddIssueFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment$1;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    const/4 v3, 0x0

    # invokes: Lcom/helpshift/support/HSAddIssueFragment;->setIsReportingIssue(Z)V
    invoke-static {v2, v3}, Lcom/helpshift/support/HSAddIssueFragment;->access$000(Lcom/helpshift/support/HSAddIssueFragment;Z)V

    .line 129
    return-void
.end method
