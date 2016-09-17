.class public Lcom/scene53/utils/NetworkMonitor;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# static fields
.field private static final NETWORK_DISCONNECTED:Ljava/lang/String; = "networkDisconnected"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static onNetworkChanged(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    .line 27
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 29
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 30
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 32
    .local v2, "isConnected":Z
    :goto_0
    const-string/jumbo v8, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Network status changed "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " / "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 36
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "networkDisconnected"

    const-wide/16 v8, -0x1

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 37
    .local v6, "ts":J
    if-eqz v2, :cond_4

    .line 38
    cmp-long v5, v6, v10

    if-gez v5, :cond_3

    .line 51
    :cond_0
    :goto_2
    return-void

    .line 30
    .end local v2    # "isConnected":Z
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "ts":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 32
    .restart local v2    # "isConnected":Z
    :cond_2
    const-string/jumbo v5, "null"

    goto :goto_1

    .line 41
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "ts":J
    :cond_3
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 42
    .local v3, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "timestamp"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v5, "disconnection"

    const-string/jumbo v8, "debug"

    const-string/jumbo v9, "networkDisconnection"

    invoke-static {v5, v8, v9, v3}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 44
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v8, "networkDisconnected"

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 46
    .end local v3    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    cmp-long v5, v6, v10

    if-gtz v5, :cond_0

    .line 49
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v8, "networkDisconnected"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scene53/Scene53App;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Lcom/scene53/utils/NetworkMonitor;->onNetworkChanged(Landroid/content/Context;)V

    .line 24
    :cond_0
    return-void
.end method
