.class Lcom/helpshift/support/HSAddIssueFragment$12;
.super Ljava/lang/Object;
.source "HSAddIssueFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSAddIssueFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 426
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$12;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$12;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # getter for: Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;
    invoke-static {v0}, Lcom/helpshift/support/HSAddIssueFragment;->access$2000(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/contracts/NewConversationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment$12;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # getter for: Lcom/helpshift/support/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/helpshift/support/HSAddIssueFragment;->access$700(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/helpshift/support/contracts/NewConversationListener;->startScreenshotPreviewFragment(Ljava/lang/String;I)V

    .line 430
    return-void
.end method
