.class public Lcom/scene53/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "sourceLocation"    # Ljava/lang/String;
    .param p1, "targetLocation"    # Ljava/lang/String;
    .param p2, "isAssets"    # Z

    .prologue
    .line 242
    const-string/jumbo v3, "//"

    const-string/jumbo v4, "/"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    const-string/jumbo v3, "//"

    const-string/jumbo v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    if-eqz p2, :cond_0

    .line 248
    :try_start_0
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scene53/Scene53App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 249
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, p1}, Lcom/scene53/utils/Utils;->saveFileToDest(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/scene53/utils/Utils;->copyFolderInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "sourceFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-static {p0, p1, p2}, Lcom/scene53/utils/Utils;->copyFolderInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 258
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 259
    .restart local v1    # "in":Ljava/io/InputStream;
    invoke-static {v1, p1}, Lcom/scene53/utils/Utils;->saveFileToDest(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private static copyFolderInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "sourceLocation"    # Ljava/lang/String;
    .param p1, "targetLocation"    # Ljava/lang/String;
    .param p2, "isAssets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    .line 275
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scene53/Scene53App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "children":[Ljava/lang/String;
    array-length v6, v1

    .line 279
    .local v6, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "//"

    const-string/jumbo v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "childName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "//"

    const-string/jumbo v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "targetName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scene53/Scene53App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 284
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {v5, v8}, Lcom/scene53/utils/Utils;->saveFileToDest(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0, v8, p2}, Lcom/scene53/utils/Utils;->copyFolderInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 290
    .end local v0    # "childName":Ljava/lang/String;
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v8    # "targetName":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 291
    .restart local v1    # "children":[Ljava/lang/String;
    array-length v6, v1

    .line 292
    .restart local v6    # "len":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 293
    new-instance v7, Ljava/io/File;

    aget-object v9, v1, v4

    invoke-direct {v7, p0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v7, "sourceFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p2}, Lcom/scene53/utils/Utils;->copyFolderInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 298
    :cond_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 299
    .restart local v5    # "in":Ljava/io/InputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/scene53/utils/Utils;->saveFileToDest(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_3

    .line 304
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "sourceFile":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, "&"

    const-string/jumbo v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\""

    const-string/jumbo v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\'"

    const-string/jumbo v2, "&#39;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scene53/Scene53App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scene53/Scene53App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 118
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v1

    .line 121
    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static getAvaialbeCacheSize()J
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/scene53/utils/Utils;->isExternalMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/scene53/utils/Utils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 386
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/scene53/utils/Utils;->getAvailableInternalMemorySize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 358
    invoke-static {}, Lcom/scene53/utils/Utils;->isExternalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 359
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 360
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 361
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 362
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 363
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 365
    :goto_0
    return-wide v6

    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 343
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 344
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 345
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 346
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getBootTime()I
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getBuildVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 142
    invoke-static {}, Lcom/scene53/utils/Utils;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceSpecificModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/scene53/utils/Utils;->getScreenSizeInInches()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenDpi()I
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scene53/Scene53App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 155
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method private static getScreenSizeInInches()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v1

    const-string/jumbo v8, "window"

    invoke-virtual {v1, v8}, Lcom/scene53/Scene53App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v8

    float-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 101
    .local v4, "x":D
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v8

    float-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 102
    .local v6, "y":D
    add-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 103
    .local v2, "screenInches":D
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v8, "#.##"

    invoke-direct {v1, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShortAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 125
    invoke-static {}, Lcom/scene53/utils/Utils;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0
.end method

.method public static getSubFoldersAtPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v1, Lcom/scene53/utils/Utils$3;

    invoke-direct {v1}, Lcom/scene53/utils/Utils$3;-><init>()V

    .line 228
    .local v1, "filter":Ljava/io/FileFilter;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 230
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSubFoldersAtPath directory doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 238
    :cond_0
    return-object v4

    .line 233
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 234
    .local v2, "folders":[Ljava/io/File;
    array-length v5, v2

    new-array v4, v5, [Ljava/lang/String;

    .line 235
    .local v4, "list":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 236
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getTotalExternalMemorySize()J
    .locals 8

    .prologue
    .line 370
    invoke-static {}, Lcom/scene53/utils/Utils;->isExternalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 372
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 374
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 375
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    .line 377
    :goto_0
    return-wide v6

    .end local v0    # "blockSize":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 351
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 352
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 353
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 354
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static getUrlQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 50
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDevelopVersion()Z
    .locals 5

    .prologue
    const/16 v4, 0x2e

    .line 133
    invoke-static {}, Lcom/scene53/utils/Utils;->getShortAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 136
    .local v0, "pos":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v0    # "pos":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static listAssetsByExpression(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 182
    :try_start_0
    const-string/jumbo v8, "."

    const-string/jumbo v9, "\\."

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "*"

    const-string/jumbo v10, ".*"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "regex":Ljava/lang/String;
    const-string/jumbo v8, "/"

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 184
    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 186
    :cond_0
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scene53/Scene53App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "assets":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 189
    .local v5, "p":Ljava/util/regex/Pattern;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 190
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 191
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "assets":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "regex":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 195
    :catch_0
    move-exception v8

    .line 197
    new-array v8, v11, [Ljava/lang/String;

    goto :goto_1
.end method

.method public static listFilesByDate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    const-string/jumbo v4, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listFilesByDate directory doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    .line 218
    :goto_0
    return-object v3

    .line 206
    :cond_0
    const-string/jumbo v4, "Scene53DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listFilesByDate Dir for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 208
    .local v1, "files":[Ljava/io/File;
    new-instance v4, Lcom/scene53/utils/Utils$2;

    invoke-direct {v4}, Lcom/scene53/utils/Utils$2;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 213
    array-length v4, v1

    new-array v3, v4, [Ljava/lang/String;

    .line 214
    .local v3, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 215
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    :cond_1
    const-string/jumbo v4, "Scene53DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listFilesByDate list size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static listFilesByExpression(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v4, "."

    const-string/jumbo v5, "\\."

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "*"

    const-string/jumbo v6, ".*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "regex":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 165
    .local v2, "p":Ljava/util/regex/Pattern;
    new-instance v1, Lcom/scene53/utils/Utils$1;

    invoke-direct {v1, v2}, Lcom/scene53/utils/Utils$1;-><init>(Ljava/util/regex/Pattern;)V

    .line 172
    .local v1, "filter":Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    const-string/jumbo v4, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listFilesByExpression directory doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 177
    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static openStorageSettings(Landroid/app/Activity;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 392
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public static reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p3, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 327
    .local v2, "len":I
    :goto_0
    new-array v1, v2, [Ljava/lang/String;

    .line 328
    .local v1, "keysArray":[Ljava/lang/String;
    new-array v3, v2, [Ljava/lang/String;

    .line 329
    .local v3, "valuesArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 330
    invoke-virtual {p3, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    .line 331
    invoke-virtual {p3, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "i":I
    .end local v1    # "keysArray":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "valuesArray":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 334
    .restart local v0    # "i":I
    .restart local v1    # "keysArray":[Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "valuesArray":[Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2, v1, v3}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public static native reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static saveFileToDest(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "targetLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, "targetFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 309
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 311
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 312
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 315
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 316
    return-void
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 77
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 74
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 68
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 65
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
