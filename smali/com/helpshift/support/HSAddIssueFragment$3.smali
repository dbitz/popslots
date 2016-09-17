.class Lcom/helpshift/support/HSAddIssueFragment$3;
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
    .line 182
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$3;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$3;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/HSAddIssueFragment;->clearScreenshot()V

    .line 186
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$3;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # invokes: Lcom/helpshift/support/HSAddIssueFragment;->handleExit()V
    invoke-static {v0}, Lcom/helpshift/support/HSAddIssueFragment;->access$1200(Lcom/helpshift/support/HSAddIssueFragment;)V

    .line 187
    return-void
.end method
