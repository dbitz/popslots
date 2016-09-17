.class Lcom/helpshift/support/fragments/SectionListFragment$1;
.super Ljava/lang/Object;
.source "SectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/SectionListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/fragments/SectionListFragment;

.field final synthetic val$sections:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/SectionListFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/fragments/SectionListFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/helpshift/support/fragments/SectionListFragment$1;->this$0:Lcom/helpshift/support/fragments/SectionListFragment;

    iput-object p2, p0, Lcom/helpshift/support/fragments/SectionListFragment$1;->val$sections:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "sectionPublishId":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "sections"

    iget-object v3, p0, Lcom/helpshift/support/fragments/SectionListFragment$1;->val$sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    const-string/jumbo v2, "sectionPublishId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/helpshift/support/fragments/SectionListFragment$1;->this$0:Lcom/helpshift/support/fragments/SectionListFragment;

    # getter for: Lcom/helpshift/support/fragments/SectionListFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;
    invoke-static {v2}, Lcom/helpshift/support/fragments/SectionListFragment;->access$000(Lcom/helpshift/support/fragments/SectionListFragment;)Lcom/helpshift/support/contracts/FaqFragmentListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/helpshift/support/contracts/FaqFragmentListener;->onSectionSelected(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method
