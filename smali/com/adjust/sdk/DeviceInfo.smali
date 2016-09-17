.class Lcom/adjust/sdk/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field androidId:Ljava/lang/String;

.field apiLevel:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field clientSdk:Ljava/lang/String;

.field country:Ljava/lang/String;

.field deviceManufacturer:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field deviceType:Ljava/lang/String;

.field displayHeight:Ljava/lang/String;

.field displayWidth:Ljava/lang/String;

.field fbAttributionId:Ljava/lang/String;

.field language:Ljava/lang/String;

.field macSha1:Ljava/lang/String;

.field macShortMd5:Ljava/lang/String;

.field osName:Ljava/lang/String;

.field osVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pluginKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field screenDensity:Ljava/lang/String;

.field screenFormat:Ljava/lang/String;

.field screenSize:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sdkPrefix"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 54
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 55
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 56
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 57
    .local v3, "locale":Ljava/util/Locale;
    iget v6, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 58
    .local v6, "screenLayout":I
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    .line 59
    .local v2, "isGooglePlayServicesAvailable":Z
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/adjust/sdk/DeviceInfo;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "macAddress":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 63
    invoke-direct {p0, v6}, Lcom/adjust/sdk/DeviceInfo;->getDeviceType(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->deviceType:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->deviceName:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->osName:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getApiLevel()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 69
    invoke-direct {p0, v3}, Lcom/adjust/sdk/DeviceInfo;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->language:Ljava/lang/String;

    .line 70
    invoke-direct {p0, v3}, Lcom/adjust/sdk/DeviceInfo;->getCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->country:Ljava/lang/String;

    .line 71
    invoke-direct {p0, v6}, Lcom/adjust/sdk/DeviceInfo;->getScreenSize(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->screenSize:Ljava/lang/String;

    .line 72
    invoke-direct {p0, v6}, Lcom/adjust/sdk/DeviceInfo;->getScreenFormat(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->screenFormat:Ljava/lang/String;

    .line 73
    invoke-direct {p0, v1}, Lcom/adjust/sdk/DeviceInfo;->getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->screenDensity:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v1}, Lcom/adjust/sdk/DeviceInfo;->getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->displayWidth:Ljava/lang/String;

    .line 75
    invoke-direct {p0, v1}, Lcom/adjust/sdk/DeviceInfo;->getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->displayHeight:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p2}, Lcom/adjust/sdk/DeviceInfo;->getClientSdk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1, v2}, Lcom/adjust/sdk/DeviceInfo;->getAndroidId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->fbAttributionId:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    .line 80
    invoke-direct {p0, v4}, Lcom/adjust/sdk/DeviceInfo;->getMacSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->macSha1:Ljava/lang/String;

    .line 81
    invoke-direct {p0, v4}, Lcom/adjust/sdk/DeviceInfo;->getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/adjust/sdk/DeviceInfo;->macShortMd5:Ljava/lang/String;

    .line 82
    return-void

    .line 58
    .end local v2    # "isGooglePlayServicesAvailable":Z
    .end local v4    # "macAddress":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private getAndroidId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGooglePlayServicesAvailable"    # Z

    .prologue
    .line 234
    if-nez p2, :cond_0

    .line 235
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getApiLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 102
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 104
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getClientSdk(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sdkPrefix"    # Ljava/lang/String;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string/jumbo v0, "android4.6.0"

    .line 210
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s@%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "android4.6.0"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceType(I)Ljava/lang/String;
    .locals 2
    .param p1, "screenLayout"    # I

    .prologue
    .line 111
    and-int/lit8 v0, p1, 0xf

    .line 113
    .local v0, "screenSize":I
    packed-switch v0, :pswitch_data_0

    .line 121
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 116
    :pswitch_0
    const-string/jumbo v1, "phone"

    goto :goto_0

    .line 119
    :pswitch_1
    const-string/jumbo v1, "tablet"

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 203
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 199
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 245
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "aid"

    .line 246
    .local v7, "columnName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aid"

    aput-object v4, v2, v3

    .line 247
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 249
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    move-object v6, v10

    .line 261
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 252
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "columnName":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v6, v10

    .line 254
    goto :goto_0

    .line 257
    :cond_1
    const-string/jumbo v3, "aid"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "attributionId":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "attributionId":Ljava/lang/String;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v6, v10

    .line 261
    goto :goto_0
.end method

.method private getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGooglePlayServicesAvailable"    # Z

    .prologue
    .line 85
    if-nez p2, :cond_1

    .line 86
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v0}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string/jumbo v1, "Missing permission: ACCESS_WIFI_STATE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMacSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "macSha1":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    .line 227
    :cond_0
    const-string/jumbo v2, ":"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "macShort":Ljava/lang/String;
    invoke-static {v0}, Lcom/adjust/sdk/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "macShortMd5":Ljava/lang/String;
    goto :goto_0
.end method

.method private getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "android"

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 4
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 184
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 185
    .local v0, "density":I
    const/16 v2, 0x8c

    .line 186
    .local v2, "low":I
    const/16 v1, 0xc8

    .line 188
    .local v1, "high":I
    if-nez v0, :cond_0

    .line 189
    const/4 v3, 0x0

    .line 195
    :goto_0
    return-object v3

    .line 190
    :cond_0
    if-ge v0, v2, :cond_1

    .line 191
    const-string/jumbo v3, "low"

    goto :goto_0

    .line 192
    :cond_1
    if-le v0, v1, :cond_2

    .line 193
    const-string/jumbo v3, "high"

    goto :goto_0

    .line 195
    :cond_2
    const-string/jumbo v3, "medium"

    goto :goto_0
.end method

.method private getScreenFormat(I)Ljava/lang/String;
    .locals 2
    .param p1, "screenLayout"    # I

    .prologue
    .line 171
    and-int/lit8 v0, p1, 0x30

    .line 173
    .local v0, "screenFormat":I
    sparse-switch v0, :sswitch_data_0

    .line 179
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 175
    :sswitch_0
    const-string/jumbo v1, "long"

    goto :goto_0

    .line 177
    :sswitch_1
    const-string/jumbo v1, "normal"

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private getScreenSize(I)Ljava/lang/String;
    .locals 2
    .param p1, "screenLayout"    # I

    .prologue
    .line 154
    and-int/lit8 v0, p1, 0xf

    .line 156
    .local v0, "screenSize":I
    packed-switch v0, :pswitch_data_0

    .line 166
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 158
    :pswitch_0
    const-string/jumbo v1, "small"

    goto :goto_0

    .line 160
    :pswitch_1
    const-string/jumbo v1, "normal"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string/jumbo v1, "large"

    goto :goto_0

    .line 164
    :pswitch_3
    const-string/jumbo v1, "xlarge"

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
