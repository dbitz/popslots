.class Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;
.super Landroid/os/Handler;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateIssueFailureHandler"
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
    .line 403
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 404
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 405
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 409
    iget-object v3, p0, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/NewConversationFragment;

    .line 410
    .local v0, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    if-eqz v0, :cond_0

    .line 411
    const/4 v3, 0x0

    # invokes: Lcom/helpshift/support/fragments/NewConversationFragment;->setIsReportingIssue(Z)V
    invoke-static {v0, v3}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$1100(Lcom/helpshift/support/fragments/NewConversationFragment;Z)V

    .line 412
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 413
    .local v1, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 414
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/NewConversationFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/NewConversationFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 418
    .end local v1    # "result":Ljava/util/HashMap;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
