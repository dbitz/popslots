.class public Lcom/helpshift/support/activities/ParentActivity;
.super Lcom/helpshift/support/activities/MainActivity;
.source "ParentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;
    }
.end annotation


# instance fields
.field fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/helpshift/support/activities/MainActivity;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/helpshift/support/activities/ParentActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 57
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/helpshift/support/fragments/SupportFragment;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 60
    check-cast v2, Lcom/helpshift/support/fragments/SupportFragment;

    invoke-virtual {v2}, Lcom/helpshift/support/fragments/SupportFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 63
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 64
    .local v0, "childFragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 71
    .end local v0    # "childFragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-super {p0}, Lcom/helpshift/support/activities/MainActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/helpshift/support/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v3, Lcom/helpshift/R$layout;->hs__parent_activity:I

    invoke-virtual {p0, v3}, Lcom/helpshift/support/activities/ParentActivity;->setContentView(I)V

    .line 38
    sget v3, Lcom/helpshift/R$id;->toolbar:I

    invoke-virtual {p0, v3}, Lcom/helpshift/support/activities/ParentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 39
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v2}, Lcom/helpshift/support/activities/ParentActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 40
    invoke-virtual {p0}, Lcom/helpshift/support/activities/ParentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/activities/ParentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/support/activities/ParentActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 47
    if-nez p1, :cond_1

    .line 48
    iget-object v3, p0, Lcom/helpshift/support/activities/ParentActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 49
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lcom/helpshift/R$id;->support_fragment_container:I

    invoke-virtual {p0}, Lcom/helpshift/support/activities/ParentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/helpshift/support/fragments/SupportFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-super {p0, p1}, Lcom/helpshift/support/activities/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/helpshift/support/activities/ParentActivity;->onBackPressed()V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
