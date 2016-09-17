.class public Lcom/helpshift/support/fragments/DynamicFormFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "DynamicFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private flowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;"
        }
    .end annotation
.end field

.field private flowListView:Landroid/support/v7/widget/RecyclerView;

.field private sendAnalyticsEvent:Z

.field private supportController:Lcom/helpshift/support/controllers/SupportController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->sendAnalyticsEvent:Z

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;Ljava/util/List;Lcom/helpshift/support/controllers/SupportController;)Lcom/helpshift/support/fragments/DynamicFormFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p2, "supportController"    # Lcom/helpshift/support/controllers/SupportController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;",
            "Lcom/helpshift/support/controllers/SupportController;",
            ")",
            "Lcom/helpshift/support/fragments/DynamicFormFragment;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    new-instance v0, Lcom/helpshift/support/fragments/DynamicFormFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/DynamicFormFragment;-><init>()V

    .line 35
    .local v0, "dynamicFormFragment":Lcom/helpshift/support/fragments/DynamicFormFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/DynamicFormFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    iput-object p1, v0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowList:Ljava/util/List;

    .line 37
    iput-object p2, v0, Lcom/helpshift/support/fragments/DynamicFormFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 38
    return-object v0
.end method

.method private performAction(Lcom/helpshift/support/flows/Flow;)V
    .locals 2
    .param p1, "flow"    # Lcom/helpshift/support/flows/Flow;

    .prologue
    .line 77
    instance-of v0, p1, Lcom/helpshift/support/flows/ConversationFlow;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/helpshift/support/flows/ConversationFlow;

    iget-object v1, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/flows/ConversationFlow;->setSupportController(Lcom/helpshift/support/controllers/SupportController;)V

    .line 88
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/helpshift/support/flows/Flow;->performAction()V

    .line 89
    return-void

    .line 79
    :cond_1
    instance-of v0, p1, Lcom/helpshift/support/flows/FAQSectionFlow;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/helpshift/support/flows/FAQSectionFlow;

    iget-object v1, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/flows/FAQSectionFlow;->setSupportController(Lcom/helpshift/support/controllers/SupportController;)V

    goto :goto_0

    .line 81
    :cond_2
    instance-of v0, p1, Lcom/helpshift/support/flows/SingleFAQFlow;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/helpshift/support/flows/SingleFAQFlow;

    iget-object v1, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/flows/SingleFAQFlow;->setSupportController(Lcom/helpshift/support/controllers/SupportController;)V

    goto :goto_0

    .line 83
    :cond_3
    instance-of v0, p1, Lcom/helpshift/support/flows/DynamicFormFlow;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/helpshift/support/flows/DynamicFormFlow;

    iget-object v1, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/flows/DynamicFormFlow;->setSupportController(Lcom/helpshift/support/controllers/SupportController;)V

    goto :goto_0

    .line 85
    :cond_4
    instance-of v0, p1, Lcom/helpshift/support/flows/FAQsFlow;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/helpshift/support/flows/FAQsFlow;

    iget-object v1, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/flows/FAQsFlow;->setSupportController(Lcom/helpshift/support/controllers/SupportController;)V

    goto :goto_0
.end method

.method private showFlows()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/helpshift/support/adapters/FlowListAdapter;

    iget-object v2, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowList:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/helpshift/support/adapters/FlowListAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 71
    .local v1, "position":I
    iget-object v2, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/flows/Flow;

    .line 72
    .local v0, "flow":Lcom/helpshift/support/flows/Flow;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->sendAnalyticsEvent:Z

    .line 73
    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/DynamicFormFragment;->performAction(Lcom/helpshift/support/flows/Flow;)V

    .line 74
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
    .line 44
    sget v0, Lcom/helpshift/R$layout;->hs__dynamic_form_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/helpshift/support/fragments/DynamicFormFragment;->showFlows()V

    .line 60
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 94
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/DynamicFormFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->sendAnalyticsEvent:Z

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "dfo"

    invoke-static {v0}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->sendAnalyticsEvent:Z

    .line 98
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 103
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/DynamicFormFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->sendAnalyticsEvent:Z

    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v0, "dfc"

    invoke-static {v0}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    if-nez p2, :cond_0

    .line 51
    sget v0, Lcom/helpshift/R$id;->flow_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowListView:Landroid/support/v7/widget/RecyclerView;

    .line 52
    iget-object v0, p0, Lcom/helpshift/support/fragments/DynamicFormFragment;->flowListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    :cond_0
    return-void
.end method
