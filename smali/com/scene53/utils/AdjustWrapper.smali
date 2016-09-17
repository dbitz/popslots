.class public Lcom/scene53/utils/AdjustWrapper;
.super Ljava/lang/Object;
.source "AdjustWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scene53/utils/AdjustWrapper$1;,
        Lcom/scene53/utils/AdjustWrapper$AdjustLifecycleCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static initAdjustConfig(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "appToken"    # Ljava/lang/String;
    .param p1, "isProd"    # Z

    .prologue
    .line 20
    if-eqz p1, :cond_0

    const-string/jumbo v1, "production"

    .line 21
    .local v1, "environment":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/adjust/sdk/AdjustConfig;

    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, "config":Lcom/adjust/sdk/AdjustConfig;
    if-eqz p1, :cond_1

    .line 24
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adjust/sdk/AdjustConfig;->setEventBufferingEnabled(Ljava/lang/Boolean;)V

    .line 28
    :goto_1
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 29
    .local v2, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "appToken"

    invoke-virtual {v2, v3, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v3, "isProd"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v3, "env"

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v3, "IDFA"

    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scene53/Scene53App;->getAdvertisingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v3, "adjust"

    const-string/jumbo v4, "debug"

    const-string/jumbo v5, "initConfig"

    invoke-static {v3, v4, v5, v2}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 70
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 71
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v3

    new-instance v4, Lcom/scene53/utils/AdjustWrapper$AdjustLifecycleCallbacks;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/scene53/utils/AdjustWrapper$AdjustLifecycleCallbacks;-><init>(Lcom/scene53/utils/AdjustWrapper$1;)V

    invoke-virtual {v3, v4}, Lcom/scene53/Scene53App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 72
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 74
    return-void

    .line 20
    .end local v0    # "config":Lcom/adjust/sdk/AdjustConfig;
    .end local v1    # "environment":Ljava/lang/String;
    .end local v2    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "sandbox"

    goto :goto_0

    .line 26
    .restart local v0    # "config":Lcom/adjust/sdk/AdjustConfig;
    .restart local v1    # "environment":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v0, v3}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto :goto_1
.end method

.method public static sendRevenueTrackEvent(Ljava/lang/String;D)V
    .locals 3
    .param p0, "eventToken"    # Ljava/lang/String;
    .param p1, "revenue"    # D

    .prologue
    .line 92
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "adjustEvent":Lcom/adjust/sdk/AdjustEvent;
    const-string/jumbo v1, "USD"

    invoke-virtual {v0, p1, p2, v1}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 95
    return-void
.end method

.method public static sendTrackEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "eventToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "adjustEvent":Lcom/adjust/sdk/AdjustEvent;
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 79
    .local v3, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "token"

    invoke-virtual {v3, v4, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v4, "IDFA"

    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scene53/Scene53App;->getAdvertisingId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v4, "adjust"

    const-string/jumbo v5, "debug"

    const-string/jumbo v6, "trackEvent"

    invoke-static {v4, v5, v6, v3}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 88
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 89
    return-void
.end method
