.class Lcom/crashlytics/android/ndk/JsonCrashDataParser;
.super Ljava/lang/Object;
.source "JsonCrashDataParser.java"


# static fields
.field private static final CUSTOM_KEY_JSON_SESSION:Ljava/lang/String; = "json_session"

.field private static final DATA_DIR:Ljava/lang/String; = "/data"

.field private static final EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

.field private static final EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

.field private static final EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

.field static final KEY_AVAILABLE_INTERNAL_STORAGE:Ljava/lang/String; = "available_internal_storage"

.field static final KEY_AVAILABLE_PHYSICAL_MEMORY:Ljava/lang/String; = "available_physical_memory"

.field static final KEY_BATTERY_CAPACITY:Ljava/lang/String; = "battery"

.field static final KEY_BATTERY_VELOCITY:Ljava/lang/String; = "battery_velocity"

.field static final KEY_CRASHED:Ljava/lang/String; = "crashed"

.field static final KEY_FRAMES:Ljava/lang/String; = "frames"

.field static final KEY_MAPS:Ljava/lang/String; = "maps"

.field static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field static final KEY_PC:Ljava/lang/String; = "pc"

.field static final KEY_PROXIMITY_ENABLED:Ljava/lang/String; = "proximity_enabled"

.field static final KEY_SIG_CODE:Ljava/lang/String; = "sig_code"

.field static final KEY_SIG_NAME:Ljava/lang/String; = "sig_name"

.field static final KEY_SI_ADDR:Ljava/lang/String; = "si_addr"

.field static final KEY_SYMBOL:Ljava/lang/String; = "symbol"

.field static final KEY_THREADS:Ljava/lang/String; = "threads"

.field static final KEY_THREAD_NAME:Ljava/lang/String; = "name"

.field static final KEY_TIME:Ljava/lang/String; = "time"

.field static final KEY_TOTAL_INTERNAL_STORAGE:Ljava/lang/String; = "total_internal_storage"

.field static final KEY_TOTAL_PHYSICAL_MEMORY:Ljava/lang/String; = "total_physical_memory"

.field private static final TAG:Ljava/lang/String; = "JsonCrashDataParser"


# instance fields
.field private final fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-array v0, v1, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 53
    new-array v0, v1, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 54
    new-array v0, v1, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/crashlytics/android/ndk/Sha1FileIdStrategy;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/Sha1FileIdStrategy;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;-><init>(Lcom/crashlytics/android/ndk/FileIdStrategy;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/FileIdStrategy;)V
    .locals 0
    .param p1, "fileIdStrategy"    # Lcom/crashlytics/android/ndk/FileIdStrategy;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;

    .line 70
    return-void
.end method

.method private static correctDataPath(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0, "missingFile"    # Ljava/io/File;

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 214
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "missingFile":Ljava/io/File;
    .local v3, "missingFile":Ljava/io/File;
    move-object p0, v3

    .line 219
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "missingFile":Ljava/io/File;
    .restart local p0    # "missingFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "JsonCrashDataParser"

    const-string/jumbo v6, "Error getting ApplicationInfo"

    invoke-interface {v4, v5, v6, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getLibraryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "libFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->correctDataPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 205
    :cond_0
    return-object v0
.end method


# virtual methods
.method public parseBinaryImageData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    .locals 14
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 123
    const-string/jumbo v2, "maps"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 125
    .local v10, "entries":Lorg/json/JSONArray;
    if-nez v10, :cond_0

    .line 126
    sget-object v2, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 152
    :goto_0
    return-object v2

    .line 129
    :cond_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 130
    .local v8, "binaryImages":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/internal/models/BinaryImageData;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 131
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, "mapEntryString":Ljava/lang/String;
    invoke-static {v12}, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->parse(Ljava/lang/String;)Lcom/crashlytics/android/ndk/ProcMapEntry;

    move-result-object v13

    .line 135
    .local v13, "mapInfo":Lcom/crashlytics/android/ndk/ProcMapEntry;
    if-nez v13, :cond_1

    .line 130
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v6, v13, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    .line 140
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->getLibraryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "binFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;

    invoke-interface {v2, v0}, Lcom/crashlytics/android/ndk/FileIdStrategy;->getId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "id":Ljava/lang/String;
    new-instance v1, Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    iget-wide v2, v13, Lcom/crashlytics/android/ndk/ProcMapEntry;->address:J

    iget-wide v4, v13, Lcom/crashlytics/android/ndk/ProcMapEntry;->size:J

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/core/internal/models/BinaryImageData;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v1, "binaryImage":Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    .end local v1    # "binaryImage":Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    .end local v7    # "id":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 148
    .local v9, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "JsonCrashDataParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not generate ID for file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v9}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 152
    .end local v0    # "binFile":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "mapEntryString":Ljava/lang/String;
    .end local v13    # "mapInfo":Lcom/crashlytics/android/ndk/ProcMapEntry;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    goto :goto_0
.end method

.method public parseCrashEventData(Ljava/lang/String;)Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 9
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "jsonCrash":Lorg/json/JSONObject;
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    .local v2, "timestamp":J
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseSignalData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/SignalData;

    move-result-object v4

    .line 77
    .local v4, "signal":Lcom/crashlytics/android/core/internal/models/SignalData;
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseThreadData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;

    move-result-object v5

    .line 78
    .local v5, "threads":[Lcom/crashlytics/android/core/internal/models/ThreadData;
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseBinaryImageData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    move-result-object v6

    .line 79
    .local v6, "binaryImages":[Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseCustomAttributes(Ljava/lang/String;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-result-object v7

    .line 80
    .local v7, "customAttributes":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseDeviceData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/DeviceData;

    move-result-object v8

    .line 82
    .local v8, "deviceData":Lcom/crashlytics/android/core/internal/models/DeviceData;
    new-instance v1, Lcom/crashlytics/android/core/internal/models/SessionEventData;

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/core/internal/models/SessionEventData;-><init>(JLcom/crashlytics/android/core/internal/models/SignalData;[Lcom/crashlytics/android/core/internal/models/ThreadData;[Lcom/crashlytics/android/core/internal/models/BinaryImageData;[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Lcom/crashlytics/android/core/internal/models/DeviceData;)V

    return-object v1
.end method

.method public parseCustomAttributes(Ljava/lang/String;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    const-string/jumbo v3, "json_session"

    invoke-direct {v2, v3, p1}, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public parseDeviceData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/DeviceData;
    .locals 14
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "orientation":I
    const-string/jumbo v0, "total_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 95
    .local v2, "totalPhysicalMemory":J
    const-string/jumbo v0, "total_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 96
    .local v4, "totalInternalStorage":J
    const-string/jumbo v0, "available_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 97
    .local v6, "availablePhysicalMemory":J
    const-string/jumbo v0, "available_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 98
    .local v8, "availableInternalStorage":J
    const-string/jumbo v0, "battery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 100
    .local v10, "batteryCapacity":I
    const-string/jumbo v0, "battery_velocity"

    const/4 v13, 0x1

    invoke-virtual {p1, v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 101
    .local v11, "batteryVelocity":I
    const-string/jumbo v0, "proximity_enabled"

    const/4 v13, 0x0

    invoke-virtual {p1, v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 103
    .local v12, "proximity":Z
    new-instance v0, Lcom/crashlytics/android/core/internal/models/DeviceData;

    invoke-direct/range {v0 .. v12}, Lcom/crashlytics/android/core/internal/models/DeviceData;-><init>(IJJJJIIZ)V

    return-object v0
.end method

.method public parseFrameData(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    .locals 14
    .param p1, "jsonThread"    # Lorg/json/JSONObject;
    .param p2, "threadImportance"    # I

    .prologue
    .line 176
    const-string/jumbo v1, "frames"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 177
    .local v11, "jsonFrames":Lorg/json/JSONArray;
    if-nez v11, :cond_1

    .line 178
    sget-object v9, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 190
    :cond_0
    return-object v9

    .line 181
    :cond_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 182
    .local v12, "len":I
    new-array v9, v12, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 183
    .local v9, "frames":[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 184
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    .local v0, "frame":Lorg/json/JSONObject;
    const-string/jumbo v1, "pc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    .local v2, "pc":J
    const-string/jumbo v1, "symbol"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 187
    .local v13, "maybeSymbol":Ljava/lang/String;
    if-nez v13, :cond_2

    const-string/jumbo v4, ""

    .line 188
    .local v4, "symbol":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    aput-object v1, v9, v10

    .line 183
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v4    # "symbol":Ljava/lang/String;
    :cond_2
    move-object v4, v13

    .line 187
    goto :goto_1
.end method

.method public parseSignalData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/SignalData;
    .locals 6
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    const-string/jumbo v4, "sig_name"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "sigName":Ljava/lang/String;
    const-string/jumbo v4, "sig_code"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "sigCode":Ljava/lang/String;
    const-string/jumbo v4, "si_addr"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 119
    .local v0, "sigAddr":J
    new-instance v4, Lcom/crashlytics/android/core/internal/models/SignalData;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/crashlytics/android/core/internal/models/SignalData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public parseThreadData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;
    .locals 9
    .param p1, "jsonCrash"    # Lorg/json/JSONObject;

    .prologue
    .line 156
    const-string/jumbo v7, "threads"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 157
    .local v2, "jsonThreads":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 158
    sget-object v6, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 171
    :cond_0
    return-object v6

    .line 161
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 162
    .local v3, "len":I
    new-array v6, v3, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 163
    .local v6, "threads":[Lcom/crashlytics/android/core/internal/models/ThreadData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 164
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 165
    .local v1, "jsonThread":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "threadName":Ljava/lang/String;
    const-string/jumbo v7, "crashed"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x4

    .line 168
    .local v4, "threadImportance":I
    :goto_1
    new-instance v7, Lcom/crashlytics/android/core/internal/models/ThreadData;

    invoke-virtual {p0, v1, v4}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseFrameData(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    move-result-object v8

    invoke-direct {v7, v5, v4, v8}, Lcom/crashlytics/android/core/internal/models/ThreadData;-><init>(Ljava/lang/String;I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    aput-object v7, v6, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v4    # "threadImportance":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
