.class Lcom/helpshift/support/HSAddIssueFragment$13;
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
    .line 438
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$13;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$13;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/HSAddIssueFragment;->clearScreenshot()V

    .line 442
    return-void
.end method
