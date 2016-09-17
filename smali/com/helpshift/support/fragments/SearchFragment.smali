.class public Lcom/helpshift/support/fragments/SearchFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/helpshift/support/contracts/SearchListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private currentQuery:Ljava/lang/String;

.field private data:Lcom/helpshift/support/HSApiData;

.field private faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

.field private faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

.field private onContactUsClickedListener:Landroid/view/View$OnClickListener;

.field private onQuestionClickedListener:Landroid/view/View$OnClickListener;

.field private searchList:Landroid/support/v7/widget/RecyclerView;

.field private sectionId:Ljava/lang/String;

.field private supportController:Lcom/helpshift/support/controllers/SupportController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/helpshift/support/fragments/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/fragments/SearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/SearchFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SearchFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/fragments/SearchFragment;)Lcom/helpshift/support/contracts/FaqFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SearchFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/fragments/SearchFragment;)Lcom/helpshift/support/controllers/SupportController;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SearchFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/helpshift/support/fragments/SearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SearchFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SearchFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    new-instance v0, Lcom/helpshift/support/fragments/SearchFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/SearchFragment;-><init>()V

    .line 45
    .local v0, "searchFragment":Lcom/helpshift/support/fragments/SearchFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v0
.end method


# virtual methods
.method public getCurrentQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 75
    new-instance v1, Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/support/fragments/SearchFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 76
    iget-object v1, p0, Lcom/helpshift/support/fragments/SearchFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->loadIndex()V

    .line 77
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 78
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/SearchFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 81
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/SearchFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v1, "withTagsMatching"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/FaqTagFilter;

    iput-object v1, p0, Lcom/helpshift/support/fragments/SearchFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    .line 64
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    sget v0, Lcom/helpshift/R$layout;->hs__search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "sectionId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 126
    iput-object p1, p0, Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/helpshift/support/fragments/SearchFragment;->sectionId:Ljava/lang/String;

    .line 129
    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    if-nez v6, :cond_0

    .line 178
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v4, 0x0

    .line 136
    .local v4, "searchWithAny":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "currentLang":Ljava/lang/String;
    const-string/jumbo v6, "zh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ja"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ko"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    :cond_1
    const/4 v4, 0x1

    .line 141
    :cond_2
    if-nez p1, :cond_5

    .line 142
    const-string/jumbo p1, ""

    .line 147
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    if-nez v4, :cond_6

    .line 149
    :cond_3
    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v7, p0, Lcom/helpshift/support/fragments/SearchFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v6, v7}, Lcom/helpshift/support/HSApiData;->getAllFaqs(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v3

    .line 154
    .local v3, "searchResult":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v5, "sectionResults":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 157
    .local v1, "question":Lcom/helpshift/support/Faq;
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getSectionPublishId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 158
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 144
    .end local v1    # "question":Lcom/helpshift/support/Faq;
    .end local v3    # "searchResult":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    .end local v5    # "sectionResults":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 151
    :cond_6
    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->data:Lcom/helpshift/support/HSApiData;

    sget-object v7, Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;->FULL_SEARCH:Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    iget-object v8, p0, Lcom/helpshift/support/fragments/SearchFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v6, p1, v7, v8}, Lcom/helpshift/support/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v3

    .restart local v3    # "searchResult":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    goto :goto_2

    .line 161
    .restart local v5    # "sectionResults":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    :cond_7
    move-object v3, v5

    .line 164
    .end local v5    # "sectionResults":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    :cond_8
    new-instance v2, Lcom/helpshift/support/adapters/SearchListAdapter;

    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;

    iget-object v7, p0, Lcom/helpshift/support/fragments/SearchFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Lcom/helpshift/support/fragments/SearchFragment;->onContactUsClickedListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v6, v3, v7, v8}, Lcom/helpshift/support/adapters/SearchListAdapter;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 168
    .local v2, "searchListAdapter":Lcom/helpshift/support/adapters/SearchListAdapter;
    invoke-virtual {v2, v11}, Lcom/helpshift/support/adapters/SearchListAdapter;->setHasStableIds(Z)V

    .line 169
    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    if-nez v6, :cond_9

    .line 170
    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 172
    :cond_9
    iget-object v6, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/helpshift/support/adapters/SearchListAdapter;

    iget-object v8, p0, Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;

    iget-object v9, p0, Lcom/helpshift/support/fragments/SearchFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    iget-object v10, p0, Lcom/helpshift/support/fragments/SearchFragment;->onContactUsClickedListener:Landroid/view/View$OnClickListener;

    invoke-direct {v7, v8, v3, v9, v10}, Lcom/helpshift/support/adapters/SearchListAdapter;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v7, v11}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SearchFragment;->addVisibleFragment()V

    .line 115
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 120
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SearchFragment;->removeVisibleFragment()V

    .line 121
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    sget v0, Lcom/helpshift/R$id;->search_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    .line 87
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->searchList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 88
    new-instance v0, Lcom/helpshift/support/fragments/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/SearchFragment$1;-><init>(Lcom/helpshift/support/fragments/SearchFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/helpshift/support/fragments/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/SearchFragment$2;-><init>(Lcom/helpshift/support/fragments/SearchFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->onContactUsClickedListener:Landroid/view/View$OnClickListener;

    .line 108
    iget-object v0, p0, Lcom/helpshift/support/fragments/SearchFragment;->currentQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/support/fragments/SearchFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/fragments/SearchFragment;->onQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setFaqFragmentListener(Lcom/helpshift/support/contracts/FaqFragmentListener;)V
    .locals 0
    .param p1, "faqFragmentListener"    # Lcom/helpshift/support/contracts/FaqFragmentListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/helpshift/support/fragments/SearchFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 51
    return-void
.end method
