.class Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;
.super Landroid/os/Handler;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateIssueSuccessHandler"
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
    .line 319
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    iget-object v10, p0, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/support/fragments/NewConversationFragment;

    .line 326
    .local v5, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    if-eqz v5, :cond_0

    .line 327
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;
    invoke-static {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$500(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/model/Form;

    move-result-object v9

    .line 328
    .local v9, "validatedForm":Lcom/helpshift/support/model/Form;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$000(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v0

    .line 329
    .local v0, "data":Lcom/helpshift/support/HSApiData;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$600(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/HSStorage;

    move-result-object v7

    .line 331
    .local v7, "storage":Lcom/helpshift/support/HSStorage;
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 332
    .local v6, "result":Ljava/util/HashMap;
    const-string/jumbo v10, "response"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 333
    .local v2, "issue":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 334
    .local v4, "issues":Lorg/json/JSONArray;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 335
    const-string/jumbo v10, "created_at"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/helpshift/support/HSStorage;->setIssuesTs(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Lcom/helpshift/support/HSStorage;->storeIssues(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9}, Lcom/helpshift/support/model/Form;->getUsername()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/helpshift/support/HSApiData;->setUsername(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9}, Lcom/helpshift/support/model/Form;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/helpshift/support/HSApiData;->setEmail(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v10, ""

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/helpshift/support/HSStorage;->storeReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v10, ""

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/helpshift/support/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$700(Lcom/helpshift/support/fragments/NewConversationFragment;)Landroid/widget/EditText;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const-string/jumbo v10, "p"

    invoke-static {v10}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v10, "id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "issueId":Ljava/lang/String;
    # invokes: Lcom/helpshift/support/fragments/NewConversationFragment;->uploadScreenshot(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$800(Lcom/helpshift/support/fragments/NewConversationFragment;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->startInAppService()V

    .line 346
    invoke-static {}, Lcom/helpshift/support/Support;->getDelegate()Lcom/helpshift/support/Support$Delegate;

    move-result-object v8

    .line 347
    .local v8, "supportDelegate":Lcom/helpshift/support/Support$Delegate;
    if-eqz v8, :cond_0

    .line 348
    invoke-virtual {v9}, Lcom/helpshift/support/model/Form;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/helpshift/support/Support$Delegate;->newConversationStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v0    # "data":Lcom/helpshift/support/HSApiData;
    .end local v2    # "issue":Lorg/json/JSONObject;
    .end local v3    # "issueId":Ljava/lang/String;
    .end local v4    # "issues":Lorg/json/JSONArray;
    .end local v6    # "result":Ljava/util/HashMap;
    .end local v7    # "storage":Lcom/helpshift/support/HSStorage;
    .end local v8    # "supportDelegate":Lcom/helpshift/support/Support$Delegate;
    .end local v9    # "validatedForm":Lcom/helpshift/support/model/Form;
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v0    # "data":Lcom/helpshift/support/HSApiData;
    .restart local v7    # "storage":Lcom/helpshift/support/HSStorage;
    .restart local v9    # "validatedForm":Lcom/helpshift/support/model/Form;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Lorg/json/JSONException;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$200()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
