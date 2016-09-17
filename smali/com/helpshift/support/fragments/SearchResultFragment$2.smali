.class Lcom/helpshift/support/fragments/SearchResultFragment$2;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/SearchResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/fragments/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/SearchResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/fragments/SearchResultFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/helpshift/support/fragments/SearchResultFragment$2;->this$0:Lcom/helpshift/support/fragments/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment$2;->this$0:Lcom/helpshift/support/fragments/SearchResultFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultListener:Lcom/helpshift/support/contracts/SearchResultListener;
    invoke-static {v0}, Lcom/helpshift/support/fragments/SearchResultFragment;->access$100(Lcom/helpshift/support/fragments/SearchResultFragment;)Lcom/helpshift/support/contracts/SearchResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/support/contracts/SearchResultListener;->sendAnyway()V

    .line 61
    return-void
.end method
