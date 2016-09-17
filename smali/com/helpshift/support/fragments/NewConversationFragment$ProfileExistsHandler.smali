.class Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;
.super Landroid/os/Handler;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileExistsHandler"
.end annotation


# instance fields
.field private final newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/fragments/NewConversationFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 366
    iget-object v7, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/fragments/NewConversationFragment;

    .line 367
    .local v4, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    if-eqz v4, :cond_0

    .line 368
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {v4}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$000(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v1

    .line 369
    .local v1, "data":Lcom/helpshift/support/HSApiData;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->getIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;
    invoke-static {v4}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$900(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;

    move-result-object v3

    .line 370
    .local v3, "getIssuesSuccessHandler":Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueFailureHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;
    invoke-static {v4}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$1000(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

    move-result-object v0

    .line 372
    .local v0, "createIssueFailureHandler":Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 373
    .local v6, "result":Ljava/util/HashMap;
    const-string/jumbo v7, "response"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 374
    .local v5, "profileResult":Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/helpshift/support/HSApiData;->setProfileId(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1, v3, v0}, Lcom/helpshift/support/HSApiData;->getIssues(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 376
    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->updateUAToken()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "createIssueFailureHandler":Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;
    .end local v1    # "data":Lcom/helpshift/support/HSApiData;
    .end local v3    # "getIssuesSuccessHandler":Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;
    .end local v5    # "profileResult":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/util/HashMap;
    :cond_0
    :goto_0
    return-void

    .line 377
    .restart local v0    # "createIssueFailureHandler":Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;
    .restart local v1    # "data":Lcom/helpshift/support/HSApiData;
    .restart local v3    # "getIssuesSuccessHandler":Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Lorg/json/JSONException;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ProfileExistsHandler"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
