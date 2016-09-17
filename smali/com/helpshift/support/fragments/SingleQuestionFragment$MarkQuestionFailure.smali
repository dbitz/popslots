.class Lcom/helpshift/support/fragments/SingleQuestionFragment$MarkQuestionFailure;
.super Landroid/os/Handler;
.source "SingleQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/SingleQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkQuestionFailure"
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
    .line 432
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$MarkQuestionFailure;->singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 434
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 439
    iget-object v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$MarkQuestionFailure;->singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    .line 440
    .local v1, "singleQuestionFragment":Lcom/helpshift/support/fragments/SingleQuestionFragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 441
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 442
    .local v0, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 443
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 445
    .end local v0    # "result":Ljava/util/HashMap;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
