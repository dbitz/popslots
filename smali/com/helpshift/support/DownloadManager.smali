.class public Lcom/helpshift/support/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/DownloadManager$Holder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field static final DOWNLOAD_COMPLETE:I = 0x4

.field static final DOWNLOAD_FAILED:I = -0x1

.field static final DOWNLOAD_PAUSED:I = 0x2

.field static final DOWNLOAD_RESUMED:I = 0x3

.field static final DOWNLOAD_STARTED:I = 0x1

.field public static final GENERIC:I = 0x6

.field public static final IMAGE:I = 0x7

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x5

.field static final PROGRESS_CHANGED:I = 0x5

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final THUMBNAIL:I = 0x8

.field private static downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;


# instance fields
.field private final downloadRunnableQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/helpshift/support/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private handler:Landroid/os/Handler;

.field private hsApiData:Lcom/helpshift/support/HSApiData;

.field private hsStorage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/helpshift/support/DownloadManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/DownloadManager;->downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/DownloadManager;->downloadRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/helpshift/support/DownloadManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/helpshift/support/DownloadManager;->downloadRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/helpshift/support/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/DownloadManager;->hsApiData:Lcom/helpshift/support/HSApiData;

    .line 56
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v0, p0, Lcom/helpshift/support/DownloadManager;->hsStorage:Lcom/helpshift/support/HSStorage;

    .line 58
    new-instance v0, Lcom/helpshift/support/DownloadManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/helpshift/support/DownloadManager$1;-><init>(Lcom/helpshift/support/DownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/helpshift/support/DownloadManager;->handler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/support/DownloadTaskCallBacks;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/DownloadManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/DownloadManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/helpshift/support/DownloadManager;->removeFromCache(Ljava/lang/String;)V

    return-void
.end method

.method private addToCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/support/HSStorage;->addToCachedAttachmentFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static deregisterDownloadTaskCallBacks()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

    .line 262
    return-void
.end method

.method private getCachedAttachmentFiles()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadTaskCallBacks()Lcom/helpshift/support/DownloadTaskCallBacks;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/helpshift/support/DownloadManager;
    .locals 2

    .prologue
    .line 122
    const-class v0, Lcom/helpshift/support/DownloadManager;

    monitor-enter v0

    :try_start_0
    # getter for: Lcom/helpshift/support/DownloadManager$Holder;->INSTANCE:Lcom/helpshift/support/DownloadManager;
    invoke-static {}, Lcom/helpshift/support/DownloadManager$Holder;->access$200()Lcom/helpshift/support/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static pauseDownload(Lcom/helpshift/support/DownloadTask;Ljava/net/URL;I)V
    .locals 4
    .param p0, "downloadTask"    # Lcom/helpshift/support/DownloadTask;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "position"    # I

    .prologue
    .line 213
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getDownloadUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v2

    monitor-enter v2

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 216
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 217
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/support/DownloadTask;->setDownloadState(I)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 220
    :cond_0
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/support/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 221
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v3, p2}, Lcom/helpshift/support/DownloadManager;->handleState(Lcom/helpshift/support/DownloadTask;II)V

    .line 222
    monitor-exit v2

    .line 224
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerDownloadTaskCallbacks(Lcom/helpshift/support/DownloadTaskCallBacks;)V
    .locals 0
    .param p0, "callBacks"    # Lcom/helpshift/support/DownloadTaskCallBacks;

    .prologue
    .line 257
    sput-object p0, Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;

    .line 258
    return-void
.end method

.method public static removeDownload(Lcom/helpshift/support/DownloadTask;Ljava/net/URL;I)V
    .locals 3
    .param p0, "downloadTask"    # Lcom/helpshift/support/DownloadTask;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "position"    # I

    .prologue
    .line 196
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getDownloadUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v2

    monitor-enter v2

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 200
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 203
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpshift/support/DownloadManager;->removeFromCache(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/support/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 208
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    .line 203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeFromCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p1}, Lcom/helpshift/support/HSStorage;->removeFromCachedAttachmentFiles(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static resumeDownload(Lcom/helpshift/support/DownloadTask;Ljava/net/URL;I)V
    .locals 3
    .param p0, "downloadTask"    # Lcom/helpshift/support/DownloadTask;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "position"    # I

    .prologue
    .line 229
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getDownloadUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 231
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/helpshift/support/DownloadTask;->setDownloadState(I)V

    .line 232
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/support/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/helpshift/support/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 233
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, p2}, Lcom/helpshift/support/DownloadManager;->handleState(Lcom/helpshift/support/DownloadTask;II)V

    .line 234
    monitor-exit v1

    .line 236
    :cond_0
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startDownload(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)Lcom/helpshift/support/DownloadTask;
    .locals 9
    .param p0, "attachment"    # Lorg/json/JSONObject;
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 155
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/support/DownloadManager;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, p2, p3}, Lcom/helpshift/support/HSStorage;->addToActiveDownloads(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/support/DownloadManager;->downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/DownloadTask;

    .line 158
    .local v0, "downloadTask":Lcom/helpshift/support/DownloadTask;
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/helpshift/support/DownloadTask;

    .end local v0    # "downloadTask":Lcom/helpshift/support/DownloadTask;
    invoke-direct {v0}, Lcom/helpshift/support/DownloadTask;-><init>()V

    .line 161
    .restart local v0    # "downloadTask":Lcom/helpshift/support/DownloadTask;
    :cond_0
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/support/DownloadTask;->initializeDownloaderTask(Lcom/helpshift/support/DownloadManager;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)V

    .line 169
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    invoke-direct {v1}, Lcom/helpshift/support/DownloadManager;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v7

    .line 171
    .local v7, "cachedFiles":Lorg/json/JSONObject;
    invoke-virtual {v7, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    new-instance v1, Ljava/io/File;

    invoke-virtual {v7, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/support/DownloadTask;->setTempFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v7    # "cachedFiles":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v0}, Lcom/helpshift/support/DownloadTask;->getDownloadState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/helpshift/support/DownloadTask;->getDownloadState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 183
    :cond_1
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/support/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/helpshift/support/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 189
    :goto_1
    return-object v0

    .line 174
    .restart local v7    # "cachedFiles":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Lcom/helpshift/support/DownloadTask;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-direct {v1, p2, v2}, Lcom/helpshift/support/DownloadManager;->addToCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 177
    .end local v7    # "cachedFiles":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 178
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception JSON"

    invoke-static {v1, v2, v8}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->getInstance()Lcom/helpshift/support/DownloadManager;

    move-result-object v1

    .line 186
    invoke-virtual {v0}, Lcom/helpshift/support/DownloadTask;->getDownloadState()I

    move-result v2

    .line 185
    invoke-virtual {v1, v0, v2, p1}, Lcom/helpshift/support/DownloadManager;->handleState(Lcom/helpshift/support/DownloadTask;II)V

    goto :goto_1
.end method


# virtual methods
.method public handleState(Lcom/helpshift/support/DownloadTask;II)V
    .locals 3
    .param p1, "downloadTask"    # Lcom/helpshift/support/DownloadTask;
    .param p2, "state"    # I
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 127
    packed-switch p2, :pswitch_data_0

    .line 145
    iget-object v1, p0, Lcom/helpshift/support/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/helpshift/support/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 133
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/helpshift/support/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 134
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 137
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lcom/helpshift/support/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 141
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/helpshift/support/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 142
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method recycleTask(Lcom/helpshift/support/DownloadTask;)V
    .locals 1
    .param p1, "downloadTask"    # Lcom/helpshift/support/DownloadTask;

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/helpshift/support/DownloadTask;->recycle()V

    .line 241
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager;->downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method
