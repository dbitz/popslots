.class public Lcom/helpshift/support/compositions/SectionPagerFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "SectionPagerFragment.java"


# instance fields
.field private faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tabLayoutPadding:I

.field private viewPagerContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayoutPadding:I

    return-void
.end method

.method private getSectionPosition(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p2, "sectionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Section;

    .line 71
    .local v1, "section":Lcom/helpshift/support/Section;
    invoke-virtual {v1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    .end local v0    # "i":I
    .end local v1    # "section":Lcom/helpshift/support/Section;
    :goto_1
    return v0

    .line 69
    .restart local v0    # "i":I
    .restart local v1    # "section":Lcom/helpshift/support/Section;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "section":Lcom/helpshift/support/Section;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/compositions/SectionPagerFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    new-instance v0, Lcom/helpshift/support/compositions/SectionPagerFragment;

    invoke-direct {v0}, Lcom/helpshift/support/compositions/SectionPagerFragment;-><init>()V

    .line 31
    .local v0, "sectionPagerFragment":Lcom/helpshift/support/compositions/SectionPagerFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method

.method private showTabLayoutElevation()V
    .locals 3

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/helpshift/support/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setElevation(F)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$drawable;->hs__actionbar_compat_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p1, v0}, Lcom/helpshift/support/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayoutPadding:I

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    sget v0, Lcom/helpshift/R$layout;->hs__section_pager_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->showToolbarElevation(Z)V

    .line 82
    invoke-direct {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->showTabLayoutElevation()V

    .line 83
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 88
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->addVisibleFragment()V

    .line 89
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 94
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->removeVisibleFragment()V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->showToolbarElevation(Z)V

    .line 96
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "sections"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    sget v3, Lcom/helpshift/R$id;->section_pager:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 57
    .local v2, "viewPager":Landroid/support/v4/view/ViewPager;
    new-instance v3, Lcom/helpshift/support/compositions/SectionPagerAdapter;

    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    invoke-direct {v3, v4, v5, v1}, Lcom/helpshift/support/compositions/SectionPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/helpshift/support/contracts/FaqFragmentListener;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    sget v3, Lcom/helpshift/R$id;->pager_tabs:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    iput-object v3, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 61
    iget-object v3, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v6}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayoutPadding:I

    iget v5, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayoutPadding:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    iget-object v3, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 63
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "sectionPublishId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "sectionPublishId":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/helpshift/support/compositions/SectionPagerFragment;->getSectionPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 65
    sget v3, Lcom/helpshift/R$id;->view_pager_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    .line 66
    return-void
.end method

.method public setFaqFragmentListener(Lcom/helpshift/support/contracts/FaqFragmentListener;)V
    .locals 0
    .param p1, "faqFragmentListener"    # Lcom/helpshift/support/contracts/FaqFragmentListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/support/compositions/SectionPagerFragment;->faqFragmentListener:Lcom/helpshift/support/contracts/FaqFragmentListener;

    .line 37
    return-void
.end method
