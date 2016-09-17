.class public Lcom/helpshift/support/fragments/ConversationFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;,
        Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;
    }
.end annotation


# instance fields
.field private conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

.field private data:Lcom/helpshift/support/HSApiData;

.field private messagesRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/ConversationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/ConversationFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFragment;->refreshMessages()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/ConversationFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    new-instance v0, Lcom/helpshift/support/fragments/ConversationFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/ConversationFragment;-><init>()V

    .line 32
    .local v0, "conversationFragment":Lcom/helpshift/support/fragments/ConversationFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/ConversationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method

.method private refreshMessages()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "issueId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "issueId":Ljava/lang/String;
    invoke-static {v1}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v0

    .line 126
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    new-instance v2, Lcom/helpshift/support/adapters/MessageListAdapter;

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, p0, p0}, Lcom/helpshift/support/adapters/MessageListAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)V

    .line 129
    .local v2, "messageListAdapter":Lcom/helpshift/support/adapters/MessageListAdapter;
    iget-object v3, p0, Lcom/helpshift/support/fragments/ConversationFragment;->messagesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/ConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 40
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 73
    .local v0, "id":I
    sget v1, Lcom/helpshift/R$id;->review_button:I

    if-ne v0, v1, :cond_0

    .line 76
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
    .line 45
    sget v0, Lcom/helpshift/R$layout;->hs__conversation_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFragment;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    invoke-virtual {v0}, Lcom/helpshift/support/util/ConversationsPoller;->stop()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFragment;->refreshMessages()V

    .line 114
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFragment;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    invoke-virtual {v0}, Lcom/helpshift/support/util/ConversationsPoller;->start()V

    .line 115
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    if-nez p2, :cond_0

    .line 52
    sget v2, Lcom/helpshift/R$id;->messages:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/helpshift/support/fragments/ConversationFragment;->messagesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 53
    iget-object v2, p0, Lcom/helpshift/support/fragments/ConversationFragment;->messagesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    new-instance v1, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;

    invoke-direct {v1, p0}, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;-><init>(Lcom/helpshift/support/fragments/ConversationFragment;)V

    .line 56
    .local v1, "pollerSuccessHandler":Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;
    new-instance v0, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;-><init>(Lcom/helpshift/support/fragments/ConversationFragment;)V

    .line 57
    .local v0, "pollerFailHandler":Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;
    new-instance v2, Lcom/helpshift/support/util/ConversationsPoller;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/helpshift/support/fragments/ConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/helpshift/support/util/ConversationsPoller;-><init>(ILandroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/HSApiData;)V

    iput-object v2, p0, Lcom/helpshift/support/fragments/ConversationFragment;->conversationsPoller:Lcom/helpshift/support/util/ConversationsPoller;

    .line 62
    .end local v0    # "pollerFailHandler":Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;
    .end local v1    # "pollerSuccessHandler":Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;
    :cond_0
    return-void
.end method
