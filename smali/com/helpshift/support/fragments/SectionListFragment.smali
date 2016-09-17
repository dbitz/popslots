.class public Lcom/helpshift/support/fragments/SectionListFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "SectionListFragment.java"


# instance fields
.field private faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/SectionListFragment;)Lcom/helpshift/support/contracts/FaqFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SectionListFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/helpshift/support/fragments/SectionListFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/SectionListFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "faqFragmentListener"    # Lcom/helpshift/support/contracts/FaqFragmentListener;

    .prologue
    .line 24
    new-instance v0, Lcom/helpshift/support/fragments/SectionListFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/SectionListFragment;-><init>()V

    .line 25
    .local v0, "sectionListFragment":Lcom/helpshift/support/fragments/SectionListFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/SectionListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    iput-object p1, v0, Lcom/helpshift/support/fragments/SectionListFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 27
    return-object v0
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
    .line 33
    sget v0, Lcom/helpshift/R$layout;->hs__section_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SectionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "sections"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 42
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    sget v3, Lcom/helpshift/R$id;->section_list:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 43
    .local v1, "sectionList":Landroid/support/v7/widget/RecyclerView;
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 44
    new-instance v0, Lcom/helpshift/support/fragments/SectionListFragment$1;

    invoke-direct {v0, p0, v2}, Lcom/helpshift/support/fragments/SectionListFragment$1;-><init>(Lcom/helpshift/support/fragments/SectionListFragment;Ljava/util/ArrayList;)V

    .line 54
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/helpshift/support/adapters/SectionListAdapter;

    invoke-direct {v3, v2, v0}, Lcom/helpshift/support/adapters/SectionListAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 55
    return-void
.end method
