.class final Lcom/helpshift/support/HSLifecycleCallbacks;
.super Ljava/lang/Object;
.source "HSLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static data:Lcom/helpshift/support/HSApiData;

.field private static instance:Lcom/helpshift/support/HSLifecycleCallbacks;

.field private static isConfigurationChanged:Z

.field private static isForeground:Z

.field private static started:I

.field private static stopped:I

.field private static storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->instance:Lcom/helpshift/support/HSLifecycleCallbacks;

    .line 29
    sput-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    .line 30
    sput-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/support/HSLifecycleCallbacks;->isConfigurationChanged:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/support/HSApiData;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method static synthetic access$100()Lcom/helpshift/support/HSStorage;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method public static getInstance()Lcom/helpshift/support/HSLifecycleCallbacks;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->instance:Lcom/helpshift/support/HSLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/helpshift/support/HSLifecycleCallbacks;

    invoke-direct {v0}, Lcom/helpshift/support/HSLifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->instance:Lcom/helpshift/support/HSLifecycleCallbacks;

    .line 43
    :cond_0
    sget-object v0, Lcom/helpshift/support/HSLifecycleCallbacks;->instance:Lcom/helpshift/support/HSLifecycleCallbacks;

    return-object v0
.end method

.method public static isForeground()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/helpshift/support/HSLifecycleCallbacks;->isForeground:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    sget-boolean v5, Lcom/helpshift/support/HSLifecycleCallbacks;->isConfigurationChanged:Z

    if-nez v5, :cond_5

    .line 55
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    if-nez v5, :cond_0

    .line 56
    new-instance v5, Lcom/helpshift/support/HSApiData;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    .line 57
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    iget-object v5, v5, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    sput-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;

    .line 60
    :cond_0
    sget v5, Lcom/helpshift/support/HSLifecycleCallbacks;->started:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/helpshift/support/HSLifecycleCallbacks;->started:I

    .line 62
    sget-boolean v5, Lcom/helpshift/support/HSLifecycleCallbacks;->isForeground:Z

    if-nez v5, :cond_4

    .line 63
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->updateReviewCounter()V

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "c":Landroid/content/Context;
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->showReviewP()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/helpshift/support/HSReview;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v4, "i":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v4    # "i":Landroid/content/Intent;
    :cond_1
    :try_start_0
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    new-instance v8, Lcom/helpshift/support/HSLifecycleCallbacks$1;

    invoke-direct {v8, p0}, Lcom/helpshift/support/HSLifecycleCallbacks$1;-><init>(Lcom/helpshift/support/HSLifecycleCallbacks;)V

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v8, v9}, Lcom/helpshift/support/HSApiData;->getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    invoke-static {v0}, Lcom/helpshift/util/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/helpshift/support/HSRetryService;

    invoke-direct {v5, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    :cond_2
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->startInAppService()V

    .line 90
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->reportAppStartEvent()V

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->hasReports()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getLastErrorReportedTime()J

    move-result-wide v6

    .line 97
    .local v6, "lastReportedTime":J
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimeInMillis(Ljava/lang/Float;)J

    move-result-wide v2

    .line 99
    .local v2, "currentElapsedTime":J
    sub-long v8, v2, v6

    const-wide/32 v10, 0x5265c00

    cmp-long v5, v8, v10

    if-lez v5, :cond_3

    .line 100
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5, v2, v3}, Lcom/helpshift/support/HSStorage;->setLastErrorReportedTime(J)V

    .line 101
    sget-object v5, Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;

    sget-object v8, Lcom/helpshift/support/constants/ErrorReportTypes;->RUNTIME_ERROR:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/helpshift/support/HSApiData;->sendErrorReports(Ljava/lang/String;)V

    .line 104
    .end local v2    # "currentElapsedTime":J
    .end local v6    # "lastReportedTime":J
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v0    # "c":Landroid/content/Context;
    :cond_4
    const/4 v5, 0x1

    sput-boolean v5, Lcom/helpshift/support/HSLifecycleCallbacks;->isForeground:Z

    .line 108
    :cond_5
    const/4 v5, 0x0

    sput-boolean v5, Lcom/helpshift/support/HSLifecycleCallbacks;->isConfigurationChanged:Z

    .line 109
    return-void

    .line 81
    .restart local v0    # "c":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v1}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 118
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/support/HSLifecycleCallbacks;->isConfigurationChanged:Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sput-boolean v2, Lcom/helpshift/support/HSLifecycleCallbacks;->isConfigurationChanged:Z

    .line 122
    sget v0, Lcom/helpshift/support/HSLifecycleCallbacks;->stopped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/helpshift/support/HSLifecycleCallbacks;->stopped:I

    .line 123
    sget v0, Lcom/helpshift/support/HSLifecycleCallbacks;->started:I

    sget v1, Lcom/helpshift/support/HSLifecycleCallbacks;->stopped:I

    if-ne v0, v1, :cond_0

    .line 124
    sput-boolean v2, Lcom/helpshift/support/HSLifecycleCallbacks;->isForeground:Z

    goto :goto_0
.end method
