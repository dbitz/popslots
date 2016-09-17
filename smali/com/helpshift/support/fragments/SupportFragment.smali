.class public Lcom/helpshift/support/fragments/SupportFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "SupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/fragments/SupportFragment$SupportModes;
    }
.end annotation


# static fields
.field public static final SUPPORT_MODE:Ljava/lang/String; = "support_mode"

.field private static isForeground:Z


# instance fields
.field private attachScreenshotMenuItem:Landroid/view/MenuItem;

.field private contactUsMenuItem:Landroid/view/MenuItem;

.field private data:Lcom/helpshift/support/HSApiData;

.field private doneMenuItem:Landroid/view/MenuItem;

.field private faqLoaded:Z

.field private menuItemsPrepared:Z

.field private newMessageCount:I

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchView:Landroid/support/v7/widget/SearchView;

.field private startNewConversationMenuItem:Landroid/view/MenuItem;

.field private storage:Lcom/helpshift/support/HSStorage;

.field private supportController:Lcom/helpshift/support/controllers/SupportController;

.field private viewFaqsLoadError:Landroid/view/View;

.field private viewFaqsLoading:Landroid/view/View;

.field private viewNoFaqs:Landroid/view/View;

.field private final visibleFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->visibleFragments:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->newMessageCount:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/SupportFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SupportFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/fragments/SupportFragment;)Lcom/helpshift/support/controllers/SupportController;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SupportFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    return-object v0
.end method

.method private canAttachScreenshot(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Lcom/helpshift/util/ApplicationUtil;->getDeviceApiVersion()I

    move-result v0

    .line 311
    .local v0, "apiVersion":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 314
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideAllMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->startNewConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    return-void
.end method

.method public static isForeground()Z
    .locals 1

    .prologue
    .line 539
    sget-boolean v0, Lcom/helpshift/support/fragments/SupportFragment;->isForeground:Z

    return v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    new-instance v0, Lcom/helpshift/support/fragments/SupportFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/SupportFragment;-><init>()V

    .line 88
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/SupportFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v0
.end method

.method private restoreHSAddIssueFragmentMenu()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-direct {p0, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setRetainSearchFragmentState(Z)V

    .line 289
    invoke-virtual {p0, v3}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuVisible(Z)V

    .line 290
    invoke-virtual {p0, v3}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/helpshift/support/util/FragmentUtil;->getConversationFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v0

    .line 292
    .local v0, "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 293
    invoke-static {v4}, Lcom/helpshift/support/util/FragmentUtil;->getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v1

    .line 295
    .local v1, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    if-eqz v1, :cond_0

    .line 296
    iget-object v4, p0, Lcom/helpshift/support/fragments/SupportFragment;->startNewConversationMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v1}, Lcom/helpshift/support/HSAddIssueFragment;->isShowStartNewConversationMenu()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 297
    iget-object v4, p0, Lcom/helpshift/support/fragments/SupportFragment;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    iget-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    :goto_0
    iget-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    .end local v1    # "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    :cond_0
    return-void

    .line 300
    .restart local v1    # "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    :cond_1
    iget-object v4, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v1}, Lcom/helpshift/support/HSAddIssueFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/helpshift/support/fragments/SupportFragment;->canAttachScreenshot(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    invoke-virtual {v1}, Lcom/helpshift/support/HSAddIssueFragment;->isShowAttachScreenshotMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 301
    goto :goto_1
.end method

.method private restoreHSMessagesFragmentMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 264
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/helpshift/support/fragments/SupportFragment;->setRetainSearchFragmentState(Z)V

    .line 265
    invoke-virtual {p0, v5}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuVisible(Z)V

    .line 266
    invoke-virtual {p0, v5}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 267
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->startNewConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/support/util/FragmentUtil;->getConversationFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v0

    .line 269
    .local v0, "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/helpshift/support/util/FragmentUtil;->getHSMessagesFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v1

    .line 272
    .local v1, "hsMessagesFragment":Lcom/helpshift/support/HSMessagesFragment;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/helpshift/support/HSMessagesFragment;->getMessageBox()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 274
    .local v2, "messageBox":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 277
    invoke-virtual {v1}, Lcom/helpshift/support/HSMessagesFragment;->isIssueRejected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v1}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/helpshift/support/fragments/SupportFragment;->canAttachScreenshot(Landroid/content/Context;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    :goto_0
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    .end local v1    # "hsMessagesFragment":Lcom/helpshift/support/HSMessagesFragment;
    .end local v2    # "messageBox":Landroid/widget/LinearLayout;
    :cond_0
    return-void

    .line 280
    .restart local v1    # "hsMessagesFragment":Lcom/helpshift/support/HSMessagesFragment;
    .restart local v2    # "messageBox":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private restoreSearchMenuItem()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/util/FragmentUtil;->getFaqFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;

    move-result-object v0

    .line 345
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/util/FragmentUtil;->getSearchFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/SearchFragment;

    move-result-object v1

    .line 347
    .local v1, "searchFragment":Lcom/helpshift/support/fragments/SearchFragment;
    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Lcom/helpshift/support/fragments/SearchFragment;->getCurrentQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuQuery(Ljava/lang/String;)V

    .line 351
    .end local v1    # "searchFragment":Lcom/helpshift/support/fragments/SearchFragment;
    :cond_0
    sget-object v2, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v2}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 352
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setRetainSearchFragmentState(Z)V

    .line 353
    return-void
.end method

.method private restoreSingleQuestionDoneModeFragmentMenu()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    return-void
.end method

.method private setMenuItemColors()V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "contactUsView":Landroid/view/View;
    sget v2, Lcom/helpshift/R$id;->hs__notification_badge:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    .local v1, "notificationBadge":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->startNewConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method private setRetainSearchFragmentState(Z)V
    .locals 2
    .param p1, "retainSearchFragmentState"    # Z

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getFaqFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;

    move-result-object v0

    .line 338
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getFaqFlowController()Lcom/helpshift/support/controllers/FaqFlowController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/helpshift/support/controllers/FaqFlowController;->setRetainSearchFragmentState(Z)V

    .line 341
    :cond_0
    return-void
.end method

.method private showFaqFragmentMenu()V
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->faqLoaded:Z

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuVisible(Z)V

    .line 357
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 358
    return-void
.end method

.method private showQuestionListFragmentMenu()V
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->faqLoaded:Z

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuVisible(Z)V

    .line 320
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 321
    return-void
.end method

.method private showSectionPagerFragmentMenu()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuVisible(Z)V

    .line 325
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 326
    return-void
.end method

.method private showSingleQuestionFragmentMenu()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setRetainSearchFragmentState(Z)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchMenuVisible(Z)V

    .line 333
    :cond_0
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->QUESTION_ACTION_BAR:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setContactUsMenuVisible(Z)V

    .line 334
    return-void
.end method

.method private updateBadgeIcon()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 392
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-static {v3}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 395
    sget v3, Lcom/helpshift/R$id;->hs__notification_badge:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 396
    .local v1, "badge":Landroid/widget/TextView;
    sget v3, Lcom/helpshift/R$id;->hs__notification_badge_padding:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 397
    .local v2, "padding":Landroid/view/View;
    iget v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->newMessageCount:I

    if-eqz v3, :cond_1

    .line 398
    iget v3, p0, Lcom/helpshift/support/fragments/SupportFragment;->newMessageCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 400
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    .end local v0    # "actionView":Landroid/view/View;
    .end local v1    # "badge":Landroid/widget/TextView;
    .end local v2    # "padding":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 402
    .restart local v0    # "actionView":Landroid/view/View;
    .restart local v1    # "badge":Landroid/widget/TextView;
    .restart local v2    # "padding":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addVisibleFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->visibleFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->refreshMenu()V

    .line 219
    return-void
.end method

.method protected attachMenuListeners(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 138
    sget v0, Lcom/helpshift/R$id;->hs__search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    .line 139
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchView:Landroid/support/v7/widget/SearchView;

    .line 141
    sget v0, Lcom/helpshift/R$id;->hs__contact_us:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    .line 142
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 147
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/helpshift/support/fragments/SupportFragment$1;

    invoke-direct {v1, p0}, Lcom/helpshift/support/fragments/SupportFragment$1;-><init>(Lcom/helpshift/support/fragments/SupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget v0, Lcom/helpshift/R$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    .line 155
    sget v0, Lcom/helpshift/R$id;->hs__start_new_conversation:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->startNewConversationMenuItem:Landroid/view/MenuItem;

    .line 156
    sget v0, Lcom/helpshift/R$id;->hs__action_done:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->menuItemsPrepared:Z

    .line 160
    invoke-virtual {p0, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setSearchListeners(Lcom/helpshift/support/controllers/FaqFlowController;)V

    .line 161
    invoke-virtual {p0, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setConversationListeners(Lcom/helpshift/support/controllers/ConversationFlowController;)V

    .line 162
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->refreshMenu()V

    .line 163
    return-void
.end method

.method protected getMenuResourceId()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/helpshift/R$menu;->hs__support_fragment:I

    return v0
.end method

.method public getSupportController()Lcom/helpshift/support/controllers/SupportController;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 515
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 516
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 517
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    if-eqz v3, :cond_0

    .line 520
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 526
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/fragments/MainFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/support/fragments/SupportFragment;->setRetainInstance(Z)V

    .line 100
    new-instance v1, Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 101
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v1, v1, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->storage:Lcom/helpshift/support/HSStorage;

    .line 102
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "profileId":Ljava/lang/String;
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->newMessageCount:I

    .line 104
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/helpshift/support/controllers/SupportController;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 108
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v2, :cond_2

    .line 480
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 481
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-nez v4, :cond_1

    instance-of v4, v1, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    if-eqz v4, :cond_0

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 486
    .local v0, "childFragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 488
    const/4 v3, 0x1

    .line 493
    .end local v0    # "childFragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/helpshift/R$id;->button_retry:I

    if-ne v1, v2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getFaqFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;

    move-result-object v0

    .line 532
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->retryGetSections()V

    .line 536
    .end local v0    # "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    :cond_0
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
    .line 113
    sget v0, Lcom/helpshift/R$layout;->hs__support_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 500
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 501
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    if-eqz v3, :cond_0

    .line 504
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 510
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/fragments/MainFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 457
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/SupportController;->start()V

    .line 458
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SupportFragment;->showToolbarElevation(Z)V

    .line 460
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 435
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 436
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    invoke-static {}, Lcom/helpshift/support/util/HSActivityUtil;->sessionBeginning()V

    .line 439
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "support_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .local v1, "supportMode":I
    if-nez v1, :cond_1

    .line 441
    const-string/jumbo v2, "o"

    invoke-static {v2}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 446
    :goto_0
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    .line 447
    .local v0, "delegate":Lcom/helpshift/support/SupportInternal$Delegate;
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0}, Lcom/helpshift/support/SupportInternal$Delegate;->sessionBegan()V

    .line 451
    .end local v0    # "delegate":Lcom/helpshift/support/SupportInternal$Delegate;
    .end local v1    # "supportMode":I
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/helpshift/support/fragments/SupportFragment;->isForeground:Z

    .line 452
    return-void

    .line 443
    .restart local v1    # "supportMode":I
    :cond_1
    const-string/jumbo v2, "d"

    invoke-static {v2}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 465
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    invoke-static {}, Lcom/helpshift/support/util/HSActivityUtil;->sessionEnding()V

    .line 467
    const-string/jumbo v1, "q"

    invoke-static {v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 468
    const/4 v1, 0x0

    sput-boolean v1, Lcom/helpshift/support/fragments/SupportFragment;->isForeground:Z

    .line 469
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->reportActionEvents()V

    .line 470
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    .line 471
    .local v0, "delegate":Lcom/helpshift/support/SupportInternal$Delegate;
    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lcom/helpshift/support/SupportInternal$Delegate;->sessionEnded()V

    .line 475
    .end local v0    # "delegate":Lcom/helpshift/support/SupportInternal$Delegate;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    sget v2, Lcom/helpshift/R$id;->view_no_faqs:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewNoFaqs:Landroid/view/View;

    .line 120
    sget v2, Lcom/helpshift/R$id;->view_faqs_loading:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewFaqsLoading:Landroid/view/View;

    .line 121
    sget v2, Lcom/helpshift/R$id;->view_faqs_load_error:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewFaqsLoadError:Landroid/view/View;

    .line 122
    sget v2, Lcom/helpshift/R$id;->button_retry:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 123
    .local v0, "buttonRetry":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    sget v2, Lcom/helpshift/R$id;->hs_logo:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 127
    .local v1, "hsLogo":Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    .end local v1    # "hsLogo":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public refreshMenu()V
    .locals 5

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->menuItemsPrepared:Z

    if-eqz v1, :cond_9

    .line 233
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->hideAllMenuItems()V

    .line 234
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->setMenuItemColors()V

    .line 235
    iget-object v2, p0, Lcom/helpshift/support/fragments/SupportFragment;->visibleFragments:Ljava/util/List;

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->visibleFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "fragment":Ljava/lang/String;
    const-class v3, Lcom/helpshift/support/compositions/FaqFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->showFaqFragmentMenu()V

    goto :goto_0

    .line 255
    .end local v0    # "fragment":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 239
    .restart local v0    # "fragment":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-class v3, Lcom/helpshift/support/fragments/SearchFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->restoreSearchMenuItem()V

    goto :goto_0

    .line 241
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->showSingleQuestionFragmentMenu()V

    goto :goto_0

    .line 243
    :cond_3
    const-class v3, Lcom/helpshift/support/compositions/SectionPagerFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->showSectionPagerFragmentMenu()V

    goto :goto_0

    .line 245
    :cond_4
    const-class v3, Lcom/helpshift/support/fragments/QuestionListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->showQuestionListFragmentMenu()V

    goto :goto_0

    .line 247
    :cond_5
    const-class v3, Lcom/helpshift/support/HSAddIssueFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->restoreHSAddIssueFragmentMenu()V

    goto :goto_0

    .line 249
    :cond_6
    const-class v3, Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 250
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->restoreHSMessagesFragmentMenu()V

    goto/16 :goto_0

    .line 251
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->restoreSingleQuestionDoneModeFragmentMenu()V

    goto/16 :goto_0

    .line 255
    .end local v0    # "fragment":Ljava/lang/String;
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :cond_9
    return-void
.end method

.method public removeVisibleFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->visibleFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->refreshMenu()V

    .line 224
    return-void
.end method

.method public resetNewMessageCount()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->newMessageCount:I

    .line 411
    return-void
.end method

.method public setContactUsMenuVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->updateBadgeIcon()V

    .line 367
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->contactUsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setConversationListeners(Lcom/helpshift/support/controllers/ConversationFlowController;)V
    .locals 2
    .param p1, "conversationFlowController"    # Lcom/helpshift/support/controllers/ConversationFlowController;

    .prologue
    .line 182
    iget-boolean v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->menuItemsPrepared:Z

    if-eqz v1, :cond_1

    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getConversationFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v0

    .line 185
    .local v0, "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getConversationFlowController()Lcom/helpshift/support/controllers/ConversationFlowController;

    move-result-object p1

    .line 190
    .end local v0    # "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->attachScreenshotMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 192
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->startNewConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 193
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 196
    :cond_1
    return-void
.end method

.method public setFaqLoaded(Z)V
    .locals 0
    .param p1, "faqLoaded"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/helpshift/support/fragments/SupportFragment;->faqLoaded:Z

    .line 228
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->refreshMenu()V

    .line 229
    return-void
.end method

.method public setNewMessagesCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/helpshift/support/fragments/SupportFragment;->newMessageCount:I

    .line 388
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SupportFragment;->updateBadgeIcon()V

    .line 389
    return-void
.end method

.method public setSearchListeners(Lcom/helpshift/support/controllers/FaqFlowController;)V
    .locals 2
    .param p1, "faqFlowController"    # Lcom/helpshift/support/controllers/FaqFlowController;

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->menuItemsPrepared:Z

    if-eqz v1, :cond_1

    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SupportFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getFaqFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;

    move-result-object v0

    .line 169
    .local v0, "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getFaqFlowController()Lcom/helpshift/support/controllers/FaqFlowController;

    move-result-object p1

    .line 174
    .end local v0    # "faqFlowFragment":Lcom/helpshift/support/fragments/FaqFlowFragment;
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v1, p1}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 176
    iget-object v1, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 179
    :cond_1
    return-void
.end method

.method public setSearchMenuQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 381
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 384
    :cond_1
    return-void
.end method

.method public setSearchMenuVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->collapseActionView(Landroid/view/MenuItem;)Z

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->searchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    return-void
.end method

.method public updateFaqLoadingUI(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewNoFaqs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewFaqsLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewFaqsLoadError:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    packed-switch p1, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    return-void

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewFaqsLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewNoFaqs:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 428
    :pswitch_3
    iget-object v0, p0, Lcom/helpshift/support/fragments/SupportFragment;->viewFaqsLoadError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
