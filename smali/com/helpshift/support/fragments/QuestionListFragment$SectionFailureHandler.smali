.class Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;
.super Landroid/os/Handler;
.source "QuestionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/QuestionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionFailureHandler"
.end annotation


# instance fields
.field private final questionListFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/fragments/QuestionListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/fragments/QuestionListFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/fragments/QuestionListFragment;

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;->questionListFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v3, p0, Lcom/helpshift/support/fragments/QuestionListFragment$SectionFailureHandler;->questionListFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/QuestionListFragment;

    .line 147
    .local v0, "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 149
    .local v1, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 150
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    .line 152
    .end local v1    # "result":Ljava/util/HashMap;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
