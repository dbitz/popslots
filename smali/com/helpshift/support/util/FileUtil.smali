.class public Lcom/helpshift/support/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/helpshift/support/util/FileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/util/FileUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isImage(Ljava/net/URL;)Z
    .locals 6
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "image/jpeg"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    const-string/jumbo v5, "image/png"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "image/gif"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "image/x-png"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "image/x-citrix-pjpeg"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "image/x-citrix-gif"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "image/pjpeg"

    aput-object v5, v3, v4

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 27
    .local v0, "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 31
    :goto_0
    return v2

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/helpshift/support/util/FileUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openConnection() Exception :"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static saveFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 7
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "saveFile"    # Ljava/io/File;

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 37
    .local v3, "input":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v5, 0x1f4

    :try_start_1
    new-array v0, v5, [B

    .line 41
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 42
    .local v1, "bytesRead":I
    :goto_0
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 43
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/helpshift/support/util/FileUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "saveFile Exception :"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 46
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
