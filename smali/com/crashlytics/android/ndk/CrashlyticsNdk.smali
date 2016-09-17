.class public Lcom/crashlytics/android/ndk/CrashlyticsNdk;
.super Lio/fabric/sdk/android/Kit;
.source "CrashlyticsNdk.java"

# interfaces
.implements Lcom/crashlytics/android/core/internal/CrashEventDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/crashlytics/android/core/internal/CrashEventDataProvider;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashlyticsNdk"


# instance fields
.field private final crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

.field private crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

.field lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

.field private final nativeApi:Lcom/crashlytics/android/ndk/NativeApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/crashlytics/android/ndk/JniNativeApi;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JniNativeApi;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>(Lcom/crashlytics/android/ndk/NativeApi;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/NativeApi;)V
    .locals 1
    .param p1, "nativeApi"    # Lcom/crashlytics/android/ndk/NativeApi;

    .prologue
    .line 37
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->nativeApi:Lcom/crashlytics/android/ndk/NativeApi;

    .line 39
    new-instance v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    return-object v0
.end method

.method private getKitStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private readJsonCrashFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "crashFile"    # Ljava/io/File;

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "crashData":Ljava/lang/String;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "CrashlyticsNdk"

    const-string/jumbo v6, "Reading NDK crash data..."

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 151
    const-string/jumbo v4, "Error closing crash data file."

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v2, v3

    .line 154
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "CrashlyticsNdk"

    const-string/jumbo v6, "Failed to read NDK crash data."

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    const-string/jumbo v4, "Error closing crash data file."

    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    const-string/jumbo v5, "Error closing crash data file."

    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 148
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 111
    iget-object v3, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v3}, Lcom/crashlytics/android/ndk/CrashFileManager;->getLastWrittenCrashFile()Ljava/io/File;

    move-result-object v1

    .line 112
    .local v1, "lastCrashFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsNdk"

    const-string/jumbo v5, "Found NDK crash file..."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v1}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->readJsonCrashFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "rawCrashData":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 117
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseCrashEventData(Ljava/lang/String;)Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v3

    iput-object v3, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "rawCrashData":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v3}, Lcom/crashlytics/android/ndk/CrashFileManager;->clearCrashFiles()V

    .line 124
    const/4 v3, 0x0

    return-object v3

    .line 118
    .restart local v2    # "rawCrashData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsNdk"

    const-string/jumbo v5, "Crashlytics failed to parse prior crash data."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "com.crashlytics.sdk.android.crashlytics-ndk"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "1.1.2.90"

    return-object v0
.end method

.method protected onPreExecute()Z
    .locals 4

    .prologue
    .line 71
    const-class v2, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v2}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v2

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string/jumbo v3, "CrashlyticsNdk requires Crashlytics"

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_0
    new-instance v0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;

    invoke-direct {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getKitStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;-><init>(Ljava/io/File;)V

    .line 77
    .local v0, "crashFileManager":Lcom/crashlytics/android/ndk/CrashFileManager;
    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v1

    .line 78
    .local v1, "crashlyticsCore":Lcom/crashlytics/android/core/CrashlyticsCore;
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsKitBinder;

    invoke-direct {v2}, Lcom/crashlytics/android/core/CrashlyticsKitBinder;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->onPreExecute(Lcom/crashlytics/android/ndk/CrashFileManager;Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsKitBinder;)Z

    move-result v2

    return v2
.end method

.method onPreExecute(Lcom/crashlytics/android/ndk/CrashFileManager;Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsKitBinder;)Z
    .locals 6
    .param p1, "crashFileManager"    # Lcom/crashlytics/android/ndk/CrashFileManager;
    .param p2, "crashlyticsCore"    # Lcom/crashlytics/android/core/CrashlyticsCore;
    .param p3, "kitBinder"    # Lcom/crashlytics/android/core/CrashlyticsKitBinder;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, "initSuccess":Z
    :try_start_0
    invoke-interface {p1}, Lcom/crashlytics/android/ndk/CrashFileManager;->getNewCrashFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "crashFilePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->nativeApi:Lcom/crashlytics/android/ndk/NativeApi;

    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/crashlytics/android/ndk/NativeApi;->initialize(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 96
    .end local v0    # "crashFilePath":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p3, p2, p0}, Lcom/crashlytics/android/core/CrashlyticsKitBinder;->bindCrashEventDataProvider(Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/ndk/CrashlyticsNdk;)V

    .line 98
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsNdk"

    const-string/jumbo v5, "Crashlytics NDK initialization successful"

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return v2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsNdk"

    const-string/jumbo v5, "Error initializing CrashlyticsNdk"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
