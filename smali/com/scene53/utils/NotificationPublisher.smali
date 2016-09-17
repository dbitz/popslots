.class public Lcom/scene53/utils/NotificationPublisher;
.super Landroid/content/BroadcastReceiver;
.source "NotificationPublisher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 21
    sget-object v4, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_NAME:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 23
    const-string/jumbo v4, "Scene53"

    const-string/jumbo v5, "NotificationPublisher: Invalid notification name"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    sget-object v4, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 27
    .local v2, "notification":Landroid/app/Notification;
    if-nez v2, :cond_2

    .line 28
    const-string/jumbo v4, "Scene53"

    const-string/jumbo v5, "NotificationPublisher: Invalid notification!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/scene53/utils/NotificationUtils;->removeNotificationFromPrefs(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v4, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scheduling notification publishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scene53/Scene53App;->isActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scene53/Scene53App;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 56
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    sget-object v4, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, "id":I
    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
