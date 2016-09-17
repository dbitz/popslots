.class public Lcom/helpshift/support/fragments/QuestionListFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "QuestionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;,
        Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Lcom/helpshift/support/HSApiData;

.field private eventSent:Z

.field private faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

.field private faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

.field private isConfigurationChanged:Z

.field private onQuestionClickedListener:Landroid/view/View$OnClickListener;

.field private questionList:Landroid/support/v7/widget/RecyclerView;

.field private sectionId:Ljava/lang/String;

.field private sectionTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/helpshift/support/fragments/QuestionListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/fragments/QuestionListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->eventSent:Z

    .line 48
    iput-boolean v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->isConfigurationChanged:Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/QuestionListFragment;)Lcom/helpshift/support/contracts/FaqFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/QuestionListFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/fragments/QuestionListFragment;Lcom/helpshift/support/Section;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/QuestionListFragment;
    .param p1, "x1"    # Lcom/helpshift/support/Section;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/QuestionListFragment;->updateSectionData(Lcom/helpshift/support/Section;)V

    return-void
.end method

.method private getSectionId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSApiData;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v0

    .line 197
    .local v0, "section":Lcom/helpshift/support/Section;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/helpshift/support/Section;->getSectionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionId:Ljava/lang/String;

    .line 200
    :cond_0
    return-void
.end method

.method private getSectionTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSApiData;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v0

    .line 190
    .local v0, "section":Lcom/helpshift/support/Section;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/helpshift/support/Section;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionTitle:Ljava/lang/String;

    .line 193
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/QuestionListFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "faqFragmentListener"    # Lcom/helpshift/support/contracts/FaqFragmentListener;

    .prologue
    .line 51
    new-instance v0, Lcom/helpshift/support/fragments/QuestionListFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/QuestionListFragment;-><init>()V

    .line 52
    .local v0, "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    iput-object p1, v0, Lcom/helpshift/support/fragments/QuestionListFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 54
    return-object v0
.end method

.method private updateSectionData(Lcom/helpshift/support/Section;)V
    .locals 8
    .param p1, "section"    # Lcom/helpshift/support/Section;

    .prologue
    const/4 v7, 0x1

    .line 157
    iget-object v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {p1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v4, v5, v6}, Lcom/helpshift/support/HSApiData;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    .local v2, "questions":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    const/16 v4, 0x194

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->questionList:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/helpshift/support/adapters/QuestionListAdapter;

    iget-object v6, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    invoke-direct {v5, v2, v6}, Lcom/helpshift/support/adapters/QuestionListAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 164
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v3

    .line 165
    .local v3, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {v3, v7}, Lcom/helpshift/support/fragments/SupportFragment;->setFaqLoaded(Z)V

    .line 169
    :cond_3
    iget-object v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "sectionPublishId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/helpshift/support/fragments/QuestionListFragment;->getSectionId(Ljava/lang/String;)V

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getUserVisibleHint()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionId:Ljava/lang/String;

    .line 173
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->eventSent:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->isConfigurationChanged:Z

    if-nez v4, :cond_1

    .line 177
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v4, "id"

    iget-object v5, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v4, "b"

    invoke-static {v4, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 180
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->eventSent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/helpshift/support/fragments/QuestionListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 76
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionTitle:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

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

    iput-object v1, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

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
    sget v0, Lcom/helpshift/R$layout;->hs__question_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 205
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 213
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->isConfigurationChanged:Z

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->eventSent:Z

    .line 215
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->addVisibleFragment()V

    .line 218
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->removeVisibleFragment()V

    .line 228
    :cond_1
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 229
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    sget v5, Lcom/helpshift/R$id;->question_list:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->questionList:Landroid/support/v7/widget/RecyclerView;

    .line 84
    iget-object v5, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->questionList:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 85
    new-instance v5, Lcom/helpshift/support/fragments/QuestionListFragment$1;

    invoke-direct {v5, p0}, Lcom/helpshift/support/fragments/QuestionListFragment$1;-><init>(Lcom/helpshift/support/fragments/QuestionListFragment;)V

    iput-object v5, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    .line 93
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "sectionPublishId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "sectionPublishId":Ljava/lang/String;
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v3

    .line 95
    .local v3, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3, v8}, Lcom/helpshift/support/fragments/SupportFragment;->setFaqLoaded(Z)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isScreenLarge()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    invoke-direct {p0, v1}, Lcom/helpshift/support/fragments/QuestionListFragment;->getSectionTitle(Ljava/lang/String;)V

    .line 102
    :cond_1
    new-instance v2, Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;

    invoke-direct {v2, p0}, Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;-><init>(Lcom/helpshift/support/fragments/QuestionListFragment;)V

    .line 103
    .local v2, "sectionSuccessHandler":Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;
    new-instance v0, Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;-><init>(Lcom/helpshift/support/fragments/QuestionListFragment;)V

    .line 105
    .local v0, "sectionFailHandler":Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "support_mode"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 106
    .local v4, "supportMode":I
    packed-switch v4, :pswitch_data_0

    .line 111
    iget-object v5, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5, v1, v2, v0}, Lcom/helpshift/support/HSApiData;->getSectionSync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 114
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v5, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v6, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v5, v1, v2, v0, v6}, Lcom/helpshift/support/HSApiData;->getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->setUserVisibleHint(Z)V

    .line 234
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionId:Ljava/lang/String;

    .line 235
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->isConfigurationChanged:Z

    if-nez v2, :cond_0

    .line 239
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v2, "b"

    invoke-static {v2, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 242
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/helpshift/support/fragments/QuestionListFragment;->eventSent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/helpshift/support/fragments/QuestionListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
