.class Lcom/helpshift/support/HSReviewFragment$2;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSReviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSReviewFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 115
    const-string/jumbo v1, "feedback"

    invoke-static {v1}, Lcom/helpshift/support/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # invokes: Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V
    invoke-static {v1, v3}, Lcom/helpshift/support/HSReviewFragment;->access$300(Lcom/helpshift/support/HSReviewFragment;I)V

    .line 117
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # getter for: Lcom/helpshift/support/HSReviewFragment;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {v1}, Lcom/helpshift/support/HSReviewFragment;->access$100(Lcom/helpshift/support/HSReviewFragment;)Lcom/helpshift/support/HSStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getIsConversationShowing()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-virtual {v1}, Lcom/helpshift/support/HSReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "support_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    .line 122
    invoke-virtual {v2}, Lcom/helpshift/support/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "search_performed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-virtual {v1}, Lcom/helpshift/support/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
