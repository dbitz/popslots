.class public Lcom/helpshift/support/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static downloadManager:Lcom/helpshift/support/DownloadManager;


# instance fields
.field private final FINAL_FILE:I

.field private final TEMP_FILE:I

.field private contentType:Ljava/lang/String;

.field currentThread:Ljava/lang/Thread;

.field private downloadRunnable:Ljava/lang/Runnable;

.field private downloadState:I

.field private downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

.field private downloadType:I

.field private downloadURL:Ljava/net/URL;

.field private downloadedFilePath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private finalFile:Ljava/io/File;

.field private height:J

.field private hsApiData:Lcom/helpshift/support/HSApiData;

.field private hsStorage:Lcom/helpshift/support/HSStorage;

.field private issueId:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private position:I

.field private progress:D

.field private size:I

.field private tempFile:Ljava/io/File;

.field private thumbnailUrl:Ljava/net/URL;

.field private width:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/support/DownloadTask;->TEMP_FILE:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/support/DownloadTask;->FINAL_FILE:I

    .line 50
    new-instance v0, Lcom/helpshift/support/DownloadRunnable;

    invoke-direct {v0, p0}, Lcom/helpshift/support/DownloadRunnable;-><init>(Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;)V

    iput-object v0, p0, Lcom/helpshift/support/DownloadTask;->downloadRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/DownloadTask;->downloadManager:Lcom/helpshift/support/DownloadManager;

    .line 52
    return-void
.end method

.method private createFile(I)Ljava/io/File;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 240
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lcom/helpshift/util/ApplicationUtil;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 247
    .local v0, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    const-string/jumbo v2, ""

    .line 253
    .local v2, "fileName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 264
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 244
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 255
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Support_Temp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .line 259
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Support_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getCurrentThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 216
    sget-object v1, Lcom/helpshift/support/DownloadTask;->downloadManager:Lcom/helpshift/support/DownloadManager;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->currentThread:Ljava/lang/Thread;

    monitor-exit v1

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDownloadRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->downloadRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/helpshift/support/DownloadTask;->downloadState:I

    return v0
.end method

.method public getDownloadTaskCallBacks()Lcom/helpshift/support/DownloadTaskCallBacks;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/helpshift/support/DownloadTask;->downloadType:I

    return v0
.end method

.method public getDownloadUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->downloadURL:Ljava/net/URL;

    return-object v0
.end method

.method public getDownloadedFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/helpshift/support/DownloadTask;->size:I

    return v0
.end method

.method public getFinalFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->finalFile:Ljava/io/File;

    return-object v0
.end method

.method public getIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()D
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/helpshift/support/DownloadTask;->progress:D

    return-wide v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/helpshift/support/DownloadTask;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public handleDownloadState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 148
    const/4 v1, 0x1

    .line 151
    .local v1, "outState":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/helpshift/support/DownloadTask;->handleState(I)V

    .line 153
    return-void

    .line 111
    .end local v1    # "outState":I
    :pswitch_0
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->removeFromActiveDownloads(Ljava/lang/String;)V

    .line 112
    iget v3, p0, Lcom/helpshift/support/DownloadTask;->downloadType:I

    packed-switch v3, :pswitch_data_1

    .line 129
    :goto_1
    const/4 v1, 0x4

    .line 130
    .restart local v1    # "outState":I
    goto :goto_0

    .line 114
    .end local v1    # "outState":I
    :pswitch_1
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/support/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/support/HSStorage;->addToDownloadedGenericFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/support/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/support/HSStorage;->addToDownloadedThumbnailFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :pswitch_3
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/support/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/support/HSStorage;->addToDownloadedImageFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "thumbnailFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->removeFromDownloadedThumbnailFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "thumbnailFilePath":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->removeFromActiveDownloads(Ljava/lang/String;)V

    .line 133
    const/4 v1, -0x1

    .line 134
    .restart local v1    # "outState":I
    goto :goto_0

    .line 136
    .end local v1    # "outState":I
    :pswitch_5
    const/4 v1, 0x3

    .line 137
    .restart local v1    # "outState":I
    goto :goto_0

    .line 139
    .end local v1    # "outState":I
    :pswitch_6
    const/4 v1, 0x2

    .line 140
    .restart local v1    # "outState":I
    goto :goto_0

    .line 142
    .end local v1    # "outState":I
    :pswitch_7
    const/4 v1, 0x5

    .line 143
    .restart local v1    # "outState":I
    goto :goto_0

    .line 145
    .end local v1    # "outState":I
    :pswitch_8
    const/4 v1, 0x1

    .line 146
    .restart local v1    # "outState":I
    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method handleState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 88
    sget-object v0, Lcom/helpshift/support/DownloadTask;->downloadManager:Lcom/helpshift/support/DownloadManager;

    iget v1, p0, Lcom/helpshift/support/DownloadTask;->position:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/helpshift/support/DownloadManager;->handleState(Lcom/helpshift/support/DownloadTask;II)V

    .line 89
    return-void
.end method

.method initializeDownloaderTask(Lcom/helpshift/support/DownloadManager;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "downloadManager"    # Lcom/helpshift/support/DownloadManager;
    .param p2, "attachment"    # Lorg/json/JSONObject;
    .param p3, "position"    # I
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "issueId"    # Ljava/lang/String;
    .param p6, "downloadType"    # I

    .prologue
    .line 61
    :try_start_0
    sput-object p1, Lcom/helpshift/support/DownloadTask;->downloadManager:Lcom/helpshift/support/DownloadManager;

    .line 62
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getDownloadTaskCallBacks()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

    .line 63
    new-instance v2, Lcom/helpshift/support/HSApiData;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->hsApiData:Lcom/helpshift/support/HSApiData;

    .line 64
    iget-object v2, p0, Lcom/helpshift/support/DownloadTask;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v2, v2, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->hsStorage:Lcom/helpshift/support/HSStorage;

    .line 65
    iput p6, p0, Lcom/helpshift/support/DownloadTask;->downloadType:I

    .line 66
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "url"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->downloadURL:Ljava/net/URL;

    .line 67
    const-string/jumbo v2, "file-name"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->fileName:Ljava/lang/String;

    .line 68
    const/16 v2, 0x8

    if-ne p6, v2, :cond_0

    .line 69
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "thumbnail"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->thumbnailUrl:Ljava/net/URL;

    .line 70
    iget-object v2, p0, Lcom/helpshift/support/DownloadTask;->thumbnailUrl:Ljava/net/URL;

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->downloadURL:Ljava/net/URL;

    .line 72
    :cond_0
    const-string/jumbo v2, "content-type"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->contentType:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/helpshift/support/DownloadTask;->contentType:Ljava/lang/String;

    const-string/jumbo v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->fileType:Ljava/lang/String;

    .line 75
    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/helpshift/support/DownloadTask;->size:I

    .line 76
    const/4 v2, 0x0

    iput v2, p0, Lcom/helpshift/support/DownloadTask;->downloadState:I

    .line 77
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/helpshift/support/DownloadTask;->createFile(I)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->tempFile:Ljava/io/File;

    .line 78
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/helpshift/support/DownloadTask;->createFile(I)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/DownloadTask;->finalFile:Ljava/io/File;

    .line 79
    iput p3, p0, Lcom/helpshift/support/DownloadTask;->position:I

    .line 80
    iput-object p4, p0, Lcom/helpshift/support/DownloadTask;->msgId:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/helpshift/support/DownloadTask;->issueId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "split":[Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Malformed URL"

    invoke-static {v2, v3, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/helpshift/support/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/helpshift/support/DownloadTask;->tempFile:Ljava/io/File;

    .line 230
    iput-object v0, p0, Lcom/helpshift/support/DownloadTask;->finalFile:Ljava/io/File;

    .line 231
    return-void
.end method

.method setCurrentThread(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 222
    sget-object v1, Lcom/helpshift/support/DownloadTask;->downloadManager:Lcom/helpshift/support/DownloadManager;

    monitor-enter v1

    .line 223
    :try_start_0
    iput-object p1, p0, Lcom/helpshift/support/DownloadTask;->currentThread:Ljava/lang/Thread;

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/helpshift/support/DownloadTask;->downloadState:I

    .line 163
    return-void
.end method

.method public setDownloadThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "currentThread"    # Ljava/lang/Thread;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/helpshift/support/DownloadTask;->setCurrentThread(Ljava/lang/Thread;)V

    .line 94
    return-void
.end method

.method public setDownloadedFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/helpshift/support/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setFinalFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/helpshift/support/DownloadTask;->finalFile:Ljava/io/File;

    .line 189
    return-void
.end method

.method public setProgress(D)V
    .locals 1
    .param p1, "progress"    # D

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/helpshift/support/DownloadTask;->progress:D

    .line 104
    return-void
.end method

.method public setTempFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/helpshift/support/DownloadTask;->tempFile:Ljava/io/File;

    .line 181
    return-void
.end method
