.class Lcom/helpshift/support/fragments/SingleQuestionFragment$Success;
.super Landroid/os/Handler;
.source "SingleQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/SingleQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Success"
.end annotation


# instance fields
.field private singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/fragments/SingleQuestionFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/fragments/SingleQuestionFragment;)V
    .locals 1
    .param p1, "singleQuestionFragment"    # Lcom/helpshift/support/fragments/SingleQuestionFragment;

    .prologue
    .line 452
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 453
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$Success;->singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 454
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 459
    iget-object v5, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$Success;->singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    .line 460
    .local v4, "singleQuestionFragment":Lcom/helpshift/support/fragments/SingleQuestionFragment;
    if-eqz v4, :cond_0

    .line 461
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/helpshift/support/Faq;

    .line 462
    .local v2, "question":Lcom/helpshift/support/Faq;
    # invokes: Lcom/helpshift/support/fragments/SingleQuestionFragment;->setQuestion(Lcom/helpshift/support/Faq;)V
    invoke-static {v4, v2}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->access$000(Lcom/helpshift/support/fragments/SingleQuestionFragment;Lcom/helpshift/support/Faq;)V

    .line 463
    invoke-virtual {v2}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "questionId":Ljava/lang/String;
    # getter for: Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z
    invoke-static {v4}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->access$100(Lcom/helpshift/support/fragments/SingleQuestionFragment;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 471
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v5, "f"

    invoke-static {v5, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 473
    const/4 v5, 0x1

    # setter for: Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z
    invoke-static {v4, v5}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->access$102(Lcom/helpshift/support/fragments/SingleQuestionFragment;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v1    # "eventData":Lorg/json/JSONObject;
    .end local v2    # "question":Lcom/helpshift/support/Faq;
    .end local v3    # "questionId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 474
    .restart local v2    # "question":Lcom/helpshift/support/Faq;
    .restart local v3    # "questionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "JSONException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
