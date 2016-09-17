.class public Lcom/helpshift/util/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"

.field private static final sdPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".backups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/helpshift/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupData(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->doesDatabaseExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    :try_start_0
    sget-object v3, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 80
    .local v2, "sd":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 84
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v0, "dstDBPath":Ljava/io/File;
    if-eqz p1, :cond_3

    .line 87
    invoke-static {v0, p1}, Lcom/helpshift/util/DBUtil;->copy(Ljava/io/File;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0    # "dstDBPath":Ljava/io/File;
    .end local v2    # "sd":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HelpshiftDebug"

    const-string/jumbo v4, "backupDatabase"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dstDBPath":Ljava/io/File;
    .restart local v2    # "sd":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-static {v0, p0}, Lcom/helpshift/util/DBUtil;->copy(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static backupDatabase(Ljava/lang/String;)V
    .locals 1
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/helpshift/util/DBUtil;->backupData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 100
    return-void
.end method

.method public static backupHashMap(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    invoke-static {p0, p1}, Lcom/helpshift/util/DBUtil;->backupData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 104
    return-void
.end method

.method private static copy(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p0, "dstDBPath"    # Ljava/io/File;
    .param p1, "srcDBPathName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "currentDBPath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "dst":Ljava/nio/channels/FileChannel;
    move-object v1, v0

    .line 49
    .local v1, "src":Ljava/lang/Object;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v7, "srcDBPath":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 51
    .local v1, "src":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 52
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 53
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 54
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v1, :cond_0

    .line 62
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 71
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v7    # "srcDBPath":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    .line 61
    if-eqz v1, :cond_2

    .line 62
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 64
    :cond_2
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v2

    goto :goto_0

    .line 57
    :catch_2
    move-exception v2

    .line 61
    if-eqz v1, :cond_3

    .line 62
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 64
    :cond_3
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 67
    :catch_3
    move-exception v2

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v2

    .line 61
    if-eqz v1, :cond_4

    .line 62
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 64
    :cond_4
    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 68
    :cond_5
    :goto_1
    throw v2

    .line 67
    :catch_4
    move-exception v3

    goto :goto_1

    .restart local v1    # "src":Ljava/nio/channels/FileChannel;
    .restart local v7    # "srcDBPath":Ljava/io/File;
    :catch_5
    move-exception v2

    goto :goto_0
.end method

.method private static copy(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "dstFilePath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    .line 27
    .local v0, "outputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    .local v1, "outputStream":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 41
    .end local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 38
    .end local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 40
    .end local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 29
    :catch_1
    move-exception v2

    .line 35
    :goto_1
    if-eqz v0, :cond_1

    .line 36
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 38
    :catch_2
    move-exception v2

    goto :goto_0

    .line 31
    :catch_3
    move-exception v2

    .line 35
    :goto_2
    if-eqz v0, :cond_1

    .line 36
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 38
    :catch_4
    move-exception v2

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v2

    .line 35
    :goto_3
    if-eqz v0, :cond_2

    .line 36
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 39
    :cond_2
    :goto_4
    throw v2

    .line 38
    :catch_5
    move-exception v3

    goto :goto_4

    .line 34
    .end local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 31
    .end local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 29
    .end local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "outputStream":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static doesDatabaseExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static doesExternalFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 150
    sget-object v2, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "sd":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v1, "srcPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static restoreDatabaseBackup(Ljava/lang/String;)V
    .locals 11
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->doesDatabaseExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    .local v0, "dst":Ljava/nio/channels/FileChannel;
    move-object v1, v0

    .line 115
    .local v1, "src":Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 117
    .local v9, "sd":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    invoke-virtual {v2, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "currentDBPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v10, "srcDBPath":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v7, "dstDBPath":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 125
    .local v1, "src":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 127
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "dstDBPath":Ljava/io/File;
    .end local v10    # "srcDBPath":Ljava/io/File;
    :cond_2
    if-eqz v1, :cond_3

    .line 134
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 136
    :cond_3
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    goto :goto_0

    .line 129
    .end local v9    # "sd":Ljava/io/File;
    :catch_1
    move-exception v8

    .line 130
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "HelpshiftDebug"

    const-string/jumbo v3, "restoreDatabaseBackup"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    if-eqz v1, :cond_4

    .line 134
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 136
    :cond_4
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 139
    :catch_2
    move-exception v2

    goto :goto_0

    .line 132
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 133
    if-eqz v1, :cond_5

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 136
    :cond_5
    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    :cond_6
    :goto_1
    throw v2

    .line 139
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static restoreHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->doesExternalFileExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 157
    const/4 v1, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 160
    :cond_1
    const/4 v1, 0x0

    .line 161
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const/4 v3, 0x0

    .line 163
    .local v3, "inputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    sget-object v7, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 165
    .local v5, "sd":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v6, "srcDBPath":Ljava/io/File;
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .local v4, "inputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 175
    .end local v4    # "inputStream":Ljava/io/ObjectInputStream;
    .end local v6    # "srcDBPath":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :cond_2
    if-eqz v3, :cond_0

    .line 176
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v7

    goto :goto_0

    .line 171
    .end local v5    # "sd":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "HelpshiftDebug"

    const-string/jumbo v8, "restoreDatabaseBackup"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    if-eqz v3, :cond_0

    .line 176
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 178
    :catch_2
    move-exception v7

    goto :goto_0

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 175
    :goto_2
    if-eqz v3, :cond_3

    .line 176
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 179
    :cond_3
    :goto_3
    throw v7

    .line 178
    :catch_3
    move-exception v8

    goto :goto_3

    .line 174
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v5    # "sd":Ljava/io/File;
    .restart local v6    # "srcDBPath":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 171
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "inputStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "inputStream":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method
