.class public abstract Lcom/helpshift/support/fragments/MainFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TOOLBAR_ID:Ljava/lang/String; = "toolbarId"


# instance fields
.field private fragmentMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentName:Ljava/lang/String;

.field private isChangingConfigurations:Z

.field private isScreenLarge:Z

.field private retainedChildFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/helpshift/support/fragments/SupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/fragments/MainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    .line 38
    iput-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 39
    iput-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentMenuItems:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentName:Ljava/lang/String;

    return-void
.end method

.method private showToolbarElevationLollipop(Z)V
    .locals 4
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/4 v2, 0x0

    .line 239
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_2

    .line 240
    if-eqz p1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/MainFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 247
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 248
    if-eqz p1, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/helpshift/support/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    goto :goto_0
.end method

.method private showToolbarElevationPreLollipop(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 258
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/MainFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/helpshift/R$id;->flow_fragment_container:I

    .line 259
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 260
    .local v0, "flowFragmentContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 261
    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$drawable;->hs__actionbar_compat_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 264
    .local v1, "shadow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    .end local v1    # "shadow":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addVisibleFragment()V
    .locals 2

    .prologue
    .line 272
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 273
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/fragments/SupportFragment;->addVisibleFragment(Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public addVisibleFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 280
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/helpshift/support/fragments/SupportFragment;->addVisibleFragment(Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method

.method protected attachMenuListeners(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 192
    return-void
.end method

.method public getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    if-eqz v1, :cond_0

    .line 179
    const-string/jumbo v1, "toolbarId"

    iget v2, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 69
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMenuResourceId()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/helpshift/support/fragments/MainFragment;->retainedChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/MainFragment;->retainedChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/fragments/MainFragment;->retainedChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/helpshift/support/fragments/MainFragment;->isChangingConfigurations:Z

    return v0
.end method

.method public isScreenLarge()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/helpshift/support/fragments/MainFragment;->isScreenLarge:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/HelpshiftContext;->setApplicationContext(Landroid/content/Context;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/util/LocaleUtil;->changeLanguage(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$bool;->is_screen_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/helpshift/support/fragments/MainFragment;->isScreenLarge:Z

    .line 88
    iget-object v2, p0, Lcom/helpshift/support/fragments/MainFragment;->retainedChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v2, :cond_1

    .line 90
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 91
    .local v0, "childFMField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    iget-object v2, p0, Lcom/helpshift/support/fragments/MainFragment;->retainedChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v0    # "childFMField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lcom/helpshift/support/fragments/MainFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "NoSuchFieldException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/helpshift/support/fragments/MainFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IllegalAccessException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v1, "toolbarId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    .line 112
    :cond_0
    iget v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getMenuResourceId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/support/fragments/MainFragment;->setHasOptionsMenu(Z)V

    .line 116
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getMenuResourceId()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->attachMenuListeners(Landroid/view/Menu;)V

    .line 173
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 161
    iget-object v2, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 163
    .local v1, "toolbarMenu":Landroid/view/Menu;
    iget-object v2, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    .local v0, "menuItem":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 167
    .end local v0    # "menuItem":Ljava/lang/Integer;
    .end local v1    # "toolbarMenu":Landroid/view/Menu;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 153
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/MainFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/MainFragment;->isChangingConfigurations:Z

    .line 155
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    iget v5, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    if-eqz v5, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getMenuResourceId()I

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbarId:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    iput-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 128
    iget-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 129
    .local v3, "parentMenu":Landroid/view/Menu;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "parentMenuItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 131
    invoke-interface {v3, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/MainFragment;->getMenuResourceId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 135
    iget-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/helpshift/support/fragments/MainFragment;->attachMenuListeners(Landroid/view/Menu;)V

    .line 138
    iget-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 139
    .local v0, "fragmentMenu":Landroid/view/Menu;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentMenuItems:Ljava/util/List;

    .line 140
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 141
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 142
    .local v2, "menuItemId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentMenuItems:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "fragmentMenu":Landroid/view/Menu;
    .end local v1    # "i":I
    .end local v2    # "menuItemId":I
    .end local v3    # "parentMenu":Landroid/view/Menu;
    .end local v4    # "parentMenuItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public removeVisibleFragment()V
    .locals 2

    .prologue
    .line 286
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 287
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->fragmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/fragments/SupportFragment;->removeVisibleFragment(Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public removeVisibleFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 294
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Lcom/helpshift/support/fragments/SupportFragment;->removeVisibleFragment(Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/helpshift/support/fragments/MainFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/MainFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 223
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showToolbarElevation(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->showToolbarElevationLollipop(Z)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->showToolbarElevationPreLollipop(Z)V

    goto :goto_0
.end method
