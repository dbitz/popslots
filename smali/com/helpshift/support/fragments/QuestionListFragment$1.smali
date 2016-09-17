.class Lcom/helpshift/support/fragments/QuestionListFragment$1;
.super Ljava/lang/Object;
.source "QuestionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/QuestionListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/fragments/QuestionListFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/QuestionListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/fragments/QuestionListFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/helpshift/support/fragments/QuestionListFragment$1;->this$0:Lcom/helpshift/support/fragments/QuestionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "questionPublishId":Ljava/lang/String;
    iget-object v1, p0, Lcom/helpshift/support/fragments/QuestionListFragment$1;->this$0:Lcom/helpshift/support/fragments/QuestionListFragment;

    # getter for: Lcom/helpshift/support/fragments/QuestionListFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;
    invoke-static {v1}, Lcom/helpshift/support/fragments/QuestionListFragment;->access$000(Lcom/helpshift/support/fragments/QuestionListFragment;)Lcom/helpshift/support/contracts/FaqFragmentListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/helpshift/support/contracts/FaqFragmentListener;->onQuestionSelected(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    return-void
.end method
