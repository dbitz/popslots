.class Lcom/helpshift/support/HSMessagesFragment$9;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 696
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 699
    const-string/jumbo v0, "message-filing"

    invoke-static {v0}, Lcom/helpshift/util/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$000(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 701
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    const/4 v1, 0x1

    # setter for: Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z
    invoke-static {v0, v1}, Lcom/helpshift/support/HSMessagesFragment;->access$1402(Lcom/helpshift/support/HSMessagesFragment;Z)Z

    .line 702
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->showMessageBox()V
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1500(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 703
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$1600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v1

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->showKeyboard(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/helpshift/support/HSMessagesFragment;->access$1700(Lcom/helpshift/support/HSMessagesFragment;Landroid/view/View;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->sendResolutionEvent(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/helpshift/support/HSMessagesFragment;->access$1800(Lcom/helpshift/support/HSMessagesFragment;Ljava/lang/Boolean;)V

    .line 707
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1900(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/contracts/HSMessagesListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/support/contracts/HSMessagesListener;->rejectResolution()V

    .line 708
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$9;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    const-string/jumbo v1, "User rejected the solution"

    invoke-interface {v0, v1}, Lcom/helpshift/support/SupportInternal$Delegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 711
    :cond_1
    return-void
.end method
