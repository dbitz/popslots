.class Lcom/helpshift/support/fragments/SingleQuestionFragment$Failure;
.super Landroid/os/Handler;
.source "SingleQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/SingleQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Failure"
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
    .line 486
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 487
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$Failure;->singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 488
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 493
    iget-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$Failure;->singleQuestionFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    .line 494
    .local v0, "singleQuestionFragment":Lcom/helpshift/support/fragments/SingleQuestionFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const/16 v1, 0x194

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 497
    :cond_0
    return-void
.end method
