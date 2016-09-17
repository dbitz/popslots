.class public final Lcom/helpshift/support/util/HSPolling;
.super Ljava/lang/Object;
.source "HSPolling.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private c:Landroid/content/Context;

.field private interval:F

.field private maxInterval:F

.field private minInterval:F

.field pollerRun:Ljava/lang/Runnable;

.field private smartPolling:Ljava/lang/Boolean;

.field private task:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "task"    # Landroid/os/Handler;
    .param p2, "interval"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x476a6000    # 60000.0f

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->maxInterval:F

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/util/HSPolling;->smartPolling:Ljava/lang/Boolean;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/util/HSPolling;->c:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/helpshift/support/util/HSPolling$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/util/HSPolling$1;-><init>(Lcom/helpshift/support/util/HSPolling;)V

    iput-object v0, p0, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;

    .line 70
    mul-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->minInterval:F

    .line 71
    mul-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Boolean;Landroid/content/Context;)V
    .locals 1
    .param p1, "task"    # Landroid/os/Handler;
    .param p2, "interval"    # I
    .param p3, "smartPolling"    # Ljava/lang/Boolean;
    .param p4, "c"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x476a6000    # 60000.0f

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->maxInterval:F

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/util/HSPolling;->smartPolling:Ljava/lang/Boolean;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/util/HSPolling;->c:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/helpshift/support/util/HSPolling$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/util/HSPolling$1;-><init>(Lcom/helpshift/support/util/HSPolling;)V

    iput-object v0, p0, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;

    .line 77
    mul-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    .line 78
    mul-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->minInterval:F

    .line 79
    iput-object p3, p0, Lcom/helpshift/support/util/HSPolling;->smartPolling:Ljava/lang/Boolean;

    .line 80
    iput-object p4, p0, Lcom/helpshift/support/util/HSPolling;->c:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/util/HSPolling;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/util/HSPolling;)F
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/util/HSPolling;

    .prologue
    .line 14
    iget v0, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    return v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/util/HSPolling;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/util/HSPolling;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling;->smartPolling:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 4
    .param p0, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 32
    const-string/jumbo v2, "level"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    .local v1, "scale":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method private static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 46
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 47
    .local v0, "ani":Landroid/net/NetworkInfo;
    const-string/jumbo v2, "Unknown"

    .line 48
    .local v2, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 51
    :cond_0
    return-object v2
.end method


# virtual methods
.method public resetInterval()V
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lcom/helpshift/support/util/HSPolling;->minInterval:F

    iput v0, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    .line 85
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    iget v2, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method

.method public startRepeatingTask()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    return-void
.end method

.method public stopRepeatingTask()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public updateInterval(F)V
    .locals 6
    .param p1, "interval"    # F

    .prologue
    const v5, 0x3fcf1aa0    # 1.618f

    .line 98
    iget v3, p0, Lcom/helpshift/support/util/HSPolling;->maxInterval:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 99
    iget v3, p0, Lcom/helpshift/support/util/HSPolling;->minInterval:F

    add-float/2addr v3, p1

    mul-float p1, v3, v5

    .line 102
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "ifilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/helpshift/support/util/HSPolling;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, "batteryStatus":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/helpshift/support/util/HSPolling;->getBatteryLevel(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr p1, v3

    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/util/HSPolling;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/helpshift/support/util/HSPolling;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 110
    mul-float/2addr p1, v5

    .line 116
    :cond_0
    :goto_0
    iget v3, p0, Lcom/helpshift/support/util/HSPolling;->maxInterval:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 117
    iget v3, p0, Lcom/helpshift/support/util/HSPolling;->maxInterval:F

    iput v3, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    .line 122
    .end local v0    # "batteryStatus":Landroid/content/Intent;
    .end local v2    # "ifilter":Landroid/content/IntentFilter;
    :cond_1
    :goto_1
    return-void

    .line 112
    .restart local v0    # "batteryStatus":Landroid/content/Intent;
    .restart local v2    # "ifilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "No permission for Network Access"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    iput p1, p0, Lcom/helpshift/support/util/HSPolling;->interval:F

    goto :goto_1
.end method
