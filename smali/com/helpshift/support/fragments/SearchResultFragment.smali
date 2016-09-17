.class public Lcom/helpshift/support/fragments/SearchResultFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "SearchResultFragment.java"


# instance fields
.field private onQuestionClickedListener:Landroid/view/View$OnClickListener;

.field private searchResultList:Landroid/support/v7/widget/RecyclerView;

.field private searchResultListener:Lcom/helpshift/support/contracts/SearchResultListener;

.field private sendAnywayClickedListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/SearchResultFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SearchResultFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/fragments/SearchResultFragment;)Lcom/helpshift/support/contracts/SearchResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SearchResultFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultListener:Lcom/helpshift/support/contracts/SearchResultListener;

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/SearchResultListener;)Lcom/helpshift/support/fragments/SearchResultFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "listener"    # Lcom/helpshift/support/contracts/SearchResultListener;

    .prologue
    .line 27
    new-instance v0, Lcom/helpshift/support/fragments/SearchResultFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/SearchResultFragment;-><init>()V

    .line 28
    .local v0, "searchResultFragment":Lcom/helpshift/support/fragments/SearchResultFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/SearchResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    iput-object p1, v0, Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultListener:Lcom/helpshift/support/contracts/SearchResultListener;

    .line 30
    return-object v0
.end method

.method private showResults()V
    .locals 5

    .prologue
    .line 72
    const/4 v0, 0x3

    .line 73
    .local v0, "resultSize":I
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "results"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 75
    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 77
    :cond_0
    new-instance v2, Lcom/helpshift/support/adapters/SearchResultAdapter;

    iget-object v3, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->sendAnywayClickedListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3, v4}, Lcom/helpshift/support/adapters/SearchResultAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 80
    .local v2, "searchResultAdapter":Lcom/helpshift/support/adapters/SearchResultAdapter;
    iget-object v3, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    sget v0, Lcom/helpshift/R$layout;->hs__search_result_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SearchResultFragment;->showResults()V

    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/helpshift/R$id;->search_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultList:Landroid/support/v7/widget/RecyclerView;

    .line 44
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->searchResultList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 45
    new-instance v0, Lcom/helpshift/support/fragments/SearchResultFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/SearchResultFragment$1;-><init>(Lcom/helpshift/support/fragments/SearchResultFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/helpshift/support/fragments/SearchResultFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/SearchResultFragment$2;-><init>(Lcom/helpshift/support/fragments/SearchResultFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SearchResultFragment;->sendAnywayClickedListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method
