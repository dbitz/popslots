.class public final Lcom/helpshift/support/HSService;
.super Landroid/app/Service;
.source "HSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/HSService$HSBinder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static notifCountPoller:Lcom/helpshift/support/util/HSPolling;


# instance fields
.field private data:Lcom/helpshift/support/HSApiData;

.field private foreground:Ljava/lang/Boolean;

.field private getCountHandler:Landroid/os/Handler;

.field private final hsBinder:Landroid/os/IBinder;

.field private hsLifecycleCallbacks:Lcom/helpshift/support/HSLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/helpshift/support/HSService;->data:Lcom/helpshift/support/HSApiData;

    .line 28
    iput-object v0, p0, Lcom/helpshift/support/HSService;->hsLifecycleCallbacks:Lcom/helpshift/support/HSLifecycleCallbacks;

    .line 37
    new-instance v0, Lcom/helpshift/support/HSService$HSBinder;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSService$HSBinder;-><init>(Lcom/helpshift/support/HSService;)V

    iput-object v0, p0, Lcom/helpshift/support/HSService;->hsBinder:Landroid/os/IBinder;

    .line 77
    new-instance v0, Lcom/helpshift/support/HSService$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSService$1;-><init>(Lcom/helpshift/support/HSService;)V

    iput-object v0, p0, Lcom/helpshift/support/HSService;->getCountHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/HSService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/helpshift/support/HSService;->isAppOnForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/HSService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/helpshift/support/HSService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200()Lcom/helpshift/support/util/HSPolling;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    return-object v0
.end method

.method static synthetic access$300(Lcom/helpshift/support/HSService;)Lcom/helpshift/support/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/helpshift/support/HSService;->data:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/helpshift/support/HSService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 43
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 44
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 48
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string/jumbo v4, "(unknown)"

    goto :goto_1
.end method

.method private isAppOnForeground()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 55
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 56
    iget-object v4, p0, Lcom/helpshift/support/HSService;->hsLifecycleCallbacks:Lcom/helpshift/support/HSLifecycleCallbacks;

    if-nez v4, :cond_0

    .line 57
    invoke-static {}, Lcom/helpshift/support/HSLifecycleCallbacks;->getInstance()Lcom/helpshift/support/HSLifecycleCallbacks;

    move-result-object v4

    iput-object v4, p0, Lcom/helpshift/support/HSService;->hsLifecycleCallbacks:Lcom/helpshift/support/HSLifecycleCallbacks;

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/helpshift/support/HSService;->hsLifecycleCallbacks:Lcom/helpshift/support/HSLifecycleCallbacks;

    invoke-static {}, Lcom/helpshift/support/HSLifecycleCallbacks;->isForeground()Z

    move-result v4

    .line 74
    :cond_1
    :goto_0
    return v4

    .line 61
    :cond_2
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Lcom/helpshift/support/HSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/helpshift/support/HSService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_3

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static resetInterval()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    invoke-virtual {v0}, Lcom/helpshift/support/util/HSPolling;->resetInterval()V

    .line 133
    :cond_0
    return-void
.end method

.method public static stopPolling()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    invoke-virtual {v0}, Lcom/helpshift/support/util/HSPolling;->stopRepeatingTask()V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/helpshift/support/HSService;->hsBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    invoke-virtual {v0}, Lcom/helpshift/support/util/HSPolling;->stopRepeatingTask()V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 127
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v0, p0, Lcom/helpshift/support/HSService;->data:Lcom/helpshift/support/HSApiData;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/HSService;->data:Lcom/helpshift/support/HSApiData;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 104
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSService;->foreground:Ljava/lang/Boolean;

    .line 107
    :cond_1
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Lcom/helpshift/support/util/HSPolling;

    iget-object v1, p0, Lcom/helpshift/support/HSService;->getCountHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/helpshift/support/util/HSPolling;-><init>(Landroid/os/Handler;ILjava/lang/Boolean;Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    .line 109
    sget-object v0, Lcom/helpshift/support/HSService;->notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    invoke-virtual {v0}, Lcom/helpshift/support/util/HSPolling;->startRepeatingTask()V

    .line 112
    :cond_2
    const/4 v0, 0x2

    return v0
.end method
