.class public final Lcom/helpshift/support/util/HSNotification;
.super Ljava/lang/Object;
.source "HSNotification.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field private static TAG:Ljava/lang/String;

.field private static data:Lcom/helpshift/support/HSApiData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "HelpShiftDebug"

    sput-object v0, Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 70
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/helpshift/support/D$string;->hs__default_notification_content_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_0
    return-object v1

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getApplicationName"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getNotifHandler(Landroid/content/Context;Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "notifCountPoller"    # Lcom/helpshift/support/util/HSPolling;

    .prologue
    .line 165
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "data":Lcom/helpshift/support/HSApiData;
    new-instance v1, Lcom/helpshift/support/util/HSNotification$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/helpshift/support/util/HSNotification$1;-><init>(Lcom/helpshift/support/util/HSPolling;Lcom/helpshift/support/HSApiData;Landroid/content/Context;)V

    .line 211
    .local v1, "notifHandler":Landroid/os/Handler;
    return-object v1
.end method

.method public static showNotif(Landroid/content/Context;Lcom/helpshift/support/model/Issue;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "issue"    # Lcom/helpshift/support/model/Issue;
    .param p2, "messCnt"    # I
    .param p3, "chatLaunchSource"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 47
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string/jumbo v0, "app_name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "app_name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "appName":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v0, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/helpshift/support/model/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-int v2, v0

    .line 56
    .local v2, "ts":I
    invoke-virtual {p1}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/HSNotification;->showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "ts":I
    :goto_1
    return-void

    .line 50
    .end local v5    # "appName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/helpshift/support/util/HSNotification;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 61
    :catch_0
    move-exception v6

    .line 62
    .local v6, "e":Ljava/text/ParseException;
    sget-object v0, Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showNotif ParseException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "ts"    # I
    .param p3, "newMessCnt"    # I
    .param p4, "chatLaunchSource"    # Ljava/lang/String;
    .param p5, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v3, Lcom/helpshift/support/util/HSNotification;->data:Lcom/helpshift/support/HSApiData;

    if-nez v3, :cond_0

    .line 87
    new-instance v3, Lcom/helpshift/support/HSApiData;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/helpshift/support/util/HSNotification;->data:Lcom/helpshift/support/HSApiData;

    .line 89
    :cond_0
    sget-object v3, Lcom/helpshift/support/util/HSNotification;->data:Lcom/helpshift/support/HSApiData;

    iget-object v3, v3, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/helpshift/support/HSStorage;->saveNotification(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/model/Issue;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "issueProfileId":Ljava/lang/String;
    sget-object v3, Lcom/helpshift/support/util/HSNotification;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v11

    .line 97
    .local v11, "delegate":Lcom/helpshift/support/SupportInternal$Delegate;
    if-eqz v11, :cond_2

    .line 98
    move/from16 v0, p3

    invoke-interface {v11, v0}, Lcom/helpshift/support/SupportInternal$Delegate;->didReceiveNotification(I)V

    .line 101
    :cond_2
    const-string/jumbo v3, "notification"

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 104
    .local v18, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/support/D$plurals;->hs__notification_content_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 105
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 104
    move/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "notifText":Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Lcom/helpshift/support/util/Xml;->getLogoResourceValue(Landroid/content/Context;)I

    move-result v16

    .line 108
    .local v16, "notificationIcon":I
    const/16 v20, 0x0

    .line 110
    .local v20, "soundUri":Landroid/net/Uri;
    new-instance v22, Lcom/helpshift/support/HSStorage;

    invoke-direct/range {v22 .. v23}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    .line 112
    .local v22, "storage":Lcom/helpshift/support/HSStorage;
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lcom/helpshift/support/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v9

    .line 113
    .local v9, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "notificationSound"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    const-string/jumbo v3, "notificationSound"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 116
    .local v19, "sound":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 117
    .local v21, "soundUriString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 120
    .end local v19    # "sound":I
    .end local v21    # "soundUriString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "notificationIcon"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    const-string/jumbo v3, "notificationIcon"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 127
    .end local v9    # "config":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    new-instance v17, Landroid/content/Intent;

    const-class v3, Lcom/helpshift/support/activities/ParentActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v17, "notificationIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v3, "support_mode"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v3, "issueId"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v3, "chatLaunchSource"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v3, "isRoot"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 135
    .local v10, "contentIntent":Landroid/app/PendingIntent;
    new-instance v15, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v15, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    invoke-virtual {v15, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    invoke-virtual {v15, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 140
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 142
    if-nez v20, :cond_6

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/helpshift/util/ApplicationUtil;->hasVibratePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 144
    const/4 v3, -0x1

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v15}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 123
    .end local v10    # "contentIntent":Landroid/app/PendingIntent;
    .end local v15    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v17    # "notificationIntent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 124
    .local v12, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getAppConfig"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v10    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v15    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v17    # "notificationIntent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x5

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 150
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 151
    invoke-static/range {p0 .. p0}, Lcom/helpshift/util/ApplicationUtil;->hasVibratePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 152
    const/4 v3, 0x6

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 155
    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2
.end method
