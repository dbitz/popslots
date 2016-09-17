.class Lcom/helpshift/support/fragments/SupportFragment$1;
.super Ljava/lang/Object;
.source "SupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/SupportFragment;->attachMenuListeners(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/fragments/SupportFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/SupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/fragments/SupportFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/helpshift/support/fragments/SupportFragment$1;->this$0:Lcom/helpshift/support/fragments/SupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment$1;->this$0:Lcom/helpshift/support/fragments/SupportFragment;

    # getter for: Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;
    invoke-static {v0}, Lcom/helpshift/support/fragments/SupportFragment;->access$100(Lcom/helpshift/support/fragments/SupportFragment;)Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment$1;->this$0:Lcom/helpshift/support/fragments/SupportFragment;

    # getter for: Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/helpshift/support/fragments/SupportFragment;->access$000(Lcom/helpshift/support/fragments/SupportFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/controllers/SupportController;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 151
    return-void
.end method
