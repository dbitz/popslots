.class public Lcom/helpshift/network/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/helpshift/network/HttpStack;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureConnectionForRequest(Ljava/net/HttpURLConnection;Lcom/helpshift/network/request/Request;)V
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lcom/helpshift/network/request/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 85
    .local v0, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "headerName":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v1, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v1    # "headerName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getConnectTimeout()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getReadTimeout()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 90
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->isUsingCache()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 91
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->isDoInput()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 92
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getMethodString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getMethod()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 99
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->isDoOutput()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 100
    const-string/jumbo v4, "Content-type"

    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 103
    .local v2, "outputStream":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    .local v3, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p2}, Lcom/helpshift/network/request/Request;->getPOSTParametersQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 106
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 109
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_1
    return-void
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;Z)Lcom/helpshift/network/HttpEntity;
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "isContentGzipd"    # Z

    .prologue
    .line 61
    new-instance v0, Lcom/helpshift/network/HttpEntity;

    invoke-direct {v0}, Lcom/helpshift/network/HttpEntity;-><init>()V

    .line 64
    .local v0, "entity":Lcom/helpshift/network/HttpEntity;
    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/helpshift/network/HttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/helpshift/network/HttpEntity;->setContentLength(J)V

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/helpshift/network/HttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/helpshift/network/HttpEntity;->setContentType(Ljava/lang/String;)V

    .line 76
    return-object v0

    .line 67
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 69
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public performRequest(Lcom/helpshift/network/request/Request;)Lcom/helpshift/network/HttpResponse;
    .locals 12
    .param p1, "request"    # Lcom/helpshift/network/request/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getParsedURL()Ljava/net/URL;

    move-result-object v7

    .line 31
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 32
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-direct {p0, v0, p1}, Lcom/helpshift/network/HurlStack;->configureConnectionForRequest(Ljava/net/HttpURLConnection;Lcom/helpshift/network/request/Request;)V

    .line 36
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 37
    .local v5, "responseCode":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_0

    .line 40
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 42
    :cond_0
    new-instance v6, Lcom/helpshift/network/StatusLine;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/helpshift/network/StatusLine;-><init>(ILjava/lang/String;)V

    .line 43
    .local v6, "responseStatus":Lcom/helpshift/network/StatusLine;
    new-instance v4, Lcom/helpshift/network/HttpResponse;

    invoke-direct {v4, v6}, Lcom/helpshift/network/HttpResponse;-><init>(Lcom/helpshift/network/StatusLine;)V

    .line 44
    .local v4, "response":Lcom/helpshift/network/HttpResponse;
    const/4 v3, 0x0

    .line 45
    .local v3, "isContentGzipd":Z
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "Content-Encoding"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 49
    const/4 v3, 0x1

    .line 51
    :cond_2
    new-instance v1, Lcom/helpshift/network/Header;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Lcom/helpshift/network/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v1, "h":Lcom/helpshift/network/Header;
    invoke-virtual {v4, v1}, Lcom/helpshift/network/HttpResponse;->addHeader(Lcom/helpshift/network/Header;)V

    goto :goto_0

    .line 55
    .end local v1    # "h":Lcom/helpshift/network/Header;
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    invoke-static {v0, v3}, Lcom/helpshift/network/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;Z)Lcom/helpshift/network/HttpEntity;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/helpshift/network/HttpResponse;->setEntity(Lcom/helpshift/network/HttpEntity;)V

    .line 57
    return-object v4
.end method
