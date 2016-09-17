.class Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;
.super Landroid/os/Handler;
.source "FaqFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/controllers/FaqFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationPollerSuccessHandler"
.end annotation


# instance fields
.field private final faqFlowControllerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/controllers/FaqFlowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/controllers/FaqFlowController;)V
    .locals 1
    .param p1, "faqFlowController"    # Lcom/helpshift/support/controllers/FaqFlowController;

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;->faqFlowControllerWeakReference:Ljava/lang/ref/WeakReference;

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 273
    iget-object v4, p0, Lcom/helpshift/support/controllers/FaqFlowController$ConversationPollerSuccessHandler;->faqFlowControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/controllers/FaqFlowController;

    .line 274
    .local v2, "faqFlowController":Lcom/helpshift/support/controllers/FaqFlowController;
    if-eqz v2, :cond_0

    .line 275
    # getter for: Lcom/helpshift/support/controllers/FaqFlowController;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {v2}, Lcom/helpshift/support/controllers/FaqFlowController;->access$000(Lcom/helpshift/support/controllers/FaqFlowController;)Lcom/helpshift/support/HSApiData;

    move-result-object v1

    .line 276
    .local v1, "data":Lcom/helpshift/support/HSApiData;
    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "profileId":Ljava/lang/String;
    iget-object v4, v1, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4, v3}, Lcom/helpshift/support/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 279
    # getter for: Lcom/helpshift/support/controllers/FaqFlowController;->faqFlowView:Lcom/helpshift/support/contracts/FaqFlowView;
    invoke-static {v2}, Lcom/helpshift/support/controllers/FaqFlowController;->access$100(Lcom/helpshift/support/controllers/FaqFlowController;)Lcom/helpshift/support/contracts/FaqFlowView;

    move-result-object v4

    invoke-interface {v4}, Lcom/helpshift/support/contracts/FaqFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setNewMessagesCount(I)V

    .line 282
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/helpshift/support/HSApiData;
    .end local v3    # "profileId":Ljava/lang/String;
    :cond_0
    return-void
.end method
