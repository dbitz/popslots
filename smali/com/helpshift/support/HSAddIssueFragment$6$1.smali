.class Lcom/helpshift/support/HSAddIssueFragment$6$1;
.super Landroid/os/Handler;
.source "HSAddIssueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSAddIssueFragment$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/support/HSAddIssueFragment$6;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSAddIssueFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/helpshift/support/HSAddIssueFragment$6;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$6$1;->this$1:Lcom/helpshift/support/HSAddIssueFragment$6;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment$6$1;->this$1:Lcom/helpshift/support/HSAddIssueFragment$6;

    iget-object v1, v1, Lcom/helpshift/support/HSAddIssueFragment$6;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # getter for: Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v1}, Lcom/helpshift/support/HSAddIssueFragment;->access$200(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment$6$1;->this$1:Lcom/helpshift/support/HSAddIssueFragment$6;

    iget-object v2, v2, Lcom/helpshift/support/HSAddIssueFragment$6;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    iget-object v2, v2, Lcom/helpshift/support/HSAddIssueFragment;->reportHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment$6$1;->this$1:Lcom/helpshift/support/HSAddIssueFragment$6;

    iget-object v3, v3, Lcom/helpshift/support/HSAddIssueFragment$6;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # getter for: Lcom/helpshift/support/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/helpshift/support/HSAddIssueFragment;->access$1500(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment$6$1;->this$1:Lcom/helpshift/support/HSAddIssueFragment$6;

    iget-object v4, v4, Lcom/helpshift/support/HSAddIssueFragment$6;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    .line 255
    # invokes: Lcom/helpshift/support/HSAddIssueFragment;->getIssueText()Ljava/lang/String;
    invoke-static {v4}, Lcom/helpshift/support/HSAddIssueFragment;->access$1600(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment$6$1;->this$1:Lcom/helpshift/support/HSAddIssueFragment$6;

    iget-object v5, v5, Lcom/helpshift/support/HSAddIssueFragment$6;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # invokes: Lcom/helpshift/support/HSAddIssueFragment;->getUserInfo()Ljava/util/HashMap;
    invoke-static {v5}, Lcom/helpshift/support/HSAddIssueFragment;->access$1700(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/util/HashMap;

    move-result-object v5

    .line 254
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/helpshift/support/HSApiData;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/helpshift/exceptions/IdentityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lcom/helpshift/exceptions/IdentityException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Something really foul has happened"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
