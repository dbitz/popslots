.class public final Lcom/helpshift/support/util/Meta;
.super Ljava/lang/Object;
.source "Meta.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static metaFn:Lcom/helpshift/support/Callable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanMetaForTags(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .param p0, "meta"    # Ljava/util/HashMap;

    .prologue
    .line 417
    const-string/jumbo v2, "hs-tags"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "tags":Ljava/lang/Object;
    const-string/jumbo v2, "hs-tags"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 420
    new-instance v1, Lorg/json/JSONArray;

    check-cast v0, [Ljava/lang/String;

    .end local v0    # "tags":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/support/util/Meta;->cleanTags([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 421
    .local v1, "tagsJSON":Lorg/json/JSONArray;
    const-string/jumbo v2, "hs-tags"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v1    # "tagsJSON":Lorg/json/JSONArray;
    :cond_0
    return-object p0
.end method

.method private static cleanTags([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [Ljava/lang/String;

    .prologue
    .line 398
    move-object v3, p0

    .line 400
    .local v3, "v":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "w":I
    move v1, v4

    .local v1, "r":I
    move v0, v4

    .line 401
    .local v0, "n":I
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 402
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v3, v1

    .line 403
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 405
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 409
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v3, v4, v0}, Lcom/helpshift/support/util/ArraysCompat;->copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 411
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "v":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 413
    .restart local v3    # "v":[Ljava/lang/String;
    return-object v3
.end method

.method private static formatLog(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "log"    # Ljava/util/HashMap;

    .prologue
    .line 343
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 345
    .local v1, "outputLog":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "message"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string/jumbo v2, "level"

    const-string/jumbo v3, "level"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "tag"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string/jumbo v2, "exception"

    const-string/jumbo v3, "exception"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-object v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Format debug lgos"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static formatLogList(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 358
    .local v1, "outputList":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 359
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/helpshift/support/util/Meta;->formatLog(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-object v1
.end method

.method private static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 229
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 235
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 230
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 233
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string/jumbo v4, "(unknown)"

    goto :goto_1
.end method

.method public static getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 335
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Package not found exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 309
    const-string/jumbo v3, "level"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 310
    .local v1, "level":I
    const-string/jumbo v3, "scale"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 312
    .local v2, "scale":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 313
    .local v0, "batteryPct":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getBatteryStatus(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    .line 324
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 325
    .local v1, "status":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 327
    .local v0, "isCharging":Z
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "Charging"

    :goto_1
    return-object v2

    .line 325
    .end local v0    # "isCharging":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    .restart local v0    # "isCharging":Z
    :cond_2
    const-string/jumbo v2, "Not charging"

    goto :goto_1
.end method

.method private static getBreadCrumbs(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/helpshift/support/HSStorage;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "storage":Lcom/helpshift/support/HSStorage;
    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomMeta()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v1, Lcom/helpshift/support/util/Meta;->metaFn:Lcom/helpshift/support/Callable;

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lcom/helpshift/support/util/Meta;->metaFn:Lcom/helpshift/support/Callable;

    invoke-interface {v1}, Lcom/helpshift/support/Callable;->call()Ljava/util/HashMap;

    move-result-object v0

    .line 371
    .local v0, "meta":Ljava/util/HashMap;
    if-eqz v0, :cond_0

    .line 372
    invoke-static {v0}, Lcom/helpshift/support/util/Meta;->removeEmptyKeyOrValue(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 373
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/support/util/Meta;->cleanMetaForTags(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 376
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "deviceInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, "platform"

    const-string/jumbo v8, "android"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v7, "library-version"

    const-string/jumbo v8, "4.1.1-support"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v7, "device-model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v7, "os-version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :try_start_0
    const-string/jumbo v7, "language-code"

    invoke-static {}, Lcom/helpshift/support/util/LocaleUtil;->getAcceptLanguageHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    sget-object v7, Lcom/helpshift/util/HSFormat;->deviceInfoTsFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "ts":Ljava/lang/String;
    const-string/jumbo v7, "timestamp"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v7, "application-identifier"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v7, "application-name"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v7, "application-version"

    invoke-static {p0}, Lcom/helpshift/util/ApplicationUtil;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v7, "disk-space"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getDiskSpace(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 180
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v7, "country-code"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v7, "carrier-name"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :try_start_1
    const-string/jumbo v7, "network-type"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "ifilter":Landroid/content/IntentFilter;
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v7, "battery-level"

    invoke-static {v0}, Lcom/helpshift/support/util/Meta;->getBatteryLevel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v7, "battery-status"

    invoke-static {v0}, Lcom/helpshift/support/util/Meta;->getBatteryStatus(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    return-object v1

    .line 159
    .end local v0    # "batteryStatus":Landroid/content/Intent;
    .end local v3    # "ifilter":Landroid/content/IntentFilter;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "ts":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "Device Info - MissingResourceException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 188
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v6    # "ts":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "No permission for Network Access"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getDiskSpace(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 20
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 245
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v2, "diskSpace":Lorg/json/JSONObject;
    new-instance v10, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 249
    .local v10, "phoneStat":Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x41d0000000000000L    # 1.073741824E9

    div-double v6, v16, v18

    .line 250
    .local v6, "free_phone_memory":D
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v6, v16, v18

    .line 251
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x41d0000000000000L    # 1.073741824E9

    div-double v12, v16, v18

    .line 252
    .local v12, "total_phone_memory":D
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v12, v16, v18

    .line 255
    :try_start_0
    const-string/jumbo v16, "free-space-phone"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " GB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v16, "total-space-phone"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " GB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    const/4 v5, 0x0

    .line 262
    .local v5, "hasWriteStoragePermission":I
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 263
    const-string/jumbo v16, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 266
    :cond_0
    if-nez v5, :cond_1

    .line 267
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "externalStoragePath":Ljava/lang/String;
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 270
    .local v11, "sdStat":Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x41d0000000000000L    # 1.073741824E9

    div-double v8, v16, v18

    .line 271
    .local v8, "free_sd_memory":D
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v8, v16, v18

    .line 272
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x41d0000000000000L    # 1.073741824E9

    div-double v14, v16, v18

    .line 273
    .local v14, "total_sd_memory":D
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v14, v16, v18

    .line 276
    :try_start_1
    const-string/jumbo v16, "free-space-sd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " GB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v16, "total-space-sd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " GB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    .end local v4    # "externalStoragePath":Ljava/lang/String;
    .end local v8    # "free_sd_memory":D
    .end local v11    # "sdStat":Landroid/os/StatFs;
    .end local v14    # "total_sd_memory":D
    :cond_1
    :goto_1
    return-object v2

    .line 257
    .end local v5    # "hasWriteStoragePermission":I
    :catch_0
    move-exception v3

    .line 258
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v16, "HelpShiftDebug"

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 278
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "externalStoragePath":Ljava/lang/String;
    .restart local v5    # "hasWriteStoragePermission":I
    .restart local v8    # "free_sd_memory":D
    .restart local v11    # "sdStat":Landroid/os/StatFs;
    .restart local v14    # "total_sd_memory":D
    :catch_1
    move-exception v3

    .line 279
    .restart local v3    # "e":Lorg/json/JSONException;
    const-string/jumbo v16, "HelpShiftDebug"

    const-string/jumbo v17, "getDiskSpace - SDCard : "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getExtra(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "customIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .local v0, "extra":Lorg/json/JSONObject;
    const-string/jumbo v1, "api-version"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v1, "library-version"

    const-string/jumbo v2, "4.1.1-support"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    if-eqz p0, :cond_0

    .line 212
    const-string/jumbo v1, "user-id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_0
    return-object v0
.end method

.method public static getMetaInfo(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "attachDeviceInfo"    # Ljava/lang/Boolean;
    .param p2, "customIdentifier"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v3, "meta":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "breadcrumbs"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getBreadCrumbs(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    const-string/jumbo v6, "device_info"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_1
    :try_start_2
    const-string/jumbo v6, "extra"

    invoke-static {p2}, Lcom/helpshift/support/util/Meta;->getExtra(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :goto_2
    :try_start_3
    sget-object v6, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v7, "dbgl"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 88
    .local v2, "logLimit":Ljava/lang/Integer;
    const-string/jumbo v6, "logs"

    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/helpshift/support/Log;->getLogs(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/support/util/Meta;->formatLogList(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v7

    .line 88
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 96
    .end local v2    # "logLimit":Ljava/lang/Integer;
    :goto_3
    :try_start_4
    new-instance v4, Lcom/helpshift/support/HSStorage;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    .line 97
    .local v4, "storage":Lcom/helpshift/support/HSStorage;
    const-string/jumbo v6, "device_token"

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getDeviceToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 102
    .end local v4    # "storage":Lcom/helpshift/support/HSStorage;
    :goto_4
    new-instance v4, Lcom/helpshift/support/HSStorage;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v4    # "storage":Lcom/helpshift/support/HSStorage;
    sget-object v6, Lcom/helpshift/support/util/Meta;->metaFn:Lcom/helpshift/support/Callable;

    if-eqz v6, :cond_3

    .line 106
    :try_start_5
    invoke-static {}, Lcom/helpshift/support/util/Meta;->getCustomMeta()Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "customMeta":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v6, "custom_meta"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_0
    invoke-virtual {v4, v0}, Lcom/helpshift/support/HSStorage;->setCustomMetaData(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 129
    .end local v0    # "customMeta":Lorg/json/JSONObject;
    :cond_1
    :goto_5
    return-object v3

    .line 61
    .end local v4    # "storage":Lcom/helpshift/support/HSStorage;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting device info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_6
    const-string/jumbo v6, "device_info"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    .line 74
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting device info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 82
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting extra info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 90
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 91
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting debug logs"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 98
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v1

    .line 99
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting device token"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 114
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "storage":Lcom/helpshift/support/HSStorage;
    :catch_5
    move-exception v1

    .line 115
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting extra meta"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 119
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_7
    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getCustomMetaData()Lorg/json/JSONObject;

    move-result-object v5

    .line 120
    .local v5, "storageMeta":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 121
    const-string/jumbo v6, "custom_meta"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    .line 123
    .end local v5    # "storageMeta":Lorg/json/JSONObject;
    :catch_6
    move-exception v1

    .line 124
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Exception in getting meta from storage "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static getMinimalDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 435
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "device-model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string/jumbo v4, "platform"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string/jumbo v4, "os-version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "application-identifier"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    const-string/jumbo v4, "application-name"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string/jumbo v4, "application-version"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string/jumbo v4, "library-version"

    const-string/jumbo v5, "4.1.1-support"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string/jumbo v4, "network-type"

    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    sget-object v4, Lcom/helpshift/util/HSFormat;->deviceInfoTsFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "timeStamp":Ljava/lang/String;
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 456
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Error parsing JSON while calling getMinimalDeviceInfo"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 452
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "No permission for Network Access"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 292
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 293
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 294
    .local v0, "ani":Landroid/net/NetworkInfo;
    const-string/jumbo v2, "Unknown"

    .line 295
    .local v2, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 298
    :cond_0
    return-object v2
.end method

.method private static removeEmptyKeyOrValue(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .param p0, "metadata"    # Ljava/util/HashMap;

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 382
    .local v1, "newMetaData":Ljava/util/HashMap;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 383
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 384
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 385
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 389
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 393
    .end local v0    # "key":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method

.method public static setMetadataCallback(Lcom/helpshift/support/Callable;)V
    .locals 0
    .param p0, "f"    # Lcom/helpshift/support/Callable;

    .prologue
    .line 365
    sput-object p0, Lcom/helpshift/support/util/Meta;->metaFn:Lcom/helpshift/support/Callable;

    .line 366
    return-void
.end method
