.class public Lcom/helpshift/support/DownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;
    }
.end annotation


# static fields
.field static final HTTP_STATE_COMPLETED:I = 0x3

.field static final HTTP_STATE_FAILED:I = -0x1

.field static final HTTP_STATE_PAUSED:I = 0x1

.field static final HTTP_STATE_RESUMED:I = 0x2

.field static final HTTP_STATE_STARTED:I = 0x0

.field static final PROGRESS_CHANGED:I = 0x4

.field static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field byteBuffer:[B

.field final downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

.field private downloadedBytes:J

.field private totalBytes:J

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;)V
    .locals 2
    .param p1, "downloadTask"    # Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Helpshift-Android/4.1.1-support/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/DownloadRunnable;->userAgent:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    .line 33
    return-void
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 149
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 155
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_2

    .line 156
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 158
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 159
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "Exception File Not Found"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v2, :cond_0

    .line 165
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 170
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 171
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 176
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 164
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 165
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 170
    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    .line 171
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 174
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 173
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 175
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 160
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    :catch_2
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "Exception IO"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 164
    if-eqz v2, :cond_5

    .line 165
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 170
    :cond_5
    :goto_6
    if-eqz v5, :cond_1

    .line 171
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 173
    :catch_3
    move-exception v7

    goto :goto_3

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 164
    :goto_7
    if-eqz v2, :cond_6

    .line 165
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 170
    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 171
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 174
    :cond_7
    :goto_9
    throw v7

    .line 167
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    goto :goto_2

    .line 173
    :catch_6
    move-exception v7

    goto :goto_3

    .line 167
    .local v1, "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v8

    goto :goto_8

    .line 173
    :catch_9
    move-exception v8

    goto :goto_9

    .line 163
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_7

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 160
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_b
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 158
    :catch_c
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadThread(Ljava/lang/Thread;)V

    .line 38
    const/16 v13, 0xa

    invoke-static {v13}, Landroid/os/Process;->setThreadPriority(I)V

    .line 41
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 42
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 133
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception Interrupted"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    .line 142
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    .line 46
    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadUrl()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 48
    .local v9, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string/jumbo v13, "User-Agent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/DownloadRunnable;->userAgent:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getTempFile()Ljava/io/File;

    move-result-object v5

    .line 52
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadedBytes:J

    .line 53
    const-string/jumbo v13, "Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/helpshift/support/DownloadRunnable;->downloadedBytes:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    .line 57
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    .line 58
    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 59
    :cond_2
    const/4 v2, 0x0

    .line 60
    .local v2, "byteStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 63
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 64
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :catch_1
    move-exception v4

    .line 114
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 115
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    if-eqz v2, :cond_3

    .line 119
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    :cond_3
    :goto_2
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 126
    if-eqz v7, :cond_4

    .line 127
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 138
    .end local v2    # "byteStream":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    goto/16 :goto_0

    .line 66
    .restart local v2    # "byteStream":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 68
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 69
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :catchall_0
    move-exception v13

    :goto_4
    if-eqz v2, :cond_6

    .line 119
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 125
    :cond_6
    :goto_5
    :try_start_9
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 126
    if-eqz v7, :cond_7

    .line 127
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v13
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 134
    .end local v2    # "byteStream":Ljava/io/InputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v4

    .line 135
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 136
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    goto/16 :goto_0

    .line 72
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "byteStream":Ljava/io/InputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :cond_8
    :try_start_b
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 73
    .local v3, "contentSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getFileSize()I

    move-result v13

    int-to-long v14, v13

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/helpshift/support/DownloadRunnable;->totalBytes:J

    .line 75
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v8, v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 77
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v13, 0x400

    :try_start_c
    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->byteBuffer:[B

    .line 80
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->byteBuffer:[B

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v2, v13, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, "readResult":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    .line 81
    if-gez v12, :cond_a

    .line 82
    new-instance v13, Ljava/io/EOFException;

    invoke-direct {v13}, Ljava/io/EOFException;-><init>()V

    throw v13

    .line 113
    .end local v12    # "readResult":I
    :catch_3
    move-exception v4

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 85
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "readResult":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->byteBuffer:[B

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadedBytes:J

    .line 87
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadedBytes:J

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/helpshift/support/DownloadRunnable;->totalBytes:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x40c3880000000000L    # 10000.0

    mul-double v10, v14, v16

    .line 88
    .local v10, "progress":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13, v10, v11}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setProgress(D)V

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x4

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    .line 91
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 92
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13

    .line 117
    .end local v10    # "progress":D
    .end local v12    # "readResult":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 96
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "readResult":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    .line 97
    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_d

    .line 101
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getTempFile()Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getFinalFile()Ljava/io/File;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/helpshift/support/DownloadRunnable;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getTempFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getFinalFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13, v6}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadedFilePath(Ljava/lang/String;)V

    .line 107
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->byteBuffer:[B

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadThread(Ljava/lang/Thread;)V

    .line 109
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 117
    .end local v6    # "filePath":Ljava/lang/String;
    :cond_d
    if-eqz v2, :cond_e

    .line 119
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 125
    :cond_e
    :goto_6
    :try_start_e
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 126
    if-eqz v8, :cond_4

    .line 127
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_3

    .line 138
    .end local v2    # "byteStream":Ljava/io/InputStream;
    .end local v3    # "contentSize":I
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "readResult":I
    :catchall_2
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_f

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v15, -0x1

    invoke-interface {v14, v15}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    :cond_f
    throw v13

    .line 120
    .restart local v2    # "byteStream":Ljava/io/InputStream;
    .restart local v3    # "contentSize":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "readResult":I
    :catch_4
    move-exception v4

    .line 121
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 122
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 120
    .end local v3    # "contentSize":I
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "readResult":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 122
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 120
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 121
    .restart local v4    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/DownloadRunnable;->downloadTask:Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;

    const/4 v15, -0x1

    invoke-interface {v14, v15}, Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 122
    const-string/jumbo v14, "HelpShiftDebug"

    const-string/jumbo v15, "Exception IO"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_5
.end method
