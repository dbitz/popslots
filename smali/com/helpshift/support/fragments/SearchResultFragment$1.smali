.class Lcom/helpshift/support/fragments/SearchResultFragment$1;
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
    .line 45
    iput-object p1, p0, Lcom/helpshift/support/fragments/SearchResultFragment$1;->this$0:Lcom/helpshift/support/fragments/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "questionPublishId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 50
    .local v2, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/helpshift/support/fragments/SearchResultFragment$1;->this$0:Lcom/helpshift/support/fragments/SearchResultFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultList:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v3}, Lcom/helpshift/support/fragments/SearchResultFragment;->access$000(Lcom/helpshift/support/fragments/SearchResultFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/adapters/SearchResultAdapter;

    invoke-virtual {v3, v1}, Lcom/helpshift/support/adapters/SearchResultAdapter;->getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;

    move-result-object v0

    .line 51
    .local v0, "faq":Lcom/helpshift/support/Faq;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v2

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/helpshift/support/fragments/SearchResultFragment$1;->this$0:Lcom/helpshift/support/fragments/SearchResultFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultListener:Lcom/helpshift/support/contracts/SearchResultListener;
    invoke-static {v3}, Lcom/helpshift/support/fragments/SearchResultFragment;->access$100(Lcom/helpshift/support/fragments/SearchResultFragment;)Lcom/helpshift/support/contracts/SearchResultListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/helpshift/support/contracts/SearchResultListener;->onQuestionSelected(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    return-void
.end method
