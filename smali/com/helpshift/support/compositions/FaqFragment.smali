.class public Lcom/helpshift/support/compositions/FaqFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "FaqFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/compositions/FaqFragment$Failure;,
        Lcom/helpshift/support/compositions/FaqFragment$Success;,
        Lcom/helpshift/support/compositions/FaqFragment$FaqLoadingStatus;
    }
.end annotation


# static fields
.field private static sectionsSize:I


# instance fields
.field private data:Lcom/helpshift/support/HSApiData;

.field private faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

.field private faqTagFilter:Lcom/helpshift/support/FaqTagFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/compositions/FaqFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/helpshift/support/compositions/FaqFragment;->removeEmptySections(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 33
    sput p0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/helpshift/support/compositions/FaqFragment;Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/compositions/FaqFragment;
    .param p1, "x1"    # Lcom/helpshift/support/compositions/FaqFragment;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/compositions/FaqFragment;->updateFragment(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/compositions/FaqFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "faqFragmentListener"    # Lcom/helpshift/support/contracts/FaqFragmentListener;

    .prologue
    .line 41
    new-instance v0, Lcom/helpshift/support/compositions/FaqFragment;

    invoke-direct {v0}, Lcom/helpshift/support/compositions/FaqFragment;-><init>()V

    .line 42
    .local v0, "faqFragment":Lcom/helpshift/support/compositions/FaqFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/compositions/FaqFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    iput-object p1, v0, Lcom/helpshift/support/compositions/FaqFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 44
    return-object v0
.end method

.method private removeEmptySections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "nonEmptySections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/Section;

    .line 176
    .local v2, "section":Lcom/helpshift/support/Section;
    iget-object v4, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v4, v5, v6}, Lcom/helpshift/support/HSApiData;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    .local v0, "faqsForSection":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "faqsForSection":Ljava/util/ArrayList;
    .end local v2    # "section":Lcom/helpshift/support/Section;
    :cond_1
    return-object v1
.end method

.method private sendFaqLoadedEvent()V
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 97
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/fragments/SupportFragment;->setFaqLoaded(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method private updateFragment(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "faqFragment"    # Lcom/helpshift/support/compositions/FaqFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/support/compositions/FaqFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    const/4 v3, 0x0

    .line 48
    iget-object v0, p1, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v1, p1, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v0, p2, v1}, Lcom/helpshift/support/HSApiData;->getPopulatedSections(Ljava/util/ArrayList;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sectionPublishId"

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Section;

    invoke-virtual {v0}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p1, Lcom/helpshift/support/compositions/FaqFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 53
    invoke-static {v9, v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/QuestionListFragment;

    move-result-object v2

    .line 56
    .local v2, "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    :try_start_0
    invoke-virtual {p1}, Lcom/helpshift/support/compositions/FaqFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/helpshift/R$id;->faq_fragment_container:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v2    # "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    :goto_0
    invoke-direct {p0}, Lcom/helpshift/support/compositions/FaqFragment;->sendFaqLoadedEvent()V

    .line 93
    return-void

    .line 71
    .end local v9    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1}, Lcom/helpshift/support/compositions/FaqFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 72
    .restart local v9    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "sections"

    invoke-virtual {v9, v0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    iget-object v0, p1, Lcom/helpshift/support/compositions/FaqFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 74
    invoke-static {v9, v0}, Lcom/helpshift/support/fragments/SectionListFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/SectionListFragment;

    move-result-object v5

    .line 77
    .local v5, "sectionListFragment":Lcom/helpshift/support/fragments/SectionListFragment;
    :try_start_1
    invoke-virtual {p1}, Lcom/helpshift/support/compositions/FaqFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    sget v4, Lcom/helpshift/R$id;->faq_fragment_container:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0

    .line 62
    .end local v5    # "sectionListFragment":Lcom/helpshift/support/fragments/SectionListFragment;
    .restart local v2    # "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/helpshift/support/compositions/FaqFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v1, "withTagsMatching"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/FaqTagFilter;

    iput-object v1, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    .line 127
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
    .line 132
    sget v0, Lcom/helpshift/R$layout;->hs__faq_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 144
    sget v0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v1, Lcom/helpshift/support/compositions/FaqFragment$Success;

    invoke-direct {v1, p0}, Lcom/helpshift/support/compositions/FaqFragment$Success;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    new-instance v2, Lcom/helpshift/support/compositions/FaqFragment$Failure;

    invoke-direct {v2, p0}, Lcom/helpshift/support/compositions/FaqFragment$Failure;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    iget-object v3, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 153
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "l"

    invoke-static {v0}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->addVisibleFragment()V

    .line 157
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 162
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->removeVisibleFragment()V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 164
    return-void
.end method

.method public retryGetSections()V
    .locals 4

    .prologue
    .line 167
    sget v0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v1, Lcom/helpshift/support/compositions/FaqFragment$Success;

    invoke-direct {v1, p0}, Lcom/helpshift/support/compositions/FaqFragment$Success;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    new-instance v2, Lcom/helpshift/support/compositions/FaqFragment$Failure;

    invoke-direct {v2, p0}, Lcom/helpshift/support/compositions/FaqFragment$Failure;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    iget-object v3, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    .line 171
    return-void
.end method

.method public updateFaqLoadingUI(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    .line 104
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    const/4 v1, 0x0

    .line 105
    .local v1, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .end local v1    # "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    check-cast v1, Lcom/helpshift/support/fragments/SupportFragment;

    .line 108
    .restart local v1    # "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    :cond_0
    if-eqz v1, :cond_1

    .line 109
    if-ne p1, v3, :cond_2

    .line 110
    invoke-virtual {v0, v3}, Lcom/helpshift/support/fragments/FaqFlowFragment;->showVerticalDivider(Z)V

    .line 111
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI()V

    .line 116
    :goto_0
    invoke-virtual {v1, p1}, Lcom/helpshift/support/fragments/SupportFragment;->updateFaqLoadingUI(I)V

    .line 118
    :cond_1
    return-void

    .line 113
    :cond_2
    invoke-virtual {v0, v2}, Lcom/helpshift/support/fragments/FaqFlowFragment;->showVerticalDivider(Z)V

    .line 114
    invoke-virtual {v0, v2}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI(Z)V

    goto :goto_0
.end method
