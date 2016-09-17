.class public Lcom/adjust/sdk/ActivityHandler;
.super Landroid/os/HandlerThread;
.source "ActivityHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IActivityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/ActivityHandler$SessionHandler;,
        Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;,
        Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    }
.end annotation


# static fields
.field private static final ACTIVITY_STATE_NAME:Ljava/lang/String; = "Activity state"

.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"

.field private static final ATTRIBUTION_NAME:Ljava/lang/String; = "Attribution"

.field private static SESSION_INTERVAL:J = 0x0L

.field private static SUBSESSION_INTERVAL:J = 0x0L

.field private static TIMER_INTERVAL:J = 0x0L

.field private static TIMER_START:J = 0x0L

.field private static final TIME_TRAVEL:Ljava/lang/String; = "Time travel!"


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private adjustConfig:Lcom/adjust/sdk/AdjustConfig;

.field private attribution:Lcom/adjust/sdk/AdjustAttribution;

.field private attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private deviceInfo:Lcom/adjust/sdk/DeviceInfo;

.field private enabled:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private offline:Z

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

.field private timer:Lcom/adjust/sdk/TimerCycle;


# direct methods
.method private constructor <init>(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 4
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    const/4 v3, 0x1

    .line 57
    const-string/jumbo v1, "Adjust"

    invoke-direct {p0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/adjust/sdk/ActivityHandler;->setDaemon(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->start()V

    .line 61
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 62
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    .line 63
    iput-boolean v3, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    .line 66
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 67
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bb7

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 68
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->initInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startInternal()V

    return-void
.end method

.method static synthetic access$1000(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionResponseTasksInternal(Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->timerFired()V

    return-void
.end method

.method static synthetic access$1200(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;
    .locals 1
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustAttribution;
    .locals 1
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;
    .locals 1
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->endInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/EventResponseData;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasksInternal(Lcom/adjust/sdk/EventResponseData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->sendReferrerInternal(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->timerFiredInternal()V

    return-void
.end method

.method static synthetic access$900(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/SessionResponseData;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseTasksInternal(Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method private buildQueryStringClickPackage(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;
    .locals 19
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "clickTime"    # J

    .prologue
    .line 764
    if-nez p1, :cond_0

    .line 765
    const/4 v10, 0x0

    .line 797
    :goto_0
    return-object v10

    .line 768
    :cond_0
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 769
    .local v15, "queryStringParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lcom/adjust/sdk/AdjustAttribution;

    invoke-direct {v14}, Lcom/adjust/sdk/AdjustAttribution;-><init>()V

    .line 770
    .local v14, "queryStringAttribution":Lcom/adjust/sdk/AdjustAttribution;
    const/4 v11, 0x0

    .line 772
    .local v11, "hasAdjustTags":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v6, "Reading query string (%s) from %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p1, v7, v17

    const/16 v17, 0x1

    aput-object p2, v7, v17

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    const-string/jumbo v5, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 775
    .local v13, "queryPairs":[Ljava/lang/String;
    array-length v6, v13

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v12, v13, v5

    .line 776
    .local v12, "pair":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v14}, Lcom/adjust/sdk/ActivityHandler;->readQueryString(Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 777
    const/4 v11, 0x1

    .line 775
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 781
    .end local v12    # "pair":Ljava/lang/String;
    :cond_2
    if-nez v11, :cond_3

    .line 782
    const/4 v10, 0x0

    goto :goto_0

    .line 785
    :cond_3
    const-string/jumbo v5, "reftag"

    invoke-interface {v15, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 787
    .local v16, "reftag":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 788
    .local v8, "now":J
    new-instance v4, Lcom/adjust/sdk/PackageBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v4 .. v9}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 789
    .local v4, "builder":Lcom/adjust/sdk/PackageBuilder;
    iput-object v15, v4, Lcom/adjust/sdk/PackageBuilder;->extraParameters:Ljava/util/Map;

    .line 790
    iput-object v14, v4, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 791
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/adjust/sdk/PackageBuilder;->reftag:Ljava/lang/String;

    .line 792
    const-string/jumbo v5, "reftag"

    move-object/from16 v0, p2

    if-ne v0, v5, :cond_4

    .line 793
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    .line 796
    :cond_4
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v10

    .line 797
    .local v10, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    goto :goto_0
.end method

.method private checkActivityState(Lcom/adjust/sdk/ActivityState;)Z
    .locals 4
    .param p1, "activityState"    # Lcom/adjust/sdk/ActivityState;

    .prologue
    const/4 v0, 0x0

    .line 973
    if-nez p1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Missing activity state."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAttributionState()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v0, v0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    if-eqz v0, :cond_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->getAttribution()V

    goto :goto_0
.end method

.method private checkEvent(Lcom/adjust/sdk/AdjustEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    const/4 v0, 0x0

    .line 959
    if-nez p1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Event missing"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :goto_0
    return v0

    .line 964
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustEvent;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 965
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Event not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 969
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteActivityState(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 890
    const-string/jumbo v0, "AdjustIoActivityState"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteAttribution(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 894
    const-string/jumbo v0, "AdjustAttribution"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private endInternal()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    .line 552
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->pauseSending()V

    .line 553
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 557
    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;
    .locals 9
    .param p0, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 77
    if-nez p0, :cond_1

    .line 78
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    const-string/jumbo v5, "AdjustConfig missing"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/AdjustConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    const-string/jumbo v5, "AdjustConfig not initialized correctly"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v4, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 88
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 89
    .local v1, "currentPid":I
    iget-object v4, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 91
    .local v2, "manager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 96
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_3

    .line 97
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 98
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    const-string/jumbo v5, "Skipping initialization in background process (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v1    # "currentPid":I
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    new-instance v0, Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler;-><init>(Lcom/adjust/sdk/AdjustConfig;)V

    .line 107
    .local v0, "activityHandler":Lcom/adjust/sdk/ActivityHandler;
    goto :goto_0
.end method

.method private hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "previousState"    # Z
    .param p2, "newState"    # Z
    .param p3, "trueMessage"    # Ljava/lang/String;
    .param p4, "falseMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 195
    if-eq p1, p2, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    .line 199
    :cond_0
    if-eqz p1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p4, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initInternal()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 422
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    .line 423
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerStart()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_START:J

    .line 424
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    .line 425
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    .line 427
    new-instance v0, Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/DeviceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    .line 429
    const-string/jumbo v0, "production"

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    sget-object v1, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Event buffering is enabled"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "playAdId":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 441
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Unable to get Google Play Services Advertising ID at start time"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Default tracker: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-wide v2, v1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    .line 452
    :cond_3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readAttribution()V

    .line 453
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readActivityState()V

    .line 455
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 457
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v6

    .line 460
    .local v6, "attributionPackage":Lcom/adjust/sdk/ActivityPackage;
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    .line 461
    invoke-virtual {v1}, Lcom/adjust/sdk/AdjustConfig;->hasAttributionChangedListener()Z

    move-result v1

    .line 458
    invoke-static {p0, v6, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)Lcom/adjust/sdk/IAttributionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 463
    new-instance v0, Lcom/adjust/sdk/TimerCycle;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$1;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    sget-wide v2, Lcom/adjust/sdk/ActivityHandler;->TIMER_START:J

    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/TimerCycle;-><init>(Ljava/lang/Runnable;JJ)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->timer:Lcom/adjust/sdk/TimerCycle;

    .line 469
    return-void

    .line 432
    .end local v6    # "attributionPackage":Lcom/adjust/sdk/ActivityPackage;
    .end local v7    # "playAdId":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0
.end method

.method private launchAttributionListener(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 678
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-nez v1, :cond_0

    .line 689
    :goto_0
    return-void

    .line 682
    :cond_0
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$6;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler$6;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    .line 688
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchAttributionResponseTasksInternal(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 3
    .param p1, "responseData"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 666
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 669
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/adjust/sdk/AttributionResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v0

    .line 672
    .local v0, "attributionUpdated":Z
    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListener(Landroid/os/Handler;)V

    .line 675
    :cond_0
    return-void
.end method

.method private launchDeeplink(Lcom/adjust/sdk/ResponseData;Landroid/os/Handler;)V
    .locals 12
    .param p1, "responseData"    # Lcom/adjust/sdk/ResponseData;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 692
    iget-object v9, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v9, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v9, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string/jumbo v10, "deeplink"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "deeplink":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 702
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 704
    .local v3, "location":Landroid/net/Uri;
    iget-object v9, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v9, v9, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    if-nez v9, :cond_2

    .line 705
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    invoke-direct {v4, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    .local v4, "mapIntent":Landroid/content/Intent;
    :goto_1
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 711
    iget-object v9, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v9, v9, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    iget-object v9, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v9, v9, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 715
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 716
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    move v2, v7

    .line 719
    .local v2, "isIntentSafe":Z
    :goto_2
    if-nez v2, :cond_4

    .line 720
    iget-object v9, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v10, "Unable to open deep link (%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-interface {v9, v10, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 707
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "isIntentSafe":Z
    .end local v4    # "mapIntent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    iget-object v10, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v10, v10, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v11, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v11, v11, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    invoke-direct {v4, v9, v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v4    # "mapIntent":Landroid/content/Intent;
    goto :goto_1

    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    move v2, v8

    .line 716
    goto :goto_2

    .line 725
    .restart local v2    # "isIntentSafe":Z
    :cond_4
    new-instance v6, Lcom/adjust/sdk/ActivityHandler$7;

    invoke-direct {v6, p0, v1, v4}, Lcom/adjust/sdk/ActivityHandler$7;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Landroid/content/Intent;)V

    .line 732
    .local v6, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchEventResponseTasksInternal(Lcom/adjust/sdk/EventResponseData;)V
    .locals 5
    .param p1, "eventResponseData"    # Lcom/adjust/sdk/EventResponseData;

    .prologue
    const/4 v4, 0x0

    .line 583
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 586
    .local v0, "handler":Landroid/os/Handler;
    iget-boolean v2, p1, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    if-eqz v2, :cond_1

    .line 587
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v3, "Launching success event tracking listener"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$2;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    .line 595
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-boolean v2, p1, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v3, "Launching failed event tracking listener"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$3;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    .line 609
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchSessionResponseListener(Lcom/adjust/sdk/SessionResponseData;Landroid/os/Handler;)V
    .locals 4
    .param p1, "sessionResponseData"    # Lcom/adjust/sdk/SessionResponseData;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-boolean v1, p1, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Launching success session tracking listener"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler$4;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    .line 645
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-boolean v1, p1, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Launching failed session tracking listener"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler$5;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    .line 659
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchSessionResponseTasksInternal(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 3
    .param p1, "sessionResponseData"    # Lcom/adjust/sdk/SessionResponseData;

    .prologue
    .line 617
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 620
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/adjust/sdk/SessionResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v0

    .line 623
    .local v0, "attributionUpdated":Z
    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListener(Landroid/os/Handler;)V

    .line 628
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseListener(Lcom/adjust/sdk/SessionResponseData;Landroid/os/Handler;)V

    .line 631
    invoke-direct {p0, p1, v1}, Lcom/adjust/sdk/ActivityHandler;->launchDeeplink(Lcom/adjust/sdk/ResponseData;Landroid/os/Handler;)V

    .line 632
    return-void
.end method

.method private paused()Z
    .locals 1

    .prologue
    .line 981
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->offline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processSession()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 491
    .local v2, "now":J
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v4, :cond_1

    .line 492
    new-instance v4, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v4}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 493
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput v9, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 495
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage(J)V

    .line 496
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v4, v2, v3}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 497
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v5, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    iput-boolean v5, v4, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 498
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v4, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, v2, v4

    .line 504
    .local v0, "lastInterval":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 505
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v5, "Time travel!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 507
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 512
    :cond_2
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 513
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 514
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v4, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 516
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage(J)V

    .line 517
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v4, v2, v3}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 518
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 523
    :cond_3
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 525
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 526
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 527
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 528
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v5, "Started subsession %d of session %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v7, v7, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 529
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v7, v7, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 530
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 528
    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readActivityState()V
    .locals 6

    .prologue
    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string/jumbo v2, "AdjustIoActivityState"

    const-string/jumbo v3, "Activity state"

    const-class v4, Lcom/adjust/sdk/ActivityState;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/ActivityState;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Activity state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    goto :goto_0
.end method

.method private readAttribution()V
    .locals 6

    .prologue
    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string/jumbo v2, "AdjustAttribution"

    const-string/jumbo v3, "Attribution"

    const-class v4, Lcom/adjust/sdk/AdjustAttribution;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/AdjustAttribution;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Attribution"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    goto :goto_0
.end method

.method private readOpenUrlInternal(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "clickTime"    # J

    .prologue
    .line 748
    if-nez p1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "queryString":Ljava/lang/String;
    const-string/jumbo v2, "deeplink"

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->buildQueryStringClickPackage(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 755
    .local v0, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    if-eqz v0, :cond_0

    .line 759
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v2, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 760
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v2}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_0
.end method

.method private readQueryString(Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 8
    .param p1, "queryString"    # Ljava/lang/String;
    .param p3, "queryStringAttribution"    # Lcom/adjust/sdk/AdjustAttribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adjust/sdk/AdjustAttribution;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 803
    const-string/jumbo v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "pairComponents":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v4

    .line 806
    :cond_1
    aget-object v0, v2, v4

    .line 807
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v6, "adjust_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 809
    aget-object v3, v2, v5

    .line 810
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 812
    const-string/jumbo v6, "adjust_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "keyWOutPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 815
    invoke-direct {p0, p3, v1, v3}, Lcom/adjust/sdk/ActivityHandler;->trySetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 816
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v4, v5

    .line 819
    goto :goto_0
.end method

.method private saveAttribution(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0
    .param p1, "attribution"    # Lcom/adjust/sdk/AdjustAttribution;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 262
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeAttribution()V

    .line 263
    return-void
.end method

.method private sendReferrerInternal(Ljava/lang/String;J)V
    .locals 2
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "clickTime"    # J

    .prologue
    .line 736
    const-string/jumbo v1, "reftag"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->buildQueryStringClickPackage(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 739
    .local v0, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 744
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_0
.end method

.method private startInternal()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusInternal()V

    .line 480
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processSession()V

    .line 482
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkAttributionState()V

    .line 484
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startTimer()V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 1

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->timer:Lcom/adjust/sdk/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerCycle;->start()V

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->timer:Lcom/adjust/sdk/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerCycle;->suspend()V

    .line 915
    return-void
.end method

.method private timerFired()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 343
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bbf

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 344
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method

.method private timerFiredInternal()V
    .locals 3

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Session timer fired"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method private trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 560
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkEvent(Lcom/adjust/sdk/AdjustEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 566
    .local v4, "now":J
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v2, v1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 567
    invoke-direct {p0, v4, v5}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    .line 569
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 570
    .local v0, "eventBuilder":Lcom/adjust/sdk/PackageBuilder;
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->buildEventPackage(Lcom/adjust/sdk/AdjustEvent;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v6

    .line 571
    .local v6, "eventPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v6}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 573
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Buffered event %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private transferSessionPackage(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 898
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 899
    .local v0, "builder":Lcom/adjust/sdk/PackageBuilder;
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v6

    .line 900
    .local v6, "sessionPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v6}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 901
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 902
    return-void
.end method

.method private trySetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "queryStringAttribution"    # Lcom/adjust/sdk/AdjustAttribution;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 825
    const-string/jumbo v1, "tracker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 845
    :goto_0
    return v0

    .line 830
    :cond_0
    const-string/jumbo v1, "campaign"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_1
    const-string/jumbo v1, "adgroup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    goto :goto_0

    .line 840
    :cond_2
    const-string/jumbo v1, "creative"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 841
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    goto :goto_0

    .line 845
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActivityState(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v2, 0x0

    .line 871
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v3}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v2

    .line 873
    :cond_1
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v3, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, p1, v4

    .line 875
    .local v0, "lastInterval":J
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 878
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v3, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 880
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 881
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v4, "Time travel!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 883
    :cond_2
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 884
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    goto :goto_1
.end method

.method private updateAttributionHandlerStatus()V
    .locals 1

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->pauseSending()V

    .line 859
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->resumeSending()V

    goto :goto_0
.end method

.method private updateHandlersStatus()V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bbe

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 338
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void
.end method

.method private updateHandlersStatusInternal()V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateAttributionHandlerStatus()V

    .line 850
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updatePackageHandlerStatus()V

    .line 851
    return-void
.end method

.method private updatePackageHandlerStatus()V
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->resumeSending()V

    goto :goto_0
.end method

.method private updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pausingState"    # Z
    .param p2, "pausingMessage"    # Ljava/lang/String;
    .param p3, "remainsPausedMessage"    # Ljava/lang/String;
    .param p4, "unPausingMessage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionEnd()V

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p4, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    goto :goto_0
.end method

.method private declared-synchronized writeActivityState()V
    .locals 4

    .prologue
    .line 951
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string/jumbo v2, "AdjustIoActivityState"

    const-string/jumbo v3, "Activity state"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    monitor-exit p0

    return-void

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeAttribution()V
    .locals 4

    .prologue
    .line 955
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string/jumbo v2, "AdjustAttribution"

    const-string/jumbo v3, "Attribution"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void
.end method


# virtual methods
.method public finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
    .locals 1
    .param p1, "responseData"    # Lcom/adjust/sdk/ResponseData;

    .prologue
    .line 142
    instance-of v0, p1, Lcom/adjust/sdk/SessionResponseData;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    check-cast p1, Lcom/adjust/sdk/SessionResponseData;

    .end local p1    # "responseData":Lcom/adjust/sdk/ResponseData;
    invoke-interface {v0, p1}, Lcom/adjust/sdk/IAttributionHandler;->checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local p1    # "responseData":Lcom/adjust/sdk/ResponseData;
    :cond_1
    instance-of v0, p1, Lcom/adjust/sdk/EventResponseData;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lcom/adjust/sdk/EventResponseData;

    .end local p1    # "responseData":Lcom/adjust/sdk/ResponseData;
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V

    goto :goto_0
.end method

.method public getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 6

    .prologue
    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 274
    .local v4, "now":J
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 278
    .local v0, "attributionBuilder":Lcom/adjust/sdk/PackageBuilder;
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildAttributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    return-object v1
.end method

.method public init(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 0
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    .line 74
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    goto :goto_0
.end method

.method public launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2
    .param p1, "attributionResponseData"    # Lcom/adjust/sdk/AttributionResponseData;

    .prologue
    .line 308
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 309
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bc1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 310
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method public launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V
    .locals 2
    .param p1, "eventResponseData"    # Lcom/adjust/sdk/EventResponseData;

    .prologue
    .line 292
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bbb

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 294
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method

.method public launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 2
    .param p1, "sessionResponseData"    # Lcom/adjust/sdk/SessionResponseData;

    .prologue
    .line 300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bc0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 302
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    return-void
.end method

.method public readOpenUrl(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "clickTime"    # J

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, "message":Landroid/os/Message;
    const v2, 0x11bbc

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 241
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;-><init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V

    .line 242
    .local v1, "urlClickTime":Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v2, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method public sendReferrer(Ljava/lang/String;J)V
    .locals 4
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "clickTime"    # J

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "message":Landroid/os/Message;
    const v2, 0x11bbd

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 285
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V

    .line 286
    .local v1, "referrerClickTime":Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v2, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public setAskingAttribution(Z)V
    .locals 1
    .param p1, "askingAttribution"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 268
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 269
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "Adjust already enabled"

    const-string/jumbo v2, "Adjust already disabled"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 160
    :cond_0
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 162
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 169
    :goto_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v1, "Pausing package handler and attribution handler to disable the SDK"

    const-string/jumbo v2, "Package and attribution handler remain paused due to the SDK is offline"

    const-string/jumbo v3, "Resuming package handler and attribution handler to enabled the SDK"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 166
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_1

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setOfflineMode(Z)V
    .locals 3
    .param p1, "offline"    # Z

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->offline:Z

    const-string/jumbo v1, "Adjust already in offline mode"

    const-string/jumbo v2, "Adjust already in online mode"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 216
    :cond_0
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->offline:Z

    .line 218
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 222
    :cond_1
    const-string/jumbo v0, "Pausing package and attribution handler to put in offline mode"

    const-string/jumbo v1, "Package and attribution handler remain paused because the SDK is disabled"

    const-string/jumbo v2, "Resuming package handler and attribution handler to put in online mode"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Event triggered before first application launch.\nThis will trigger the SDK start and an install without user interactionPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 133
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bba

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 135
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method public trackSubsessionEnd()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bb9

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method public trackSubsessionStart()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bb8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 114
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 2
    .param p1, "attribution"    # Lcom/adjust/sdk/AdjustAttribution;

    .prologue
    const/4 v0, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p1, v1}, Lcom/adjust/sdk/AdjustAttribution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->saveAttribution(Lcom/adjust/sdk/AdjustAttribution;)V

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method
