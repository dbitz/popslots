.class Lcom/helpshift/support/HSAddIssueFragment$5;
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
    .line 226
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$5;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$5;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # getter for: Lcom/helpshift/support/HSAddIssueFragment;->msgData:Lcom/helpshift/support/viewstructs/HSMsg;
    invoke-static {v0}, Lcom/helpshift/support/HSAddIssueFragment;->access$800(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/viewstructs/HSMsg;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 230
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$5;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/HSAddIssueFragment;->clearScreenshot()V

    .line 231
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$5;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # invokes: Lcom/helpshift/support/HSAddIssueFragment;->handleExit()V
    invoke-static {v0}, Lcom/helpshift/support/HSAddIssueFragment;->access$1200(Lcom/helpshift/support/HSAddIssueFragment;)V

    .line 232
    return-void
.end method
