.class public Lcom/scene53/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final DELIM:Ljava/lang/String; = "~~~"

.field public static NOTIFICATION:Ljava/lang/String; = null

.field public static NOTIFICATION_AD_SET_NAME:Ljava/lang/String; = null

.field public static NOTIFICATION_AGENCY:Ljava/lang/String; = null

.field public static NOTIFICATION_CAMPAIGN:Ljava/lang/String; = null

.field public static NOTIFICATION_ID:Ljava/lang/String; = null

.field public static NOTIFICATION_NAME:Ljava/lang/String; = null

.field public static NOTIFICATION_TYPE:Ljava/lang/String; = null

.field private static final PREFIX:Ljava/lang/String; = "Notification."

.field public static final PREFS_FILENAME:Ljava/lang/String; = "notification"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "notification-id"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_ID:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "notification"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "notification_name"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_NAME:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "notification_type"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_TYPE:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "notification_agency"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_AGENCY:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "notification_adSetName"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_AD_SET_NAME:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "notification_campaign"

    sput-object v0, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_CAMPAIGN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static actuallyScheduleNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ts"    # J
    .param p7, "sound"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 152
    .local v3, "nId":I
    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v9}, Lcom/scene53/utils/NotificationUtils;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v11

    .line 153
    .local v11, "n":Landroid/app/Notification;
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/scene53/utils/NotificationPublisher;

    invoke-direct {v12, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v12, "notificationIntent":Landroid/content/Intent;
    sget-object v2, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sget-object v2, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v12, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    sget-object v2, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_NAME:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v2, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_TYPE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const/high16 v2, 0x8000000

    invoke-static {p0, v3, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 164
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 165
    .local v10, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v2, "Scene53"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    move-wide/from16 v0, p5

    invoke-virtual {v10, v2, v0, v1, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 167
    return-void
.end method

.method public static cancelAllNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 205
    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 206
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 207
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v6, "Notification."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "str":Ljava/lang/String;
    const-string/jumbo v6, "~~~"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "values":[Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v5, v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    :cond_1
    aget-object v6, v5, v8

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {p0, v6, v7}, Lcom/scene53/utils/NotificationUtils;->cancelNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/scene53/utils/NotificationPublisher;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v1, "notificationIntent":Landroid/content/Intent;
    sget-object v3, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sget-object v3, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    sget-object v3, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 192
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 193
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v3, "Scene53"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling notification cancel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 195
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 197
    const-string/jumbo v3, "notification"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method private static createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "nId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "sound"    # Ljava/lang/String;
    .param p7, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 49
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-static {p4}, Lcom/scene53/utils/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 53
    :cond_0
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 54
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 55
    const v4, 0x7f0200c7

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 56
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 57
    const v4, 0xfe7602

    invoke-static {v0, v4}, Lcom/scene53/utils/NotificationUtils;->setColorForNotification(Landroid/app/Notification$Builder;I)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c6

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 60
    .local v2, "largeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 61
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 62
    invoke-static {p6}, Lcom/scene53/utils/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 64
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 70
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/scene53/Scene53NativeActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v1, "casaCasinoIntent":Landroid/content/Intent;
    sget-object v4, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    sget-object v4, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    sget-object v4, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    if-eqz p7, :cond_2

    .line 75
    invoke-virtual {v1, p7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    :cond_2
    const/high16 v4, 0x10000000

    invoke-static {p0, p1, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4

    .line 66
    .end local v1    # "casaCasinoIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v4, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to parse sound \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android.resource://com.scene53.partyLive/raw/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public static displayPushNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "sound"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const-string/jumbo v2, "pushNotif"

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/scene53/utils/NotificationUtils;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v8

    .line 173
    .local v8, "n":Landroid/app/Notification;
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 176
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v9, p4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 177
    return-void
.end method

.method public static getScheduledNotificationCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "count":I
    const-string/jumbo v7, "notification"

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 227
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 228
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v7, "Notification."

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    const/4 v7, 0x0

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "str":Ljava/lang/String;
    const-string/jumbo v7, "~~~"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "values":[Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, v6, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_2
    return v0
.end method

.method public static parseNotifications(Landroid/content/Context;)V
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x0

    .line 121
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 122
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 123
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 124
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v1, "Notification."

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-interface {v11, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "str":Ljava/lang/String;
    const-string/jumbo v1, "~~~"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, "values":[Ljava/lang/String;
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    array-length v1, v13

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 130
    aget-object v2, v13, v14

    const/4 v1, 0x1

    aget-object v3, v13, v1

    const/4 v1, 0x2

    aget-object v4, v13, v1

    const/4 v1, 0x3

    aget-object v5, v13, v1

    const/4 v1, 0x4

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v1, 0x5

    aget-object v8, v13, v1

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/scene53/utils/NotificationUtils;->actuallyScheduleNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid notification in preferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "values":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static removeNotificationFromPrefs(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .param p0, "edit"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Notification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public static scheduleNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "delay"    # I
    .param p6, "sound"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    add-long v6, v2, v4

    .local v6, "ts":J
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p6

    .line 92
    invoke-static/range {v1 .. v8}, Lcom/scene53/utils/NotificationUtils;->actuallyScheduleNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 93
    const-string/jumbo v0, "notification"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p6

    .line 94
    invoke-static/range {v1 .. v8}, Lcom/scene53/utils/NotificationUtils;->storeNotificationInPrefs(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method private static setColorForNotification(Landroid/app/Notification$Builder;I)V
    .locals 0
    .param p0, "b"    # Landroid/app/Notification$Builder;
    .param p1, "color"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 84
    return-void
.end method

.method private static storeNotificationInPrefs(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p0, "edit"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ts"    # J
    .param p7, "sound"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Notification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    return-void
.end method
