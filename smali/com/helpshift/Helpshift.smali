.class public Lcom/helpshift/Helpshift;
.super Ljava/lang/Object;
.source "Helpshift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/Helpshift$EnableContactUs;,
        Lcom/helpshift/Helpshift$RateAlert;,
        Lcom/helpshift/Helpshift$Delegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HSCustomMetadataKey:Ljava/lang/String; = "hs-custom-metadata"

.field public static final HSTagsKey:Ljava/lang/String; = "hs-tags"

.field public static final HSUserAcceptedTheSolution:Ljava/lang/String; = "User accepted the solution"

.field public static final HSUserRejectedTheSolution:Ljava/lang/String; = "User rejected the solution"

.field public static final HSUserReviewedTheApp:Ljava/lang/String; = "User reviewed the app"

.field public static final HSUserSentScreenShot:Ljava/lang/String; = "User sent a screenshot"

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    return-void
.end method

.method public static clearBreadCrumbs()V
    .locals 0

    .prologue
    .line 344
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->clearBreadCrumbs()V

    .line 345
    return-void
.end method

.method public static getDelegate()Lcom/helpshift/Helpshift$Delegate;
    .locals 1

    .prologue
    .line 838
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Helpshift$Delegate;

    return-object v0
.end method

.method public static getNotificationCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getNotificationCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "success"    # Landroid/os/Handler;
    .param p1, "failure"    # Landroid/os/Handler;

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 251
    return-void
.end method

.method public static handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    invoke-static {p0, p1}, Lcom/helpshift/Core;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/helpshift/support/Support;->getInstance()Lcom/helpshift/support/Support;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/Core;->init(Lcom/helpshift/Core$ApiProvider;)V

    .line 81
    invoke-static {p0, p1, p2, p3}, Lcom/helpshift/Core;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "config"    # Ljava/util/Map;

    .prologue
    .line 133
    invoke-static {}, Lcom/helpshift/support/Support;->getInstance()Lcom/helpshift/support/Support;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/Core;->init(Lcom/helpshift/Core$ApiProvider;)V

    .line 134
    invoke-static {p0, p1, p2, p3, p4}, Lcom/helpshift/Core;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    return-void
.end method

.method public static leaveBreadCrumb(Ljava/lang/String;)V
    .locals 0
    .param p0, "breadCrumb"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->leaveBreadCrumb(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p0, p1, p2}, Lcom/helpshift/Core;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static logout()V
    .locals 0

    .prologue
    .line 208
    invoke-static {}, Lcom/helpshift/Core;->logout()V

    .line 209
    return-void
.end method

.method public static registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p0, p1}, Lcom/helpshift/Core;->registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static setDelegate(Lcom/helpshift/Helpshift$Delegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/helpshift/Helpshift$Delegate;

    .prologue
    .line 847
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setDelegate(Lcom/helpshift/support/SupportInternal$Delegate;)V

    .line 848
    return-void
.end method

.method public static setMetadataCallback(Lcom/helpshift/support/HSCallable;)V
    .locals 0
    .param p0, "f"    # Lcom/helpshift/support/HSCallable;

    .prologue
    .line 791
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    .line 792
    return-void
.end method

.method public static setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/helpshift/Core;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static setSDKLanguage(Ljava/lang/String;)V
    .locals 0
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 874
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setSDKLanguage(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->setUserIdentifier(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/support/AlertToRateAppListener;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "alertToRateAppListener"    # Lcom/helpshift/support/AlertToRateAppListener;

    .prologue
    .line 830
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/support/AlertToRateAppListener;)V

    .line 832
    return-void
.end method

.method public static showConversation(Landroid/app/Activity;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 363
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->showConversation(Landroid/app/Activity;)V

    .line 364
    return-void
.end method

.method public static showConversation(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    .line 439
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showConversation(Landroid/app/Activity;Ljava/util/Map;)V

    .line 440
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    .line 561
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 562
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 672
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->showFAQs(Landroid/app/Activity;)V

    .line 673
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    .line 765
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showFAQs(Landroid/app/Activity;Ljava/util/Map;)V

    .line 766
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {p0, p1}, Lcom/helpshift/support/SupportInternal;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    .line 653
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/SupportInternal;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 654
    return-void
.end method
