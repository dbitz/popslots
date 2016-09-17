.class Lcom/helpshift/support/fragments/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/fragments/SearchFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/helpshift/support/fragments/SearchFragment$2;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment$2;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;
    invoke-static {v0}, Lcom/helpshift/support/fragments/SearchFragment;->access$200(Lcom/helpshift/support/fragments/SearchFragment;)Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment$2;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;
    invoke-static {v0}, Lcom/helpshift/support/fragments/SearchFragment;->access$200(Lcom/helpshift/support/fragments/SearchFragment;)Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/fragments/SearchFragment$2;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/helpshift/support/fragments/SearchFragment;->access$300(Lcom/helpshift/support/fragments/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/controllers/SupportController;->onContactUsClicked(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method
