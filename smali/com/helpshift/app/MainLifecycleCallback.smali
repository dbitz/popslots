.class public Lcom/helpshift/app/MainLifecycleCallback;
.super Ljava/lang/Object;
.source "MainLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final BACKGROUND:I = 0x2

.field public static final FOREGROUND:I = 0x1

.field private static isConfigurationChanged:Z


# instance fields
.field private final cachedExecutorService:Ljava/util/concurrent/ExecutorService;

.field private foreground:Z

.field private final lifecycleListeners:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/helpshift/app/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private start:I

.field private stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/app/MainLifecycleCallback;->isConfigurationChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->lifecycleListeners:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->cachedExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/app/MainLifecycleCallback;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/app/MainLifecycleCallback;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->lifecycleListeners:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method private dispatchLifecycleEvent(I)V
    .locals 2
    .param p1, "lifecycleEvent"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->cachedExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/helpshift/app/MainLifecycleCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/app/MainLifecycleCallback$1;-><init>(Lcom/helpshift/app/MainLifecycleCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/helpshift/app/LifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/helpshift/app/LifecycleListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->lifecycleListeners:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 143
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 81
    sget-boolean v0, Lcom/helpshift/app/MainLifecycleCallback;->isConfigurationChanged:Z

    if-nez v0, :cond_1

    .line 82
    iget-boolean v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->foreground:Z

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0, v1}, Lcom/helpshift/app/MainLifecycleCallback;->dispatchLifecycleEvent(I)V

    .line 84
    iput-boolean v1, p0, Lcom/helpshift/app/MainLifecycleCallback;->foreground:Z

    .line 86
    :cond_0
    iget v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->start:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->start:I

    .line 88
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/app/MainLifecycleCallback;->isConfigurationChanged:Z

    .line 89
    return-void
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

    sput-boolean v0, Lcom/helpshift/app/MainLifecycleCallback;->isConfigurationChanged:Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sput-boolean v2, Lcom/helpshift/app/MainLifecycleCallback;->isConfigurationChanged:Z

    .line 122
    iget v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->stop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->stop:I

    .line 123
    iget v0, p0, Lcom/helpshift/app/MainLifecycleCallback;->start:I

    iget v1, p0, Lcom/helpshift/app/MainLifecycleCallback;->stop:I

    if-ne v0, v1, :cond_0

    .line 124
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/helpshift/app/MainLifecycleCallback;->dispatchLifecycleEvent(I)V

    .line 125
    iput-boolean v2, p0, Lcom/helpshift/app/MainLifecycleCallback;->foreground:Z

    goto :goto_0
.end method
