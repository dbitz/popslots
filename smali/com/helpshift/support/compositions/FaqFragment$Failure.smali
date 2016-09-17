.class Lcom/helpshift/support/compositions/FaqFragment$Failure;
.super Landroid/os/Handler;
.source "FaqFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/compositions/FaqFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Failure"
.end annotation


# instance fields
.field private final faqFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/compositions/FaqFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/compositions/FaqFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/compositions/FaqFragment;

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment$Failure;->faqFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/helpshift/support/compositions/FaqFragment$Failure;->faqFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/compositions/FaqFragment;

    .line 250
    .local v0, "faqFragment":Lcom/helpshift/support/compositions/FaqFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpshift/support/compositions/FaqFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/helpshift/support/compositions/FaqFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__network_error_msg:I

    .line 252
    invoke-virtual {v0, v2}, Lcom/helpshift/support/compositions/FaqFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 251
    invoke-static {v1, v2, v3}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;Ljava/lang/String;I)V

    .line 254
    # getter for: Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I
    invoke-static {}, Lcom/helpshift/support/compositions/FaqFragment;->access$100()I

    move-result v1

    if-nez v1, :cond_1

    .line 256
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    goto :goto_0
.end method
