.class Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;
.super Ljava/lang/Object;
.source "TimeBasedCrashFileManager.java"

# interfaces
.implements Lcom/crashlytics/android/ndk/CrashFileManager;


# static fields
.field private static final CRASHFILE_EXT:Ljava/lang/String; = ".ndk.json"

.field private static final EMPTY_FILES:[Ljava/io/File;


# instance fields
.field private final nativeCrashDirectory:Ljava/io/File;

.field private final timeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->EMPTY_FILES:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "nativeCrashDirectory"    # Ljava/io/File;

    .prologue
    .line 23
    new-instance v0, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;-><init>(Ljava/io/File;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;)V

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;)V
    .locals 0
    .param p1, "nativeCrashDirectory"    # Ljava/io/File;
    .param p2, "timeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->nativeCrashDirectory:Ljava/io/File;

    .line 28
    iput-object p2, p0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->timeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    .line 29
    return-void
.end method

.method private findLatestCrashFileByValue()Ljava/io/File;
    .locals 9

    .prologue
    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "latestFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->getFiles()[Ljava/io/File;

    move-result-object v1

    .line 54
    .local v1, "files":[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 55
    .local v2, "highest":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_1

    .line 56
    aget-object v0, v1, v4

    .line 57
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 58
    .local v6, "value":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    .line 59
    move-wide v2, v6

    .line 60
    move-object v5, v0

    .line 55
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "f":Ljava/io/File;
    .end local v6    # "value":J
    :cond_1
    return-object v5
.end method

.method private getFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->nativeCrashDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->EMPTY_FILES:[Ljava/io/File;

    .end local v0    # "files":[Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private stripExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, ".ndk.json"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCrashFiles()V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->getFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 45
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public getLastWrittenCrashFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->findLatestCrashFileByValue()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNewCrashFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->timeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".ndk.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;->nativeCrashDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
