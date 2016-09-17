.class public Lcom/helpshift/support/compositions/SectionPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SectionPagerAdapter.java"


# instance fields
.field private faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/helpshift/support/contracts/FaqFragmentListener;Ljava/util/List;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "faqFragmentListener"    # Lcom/helpshift/support/contracts/FaqFragmentListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/helpshift/support/contracts/FaqFragmentListener;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 23
    iput-object p2, p0, Lcom/helpshift/support/compositions/SectionPagerAdapter;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 24
    iput-object p3, p0, Lcom/helpshift/support/compositions/SectionPagerAdapter;->sections:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/support/compositions/SectionPagerAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "sectionPublishId"

    iget-object v1, p0, Lcom/helpshift/support/compositions/SectionPagerAdapter;->sections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Section;

    invoke-virtual {v1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/helpshift/support/compositions/SectionPagerAdapter;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    invoke-static {v0, v1}, Lcom/helpshift/support/fragments/QuestionListFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/FaqFragmentListener;)Lcom/helpshift/support/fragments/QuestionListFragment;

    move-result-object v1

    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/helpshift/support/compositions/SectionPagerAdapter;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Section;

    invoke-virtual {v0}, Lcom/helpshift/support/Section;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
