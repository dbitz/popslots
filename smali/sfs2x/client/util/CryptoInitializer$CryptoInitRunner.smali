.class final Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;
.super Ljava/lang/Object;
.source "CryptoInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/util/CryptoInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CryptoInitRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/util/CryptoInitializer;


# direct methods
.method private constructor <init>(Lsfs2x/client/util/CryptoInitializer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;->this$0:Lsfs2x/client/util/CryptoInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsfs2x/client/util/CryptoInitializer;Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;-><init>(Lsfs2x/client/util/CryptoInitializer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 70
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "https://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v10, p0, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;
    invoke-static {v10}, Lsfs2x/client/util/CryptoInitializer;->access$0(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/util/ICryptoStorage;

    move-result-object v10

    invoke-interface {v10}, Lsfs2x/client/util/ICryptoStorage;->getHttpHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 72
    iget-object v10, p0, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;
    invoke-static {v10}, Lsfs2x/client/util/CryptoInitializer;->access$0(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/util/ICryptoStorage;

    move-result-object v10

    invoke-interface {v10}, Lsfs2x/client/util/ICryptoStorage;->getHttpPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 73
    const-string/jumbo v10, "/BlueBox/CryptoManager"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "targetUrl":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "SessToken="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;
    invoke-static {v10}, Lsfs2x/client/util/CryptoInitializer;->access$1(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/ISmartFox;

    move-result-object v10

    invoke-interface {v10}, Lsfs2x/client/ISmartFox;->getSessionToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "query":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v8, "theUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 81
    .local v2, "con":Ljava/net/HttpURLConnection;
    const-string/jumbo v9, "Content-length"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v9, "Content-Type"

    const-string/jumbo v10, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 87
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v5, "output":Ljava/io/DataOutputStream;
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 92
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v4, "input":Ljava/io/DataInputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .local v1, "ch":I
    :goto_0
    const/4 v9, -0x1

    if-ne v1, v9, :cond_0

    .line 98
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 100
    iget-object v9, p0, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;->this$0:Lsfs2x/client/util/CryptoInitializer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lsfs2x/client/util/CryptoInitializer;->onHttpResponse(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lsfs2x/client/util/CryptoInitializer;->access$2(Lsfs2x/client/util/CryptoInitializer;Ljava/lang/String;)V

    .line 108
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v1    # "ch":I
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v4    # "input":Ljava/io/DataInputStream;
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "targetUrl":Ljava/lang/String;
    .end local v8    # "theUrl":Ljava/net/URL;
    :goto_1
    return-void

    .line 96
    .restart local v0    # "buff":Ljava/lang/StringBuilder;
    .restart local v1    # "ch":I
    .restart local v2    # "con":Ljava/net/HttpURLConnection;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "query":Ljava/lang/String;
    .restart local v7    # "targetUrl":Ljava/lang/String;
    .restart local v8    # "theUrl":Ljava/net/URL;
    :cond_0
    int-to-char v9, v1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 103
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v1    # "ch":I
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v4    # "input":Ljava/io/DataInputStream;
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "targetUrl":Ljava/lang/String;
    .end local v8    # "theUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    iget-object v9, p0, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;->this$0:Lsfs2x/client/util/CryptoInitializer;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    # invokes: Lsfs2x/client/util/CryptoInitializer;->onHttpError(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lsfs2x/client/util/CryptoInitializer;->access$3(Lsfs2x/client/util/CryptoInitializer;Ljava/lang/String;)V

    goto :goto_1
.end method
