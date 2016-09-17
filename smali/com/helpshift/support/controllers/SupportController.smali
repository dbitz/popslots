.class public Lcom/helpshift/support/controllers/SupportController;
.super Ljava/lang/Object;
.source "SupportController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private isControllerStarted:Z

.field private searchPerformed:Z

.field private supportMode:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/controllers/SupportController;->searchPerformed:Z

    .line 32
    iput-object p1, p0, Lcom/helpshift/support/controllers/SupportController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 33
    iput-object p2, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    .line 34
    return-void
.end method

.method private getFaqFlowController()Lcom/helpshift/support/controllers/FaqFlowController;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/helpshift/support/controllers/SupportController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getFaqFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;

    move-result-object v0

    .line 134
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getFaqFlowController()Lcom/helpshift/support/controllers/FaqFlowController;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public getSupportMode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/helpshift/support/controllers/SupportController;->supportMode:I

    return v0
.end method

.method public onContactUsClicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/helpshift/support/controllers/SupportController;->getFaqFlowController()Lcom/helpshift/support/controllers/FaqFlowController;

    move-result-object v0

    .line 121
    .local v0, "faqFlowController":Lcom/helpshift/support/controllers/FaqFlowController;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/helpshift/support/controllers/FaqFlowController;->performedSearch()V

    .line 125
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "chatLaunchSource"

    const-string/jumbo v3, "support"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/helpshift/support/controllers/SupportController;->startConversationFlow(Landroid/os/Bundle;Z)V

    .line 130
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 112
    .local v0, "menuItemId":I
    sget v1, Lcom/helpshift/R$id;->hs__contact_us:I

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/helpshift/support/controllers/SupportController;->onContactUsClicked(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSearchPerformed(Z)V
    .locals 0
    .param p1, "searchPerformed"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/helpshift/support/controllers/SupportController;->searchPerformed:Z

    .line 38
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-boolean v0, p0, Lcom/helpshift/support/controllers/SupportController;->isControllerStarted:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "support_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/helpshift/support/controllers/SupportController;->supportMode:I

    .line 43
    iget v0, p0, Lcom/helpshift/support/controllers/SupportController;->supportMode:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lcom/helpshift/support/controllers/SupportController;->startFaqFlow(Landroid/os/Bundle;Z)V

    .line 55
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/controllers/SupportController;->isControllerStarted:Z

    .line 56
    return-void

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lcom/helpshift/support/controllers/SupportController;->startConversationFlow(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-static {}, Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;->getFlowList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/helpshift/support/controllers/SupportController;->startDynamicForm(Ljava/util/List;Z)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startConversationFlow(Landroid/os/Bundle;Z)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 73
    const-string/jumbo v0, "search_performed"

    iget-boolean v1, p0, Lcom/helpshift/support/controllers/SupportController;->searchPerformed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-static {p1}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v2

    .line 75
    .local v2, "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    const/4 v4, 0x0

    .line 76
    .local v4, "backStackName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 77
    const-class v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->flow_fragment_container:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public startDynamicForm(Ljava/util/List;Z)V
    .locals 6
    .param p2, "addToBackStack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p1, p0}, Lcom/helpshift/support/fragments/DynamicFormFragment;->newInstance(Landroid/os/Bundle;Ljava/util/List;Lcom/helpshift/support/controllers/SupportController;)Lcom/helpshift/support/fragments/DynamicFormFragment;

    move-result-object v2

    .line 89
    .local v2, "dynamicFormFragment":Lcom/helpshift/support/fragments/DynamicFormFragment;
    const/4 v4, 0x0

    .line 90
    .local v4, "backStackName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 91
    const-class v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->flow_fragment_container:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public startFaqFlow(Landroid/os/Bundle;Z)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 59
    invoke-static {p1}, Lcom/helpshift/support/fragments/FaqFlowFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/FaqFlowFragment;

    move-result-object v2

    .line 60
    .local v2, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    const/4 v4, 0x0

    .line 61
    .local v4, "backStackName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 62
    const-class v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/controllers/SupportController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->flow_fragment_container:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method
