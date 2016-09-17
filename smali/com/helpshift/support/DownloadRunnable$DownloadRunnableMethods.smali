.class interface abstract Lcom/helpshift/support/DownloadRunnable$DownloadRunnableMethods;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/DownloadRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DownloadRunnableMethods"
.end annotation


# virtual methods
.method public abstract getDownloadState()I
.end method

.method public abstract getDownloadUrl()Ljava/net/URL;
.end method

.method public abstract getFileSize()I
.end method

.method public abstract getFinalFile()Ljava/io/File;
.end method

.method public abstract getTempFile()Ljava/io/File;
.end method

.method public abstract handleDownloadState(I)V
.end method

.method public abstract setDownloadState(I)V
.end method

.method public abstract setDownloadThread(Ljava/lang/Thread;)V
.end method

.method public abstract setDownloadedFilePath(Ljava/lang/String;)V
.end method

.method public abstract setProgress(D)V
.end method
