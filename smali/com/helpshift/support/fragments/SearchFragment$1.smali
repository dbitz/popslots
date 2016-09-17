.class Lcom/helpshift/support/fragments/SearchFragment$1;
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
    .line 88
    iput-object p1, p0, Lcom/helpshift/support/fragments/SearchFragment$1;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "questionPublishId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 93
    .local v2, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/helpshift/support/fragments/SearchFragment$1;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v3}, Lcom/helpshift/support/fragments/SearchFragment;->access$000(Lcom/helpshift/support/fragments/SearchFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/adapters/SearchListAdapter;

    invoke-virtual {v3, v1}, Lcom/helpshift/support/adapters/SearchListAdapter;->getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;

    move-result-object v0

    .line 94
    .local v0, "faq":Lcom/helpshift/support/Faq;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v2

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/helpshift/support/fragments/SearchFragment$1;->this$0:Lcom/helpshift/support/fragments/SearchFragment;

    # getter for: Lcom/helpshift/support/fragments/SearchFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;
    invoke-static {v3}, Lcom/helpshift/support/fragments/SearchFragment;->access$100(Lcom/helpshift/support/fragments/SearchFragment;)Lcom/helpshift/support/contracts/FaqFragmentListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/helpshift/support/contracts/FaqFragmentListener;->onQuestionSelected(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    return-void
.end method
