.class public Lcom/helpshift/support/controllers/FaqFlowController;
.super Ljava/lang/Object;
.source "FaqFlowController.java"

# interfaces
.implements Lcom/helpshift/support/contracts/FaqFragmentListener;
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;
    }
.end annotation


# static fields
.field private static final POLLING_INTERVAL:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

.field private currentQuery:Ljava/lang/String;

.field private final data:Lcom/helpshift/support/HSApiData;

.field private final faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;

.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private isControllerStarted:Z

.field private final isScreenLarge:Z

.field private lastQuery:Ljava/lang/String;

.field private retainSearchFragmentState:Z

.field private searchListener:Lcom/helpshift/support/contracts/SearchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/helpshift/support/controllers/FaqFlowController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/controllers/FaqFlowController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/helpshift/support/contracts/FaqFlowView;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "faqFlowView"    # Lcom/helpshift/support/contracts/FaqFlowView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    .line 58
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->lastQuery:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$bool;->is_screen_large:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->isScreenLarge:Z

    .line 66
    iput-object p3, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 67
    iput-object p4, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    .line 68
    new-instance v1, Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, p2}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->data:Lcom/helpshift/support/HSApiData;

    .line 69
    new-instance v0, Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;-><init>(Lcom/helpshift/support/controllers/FaqFlowController;)V

    .line 70
    .local v0, "pollerSuccessHandler":Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;
    new-instance v1, Lcom/helpshift/support/util/ConversationsPoller;

    const/4 v2, 0x3

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/helpshift/support/controllers/FaqFlowController;->data:Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/helpshift/support/util/ConversationsPoller;-><init>(ILandroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/HSApiData;)V

    iput-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/controllers/FaqFlowController;)Lcom/helpshift/support/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/controllers/FaqFlowController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->data:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/controllers/FaqFlowController;)Lcom/helpshift/support/contracts/FaqFlowView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/controllers/FaqFlowController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;

    return-object v0
.end method

.method private onQuery(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->retainSearchFragmentState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->searchListener:Lcom/helpshift/support/contracts/SearchListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->searchListener:Lcom/helpshift/support/contracts/SearchListener;

    iget-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "sectionPublishId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/helpshift/support/contracts/SearchListener;->onQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFaqFragment()V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/helpshift/support/compositions/FaqFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/compositions/FaqFragment;

    move-result-object v2

    .line 108
    .local v2, "faqFragment":Lcom/helpshift/support/compositions/FaqFragment;
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->list_fragment_container:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/FaqFlowController;Z)V

    .line 114
    return-void
.end method

.method private startQuestionListFragment()V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/QuestionListFragment;

    move-result-object v2

    .line 118
    .local v2, "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->list_fragment_container:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/FaqFlowController;Z)V

    .line 124
    return-void
.end method

.method private startSingleQuestionFragment()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 127
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/FaqFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/helpshift/support/controllers/SupportController;->setSearchPerformed(Z)V

    .line 128
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v3}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->newInstance(Landroid/os/Bundle;I)Lcom/helpshift/support/fragments/SingleQuestionFragment;

    move-result-object v2

    .line 130
    .local v2, "singleQuestionFragment":Lcom/helpshift/support/fragments/SingleQuestionFragment;
    sget v1, Lcom/helpshift/R$id;->list_fragment_container:I

    .line 131
    .local v1, "singleQuestionContainer":I
    iget-boolean v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->isScreenLarge:Z

    if-eqz v0, :cond_0

    .line 132
    sget v1, Lcom/helpshift/R$id;->single_question_container:I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/FaqFlowController;Z)V

    .line 140
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/FaqFlowController;->performedSearch()V

    .line 212
    iget-boolean v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->retainSearchFragmentState:Z

    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->lastQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->searchListener:Lcom/helpshift/support/contracts/SearchListener;

    .line 215
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-class v1, Lcom/helpshift/support/fragments/SearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/FragmentUtil;->popBackStack(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 217
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->searchListener:Lcom/helpshift/support/contracts/SearchListener;

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/helpshift/support/fragments/SearchFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SearchFragment;

    move-result-object v0

    .line 198
    .local v0, "searchFragment":Lcom/helpshift/support/fragments/SearchFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/SearchFragment;->setFaqFragmentListener(Lcom/helpshift/support/contracts/FaqFragmentListener;)V

    .line 199
    iput-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->searchListener:Lcom/helpshift/support/contracts/SearchListener;

    .line 200
    iget-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/helpshift/R$id;->list_fragment_container:I

    sget-object v3, Lcom/helpshift/support/fragments/SearchFragment;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 206
    .end local v0    # "searchFragment":Lcom/helpshift/support/fragments/SearchFragment;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/FaqFlowController;->performedSearch()V

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    .line 235
    invoke-direct {p0, p1}, Lcom/helpshift/support/controllers/FaqFlowController;->onQuery(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onQuestionSelected(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/FaqFlowController;->performedSearch()V

    .line 169
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/FaqFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/helpshift/support/controllers/SupportController;->setSearchPerformed(Z)V

    .line 171
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "questionPublishId"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "searchTerms"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 174
    iget-boolean v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->isScreenLarge:Z

    if-eqz v0, :cond_0

    .line 175
    sget v1, Lcom/helpshift/R$id;->details_fragment_container:I

    .line 176
    .local v1, "singleQuestionFragmentResourceId":I
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 178
    invoke-static {v6, v2}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->newInstance(Landroid/os/Bundle;I)Lcom/helpshift/support/fragments/SingleQuestionFragment;

    move-result-object v2

    move-object v4, p0

    .line 176
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/FaqFlowController;Z)V

    .line 192
    :goto_0
    return-void

    .line 184
    .end local v1    # "singleQuestionFragmentResourceId":I
    :cond_0
    sget v1, Lcom/helpshift/R$id;->list_fragment_container:I

    .line 185
    .restart local v1    # "singleQuestionFragmentResourceId":I
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 187
    invoke-static {v6, v2}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->newInstance(Landroid/os/Bundle;I)Lcom/helpshift/support/fragments/SingleQuestionFragment;

    move-result-object v2

    .line 185
    invoke-static {v0, v1, v2, v3, v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onSectionSelected(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 148
    iget-boolean v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->isScreenLarge:Z

    if-eqz v2, :cond_0

    .line 149
    invoke-static {p1, p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/QuestionListFragment;

    move-result-object v0

    .line 150
    .local v0, "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v3, Lcom/helpshift/R$id;->list_fragment_container:I

    invoke-static {v2, v3, v0, v5, v4}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 164
    .end local v0    # "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/helpshift/support/compositions/SectionPagerFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/compositions/SectionPagerFragment;

    move-result-object v1

    .line 157
    .local v1, "sectionPagerFragment":Lcom/helpshift/support/compositions/SectionPagerFragment;
    invoke-virtual {v1, p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->setFaqFragmentListener(Lcom/helpshift/support/contracts/FaqFragmentListener;)V

    .line 158
    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v3, Lcom/helpshift/R$id;->list_fragment_container:I

    invoke-static {v2, v3, v1, v5, v4}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public performedSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 248
    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->lastQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;

    invoke-interface {v2}, Lcom/helpshift/support/contracts/FaqFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/helpshift/support/controllers/SupportController;->setSearchPerformed(Z)V

    .line 251
    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "search_performed"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v1, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "s"

    iget-object v3, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    const-string/jumbo v2, "s"

    invoke-static {v2, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 261
    .end local v1    # "eventObj":Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->currentQuery:Ljava/lang/String;

    iput-object v2, p0, Lcom/helpshift/support/controllers/FaqFlowController;->lastQuery:Ljava/lang/String;

    .line 262
    return-void

    .line 256
    .restart local v1    # "eventObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/helpshift/support/controllers/FaqFlowController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "performedSearch"

    invoke-static {v2, v3, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public quitPoller()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    invoke-virtual {v0}, Lcom/helpshift/support/util/ConversationsPoller;->quit()V

    .line 104
    return-void
.end method

.method public setRetainSearchFragmentState(Z)V
    .locals 0
    .param p1, "retainSearchFragmentState"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->retainSearchFragmentState:Z

    .line 144
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->isControllerStarted:Z

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "support_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "supportMode":I
    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-direct {p0}, Lcom/helpshift/support/controllers/FaqFlowController;->startFaqFragment()V

    .line 91
    .end local v0    # "supportMode":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/support/controllers/FaqFlowController;->isControllerStarted:Z

    .line 92
    return-void

    .line 81
    .restart local v0    # "supportMode":I
    :pswitch_0
    invoke-direct {p0}, Lcom/helpshift/support/controllers/FaqFlowController;->startQuestionListFragment()V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0}, Lcom/helpshift/support/controllers/FaqFlowController;->startSingleQuestionFragment()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startPoller()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    invoke-virtual {v0}, Lcom/helpshift/support/util/ConversationsPoller;->start()V

    .line 96
    return-void
.end method

.method public stopPoller()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    invoke-virtual {v0}, Lcom/helpshift/support/util/ConversationsPoller;->stop()V

    .line 100
    return-void
.end method
