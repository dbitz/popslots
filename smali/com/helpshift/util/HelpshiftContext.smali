.class public Lcom/helpshift/util/HelpshiftContext;
.super Ljava/lang/Object;
.source "HelpshiftContext.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static final lock:Ljava/lang/Object;

.field private static final mainLifecycleCallback:Lcom/helpshift/app/MainLifecycleCallback;

.field private static viewState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpshift/util/HelpshiftContext;->lock:Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/helpshift/app/MainLifecycleCallback;

    invoke-direct {v0}, Lcom/helpshift/app/MainLifecycleCallback;-><init>()V

    sput-object v0, Lcom/helpshift/util/HelpshiftContext;->mainLifecycleCallback:Lcom/helpshift/app/MainLifecycleCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getMainLifecycleCallback()Lcom/helpshift/app/MainLifecycleCallback;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->mainLifecycleCallback:Lcom/helpshift/app/MainLifecycleCallback;

    return-object v0
.end method

.method public static getViewState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->viewState:Ljava/lang/String;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v1, Lcom/helpshift/util/HelpshiftContext;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 37
    sput-object p0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    .line 38
    invoke-static {p0}, Lcom/helpshift/util/HelpshiftContext;->setupMainLifecycleCallback(Landroid/content/Context;)V

    .line 40
    :cond_0
    monitor-exit v1

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setViewState(Ljava/lang/String;)V
    .locals 0
    .param p0, "viewState"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p0, Lcom/helpshift/util/HelpshiftContext;->viewState:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private static setupMainLifecycleCallback(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 27
    .local v0, "application":Landroid/app/Application;
    sget-object v1, Lcom/helpshift/util/HelpshiftContext;->mainLifecycleCallback:Lcom/helpshift/app/MainLifecycleCallback;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 28
    return-void
.end method
