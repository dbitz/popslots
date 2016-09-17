.class public Lcom/helpshift/support/Support;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Lcom/helpshift/Core$ApiProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/Support$EnableContactUs;,
        Lcom/helpshift/support/Support$RateAlert;,
        Lcom/helpshift/support/Support$LazyHolder;,
        Lcom/helpshift/support/Support$Delegate;
    }
.end annotation


# static fields
.field public static final CustomMetadataKey:Ljava/lang/String; = "hs-custom-metadata"

.field public static final IssueTagsKey:Ljava/lang/String; = "hs-tags"

.field public static final JSON_PREFS:Ljava/lang/String; = "HSJsonData"

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final TagsKey:Ljava/lang/String; = "hs-tags"

.field public static final UserAcceptedTheSolution:Ljava/lang/String; = "User accepted the solution"

.field public static final UserRejectedTheSolution:Ljava/lang/String; = "User rejected the solution"

.field public static final UserReviewedTheApp:Ljava/lang/String; = "User reviewed the app"

.field public static final UserSentScreenShot:Ljava/lang/String; = "User sent a screenshot"

.field public static final libraryVersion:Ljava/lang/String; = "4.1.1-support"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/Support$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/support/Support$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/helpshift/support/Support;-><init>()V

    return-void
.end method

.method public static clearBreadCrumbs()V
    .locals 0

    .prologue
    .line 157
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->clearBreadCrumbs()V

    .line 158
    return-void
.end method

.method public static getConversationFragment(Landroid/app/Activity;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 759
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->getConversationFragment(Landroid/app/Activity;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "config"    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 772
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getConversationFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getDelegate()Lcom/helpshift/support/Support$Delegate;
    .locals 1

    .prologue
    .line 583
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Support$Delegate;

    return-object v0
.end method

.method public static getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;)",
            "Lcom/helpshift/support/fragments/SupportFragment;"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "config"    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lcom/helpshift/support/fragments/SupportFragment;"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "sectionPublishId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 785
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "sectionPublishId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "config"    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 799
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getFAQsFragment(Landroid/app/Activity;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 734
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->getFAQsFragment(Landroid/app/Activity;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getFAQsFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "config"    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 747
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getFAQsFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/helpshift/support/Support;
    .locals 1

    .prologue
    .line 71
    # getter for: Lcom/helpshift/support/Support$LazyHolder;->INSTANCE:Lcom/helpshift/support/Support;
    invoke-static {}, Lcom/helpshift/support/Support$LazyHolder;->access$000()Lcom/helpshift/support/Support;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getNotificationCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "success"    # Landroid/os/Handler;
    .param p1, "failure"    # Landroid/os/Handler;

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 114
    return-void
.end method

.method public static getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "questionPublishId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 812
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "questionPublishId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "config"    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 827
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static leaveBreadCrumb(Ljava/lang/String;)V
    .locals 0
    .param p0, "breadCrumb"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->leaveBreadCrumb(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static setDelegate(Lcom/helpshift/support/Support$Delegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/helpshift/support/Support$Delegate;

    .prologue
    .line 592
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setDelegate(Lcom/helpshift/support/SupportInternal$Delegate;)V

    .line 593
    return-void
.end method

.method public static setMetadataCallback(Lcom/helpshift/support/Callable;)V
    .locals 0
    .param p0, "f"    # Lcom/helpshift/support/Callable;

    .prologue
    .line 536
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    .line 537
    return-void
.end method

.method public static setSDKLanguage(Ljava/lang/String;)V
    .locals 0
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setSDKLanguage(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setUserIdentifier(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/support/AlertToRateAppListener;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "alertToRateAppListener"    # Lcom/helpshift/support/AlertToRateAppListener;

    .prologue
    .line 575
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/support/AlertToRateAppListener;)V

    .line 577
    return-void
.end method

.method public static showConversation(Landroid/app/Activity;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 176
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->showConversation(Landroid/app/Activity;)V

    .line 177
    return-void
.end method

.method public static showConversation(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    .line 244
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showConversation(Landroid/app/Activity;Ljava/util/Map;)V

    .line 245
    return-void
.end method

.method public static showDynamicForm(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showDynamicForm(Landroid/app/Activity;Ljava/util/List;)V

    .line 723
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    .line 340
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 341
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 443
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->showFAQs(Landroid/app/Activity;)V

    .line 444
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    .line 510
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showFAQs(Landroid/app/Activity;Ljava/util/Map;)V

    .line 511
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    .line 424
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 425
    return-void
.end method


# virtual methods
.method public _handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    invoke-static {p1, p2}, Lcom/helpshift/support/SupportInternal;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    .line 667
    return-void
.end method

.method public _handlePush(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 674
    invoke-static {p1, p2}, Lcom/helpshift/support/SupportInternal;->handlePush(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 675
    return-void
.end method

.method public _install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "apiKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "domain"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "appId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 630
    invoke-static {p1, p2, p3, p4}, Lcom/helpshift/support/SupportInternal;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public _install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "apiKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "domain"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "appId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "config"    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 642
    invoke-static {p1, p2, p3, p4, p5}, Lcom/helpshift/support/SupportInternal;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 643
    return-void
.end method

.method public _login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-static {p1, p2, p3}, Lcom/helpshift/support/SupportInternal;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public _logout()V
    .locals 0

    .prologue
    .line 690
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->logout()V

    .line 691
    return-void
.end method

.method public _registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "deviceToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 658
    invoke-static {p1, p2}, Lcom/helpshift/support/SupportInternal;->registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public _setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {p1, p2}, Lcom/helpshift/support/SupportInternal;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method
