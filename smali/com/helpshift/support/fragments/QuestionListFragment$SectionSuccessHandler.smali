.class Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;
.super Landroid/os/Handler;
.source "QuestionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/QuestionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionSuccessHandler"
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
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;->questionListFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/helpshift/support/fragments/QuestionListFragment$SectionSuccessHandler;->questionListFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/QuestionListFragment;

    .line 126
    .local v0, "questionListFragment":Lcom/helpshift/support/fragments/QuestionListFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 128
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/helpshift/support/Section;

    .line 129
    .local v1, "section":Lcom/helpshift/support/Section;
    # invokes: Lcom/helpshift/support/fragments/QuestionListFragment;->updateSectionData(Lcom/helpshift/support/Section;)V
    invoke-static {v0, v1}, Lcom/helpshift/support/fragments/QuestionListFragment;->access$100(Lcom/helpshift/support/fragments/QuestionListFragment;Lcom/helpshift/support/Section;)V

    .line 134
    .end local v1    # "section":Lcom/helpshift/support/Section;
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/16 v2, 0x194

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    goto :goto_0
.end method
