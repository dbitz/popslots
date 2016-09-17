.class public Lcom/helpshift/support/fragments/FaqFlowFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "FaqFlowFragment.java"

# interfaces
.implements Lcom/helpshift/support/contracts/FaqFlowView;


# instance fields
.field private faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

.field private selectQuestionView:Landroid/view/View;

.field private verticalDivider:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/FaqFlowFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    new-instance v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;-><init>()V

    .line 24
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public getFaqFlowController()Lcom/helpshift/support/controllers/FaqFlowController;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    return-object v0
.end method

.method public getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/SupportFragment;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/helpshift/support/controllers/FaqFlowController;

    .line 38
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/helpshift/support/controllers/FaqFlowController;-><init>(Lcom/helpshift/support/contracts/FaqFlowView;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    .line 40
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchListeners(Lcom/helpshift/support/controllers/FaqFlowController;)V

    .line 42
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
    .line 47
    sget v0, Lcom/helpshift/R$layout;->hs__faq_flow_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/FaqFlowController;->quitPoller()V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/FaqFlowController;->stopPoller()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/FaqFlowController;->start()V

    .line 61
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->faqFlowController:Lcom/helpshift/support/controllers/FaqFlowController;

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/FaqFlowController;->startPoller()V

    .line 62
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI()V

    .line 63
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/helpshift/R$id;->vertical_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->verticalDivider:Landroid/view/View;

    .line 54
    sget v0, Lcom/helpshift/R$id;->select_question_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->selectQuestionView:Landroid/view/View;

    .line 55
    return-void
.end method

.method public retryGetSections()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getFaqFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/compositions/FaqFragment;

    move-result-object v0

    .line 114
    .local v0, "faqFragment":Lcom/helpshift/support/compositions/FaqFragment;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/helpshift/support/compositions/FaqFragment;->retryGetSections()V

    .line 117
    :cond_0
    return-void
.end method

.method public showVerticalDivider(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->verticalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->verticalDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->verticalDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSelectQuestionUI()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->selectQuestionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/helpshift/R$id;->details_fragment_container:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI(Z)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI(Z)V

    goto :goto_0
.end method

.method public updateSelectQuestionUI(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->selectQuestionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->selectQuestionView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;->selectQuestionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
