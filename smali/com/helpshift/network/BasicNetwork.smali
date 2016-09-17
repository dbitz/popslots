.class public Lcom/helpshift/network/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/helpshift/network/Network;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"


# instance fields
.field protected final httpStack:Lcom/helpshift/network/HttpStack;

.field protected final pool:Lcom/helpshift/network/util/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/helpshift/network/HttpStack;)V
    .locals 2
    .param p1, "httpStack"    # Lcom/helpshift/network/HttpStack;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/helpshift/network/BasicNetwork;->httpStack:Lcom/helpshift/network/HttpStack;

    .line 36
    new-instance v0, Lcom/helpshift/network/util/ByteArrayPool;

    sget v1, Lcom/helpshift/network/util/constants/NetworkConstants;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/helpshift/network/util/ByteArrayPool;-><init>(I)V

    iput-object v0, p0, Lcom/helpshift/network/BasicNetwork;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    .line 37
    return-void
.end method

.method protected static convertHeaders([Lcom/helpshift/network/Header;)Ljava/util/Map;
    .locals 6
    .param p0, "headers"    # [Lcom/helpshift/network/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/helpshift/network/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 41
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 42
    .local v0, "header":Lcom/helpshift/network/Header;
    invoke-virtual {v0}, Lcom/helpshift/network/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/helpshift/network/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "header":Lcom/helpshift/network/Header;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected entityToBytes(Lcom/helpshift/network/HttpEntity;)[B
    .locals 8
    .param p1, "entity"    # Lcom/helpshift/network/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/helpshift/network/errors/NetworkError;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;

    iget-object v5, p0, Lcom/helpshift/network/BasicNetwork;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    .line 116
    invoke-virtual {p1}, Lcom/helpshift/network/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v5, v6}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;-><init>(Lcom/helpshift/network/util/ByteArrayPool;I)V

    .line 117
    .local v1, "bytes":Lcom/helpshift/network/util/PoolingByteArrayOutputStream;
    const/4 v0, 0x0

    .line 119
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p1}, Lcom/helpshift/network/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 120
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 121
    new-instance v5, Lcom/helpshift/network/errors/NetworkError;

    sget-object v6, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->SERVER_ERROR:Ljava/lang/Integer;

    invoke-direct {v5, v6}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v4    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 132
    :try_start_1
    invoke-virtual {p1}, Lcom/helpshift/network/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :goto_0
    iget-object v6, p0, Lcom/helpshift/network/BasicNetwork;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/helpshift/network/util/ByteArrayPool;->returnBuf([B)V

    .line 139
    invoke-virtual {v1}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->close()V

    throw v5

    .line 123
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/helpshift/network/BasicNetwork;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/helpshift/network/util/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 125
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v1}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 132
    :try_start_3
    invoke-virtual {p1}, Lcom/helpshift/network/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    :goto_2
    iget-object v6, p0, Lcom/helpshift/network/BasicNetwork;->pool:Lcom/helpshift/network/util/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/helpshift/network/util/ByteArrayPool;->returnBuf([B)V

    .line 139
    invoke-virtual {v1}, Lcom/helpshift/network/util/PoolingByteArrayOutputStream;->close()V

    return-object v5

    .line 133
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "HelpshiftDebug"

    const-string/jumbo v7, "Error occurred when calling consumingContent"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 133
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 136
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "HelpshiftDebug"

    const-string/jumbo v7, "Error occurred when calling consumingContent"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public performRequest(Lcom/helpshift/network/request/Request;)Lcom/helpshift/network/response/NetworkResponse;
    .locals 13
    .param p1, "request"    # Lcom/helpshift/network/request/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/network/errors/NetworkError;
        }
    .end annotation

    .prologue
    const/16 v12, 0x1f4

    const/16 v11, 0x130

    .line 50
    :cond_0
    const/4 v7, 0x0

    .line 54
    .local v7, "httpResponse":Lcom/helpshift/network/HttpResponse;
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/network/BasicNetwork;->httpStack:Lcom/helpshift/network/HttpStack;

    invoke-interface {v0, p1}, Lcom/helpshift/network/HttpStack;->performRequest(Lcom/helpshift/network/request/Request;)Lcom/helpshift/network/HttpResponse;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lcom/helpshift/network/HttpResponse;->getStatusLine()Lcom/helpshift/network/StatusLine;

    move-result-object v10

    .line 56
    .local v10, "statusLine":Lcom/helpshift/network/StatusLine;
    invoke-virtual {v10}, Lcom/helpshift/network/StatusLine;->getStatusCode()I

    move-result v1

    .line 58
    .local v1, "statusCode":I
    invoke-virtual {v7}, Lcom/helpshift/network/HttpResponse;->getAllHeaders()[Lcom/helpshift/network/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/network/BasicNetwork;->convertHeaders([Lcom/helpshift/network/Header;)Ljava/util/Map;

    move-result-object v3

    .line 60
    .local v3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    const-string/jumbo v0, "ETag"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v0

    iget-object v4, v0, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    const-string/jumbo v0, "ETag"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/helpshift/model/SdkInfoModel;->addEtag(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    if-ne v1, v11, :cond_2

    .line 65
    new-instance v0, Lcom/helpshift/network/response/NetworkResponse;

    const/16 v1, 0x130

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getSequence()I

    .end local v1    # "statusCode":I
    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/network/response/NetworkResponse;-><init>(I[BLjava/util/Map;ZLjava/lang/Integer;)V

    .line 77
    :goto_0
    return-object v0

    .line 69
    .restart local v1    # "statusCode":I
    :cond_2
    invoke-virtual {v7}, Lcom/helpshift/network/HttpResponse;->getEntity()Lcom/helpshift/network/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v7}, Lcom/helpshift/network/HttpResponse;->getEntity()Lcom/helpshift/network/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/network/BasicNetwork;->entityToBytes(Lcom/helpshift/network/HttpEntity;)[B

    move-result-object v2

    .line 76
    .local v2, "responseContents":[B
    :goto_1
    const/16 v0, 0xc8

    if-lt v1, v0, :cond_5

    const/16 v0, 0x12c

    if-gt v1, v0, :cond_5

    .line 77
    new-instance v0, Lcom/helpshift/network/response/NetworkResponse;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getSequence()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/network/response/NetworkResponse;-><init>(I[BLjava/util/Map;ZLjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 98
    .end local v1    # "statusCode":I
    .end local v2    # "responseContents":[B
    .end local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :catch_0
    move-exception v6

    .line 99
    .local v6, "e":Ljava/net/SocketTimeoutException;
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->REQUEST_TIMEOUT:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0

    .line 71
    .end local v6    # "e":Ljava/net/SocketTimeoutException;
    .restart local v1    # "statusCode":I
    .restart local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    .line 72
    const/4 v0, 0x0

    new-array v2, v0, [B

    .restart local v2    # "responseContents":[B
    goto :goto_1

    .line 74
    .end local v2    # "responseContents":[B
    :cond_4
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->CONTENT_NOT_FOUND:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 100
    .end local v1    # "statusCode":I
    .end local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :catch_1
    move-exception v6

    .line 101
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v6}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 78
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "statusCode":I
    .restart local v2    # "responseContents":[B
    .restart local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :cond_5
    const/16 v0, 0x1a6

    if-ne v1, v0, :cond_8

    .line 79
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 80
    .local v8, "it":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 82
    .local v9, "pair":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "HS-UEpoch"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v0

    iget-object v4, v0, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/TimeUtil;->calculateTimeAdjustment(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/helpshift/model/SdkInfoModel;->setServerTimeDelta(Ljava/lang/Float;)V

    .line 87
    .end local v9    # "pair":Ljava/util/Map$Entry;
    :cond_7
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->TIMESTAMP_MISMATCH:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 102
    .end local v1    # "statusCode":I
    .end local v2    # "responseContents":[B
    .end local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :catch_2
    move-exception v6

    .line 103
    .local v6, "e":Lcom/helpshift/exceptions/InstallException;
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    invoke-direct {v0, v6}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 88
    .end local v6    # "e":Lcom/helpshift/exceptions/InstallException;
    .restart local v1    # "statusCode":I
    .restart local v2    # "responseContents":[B
    .restart local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :cond_8
    const/16 v0, 0x19d

    if-ne v1, v0, :cond_9

    .line 89
    :try_start_3
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->ENTITY_TOO_LARGE:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    .end local v1    # "statusCode":I
    .end local v2    # "responseContents":[B
    .end local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :catch_3
    move-exception v6

    .line 105
    .local v6, "e":Ljava/io/IOException;
    if-nez v7, :cond_d

    .line 106
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->NO_CONNECTION:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 90
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "statusCode":I
    .restart local v2    # "responseContents":[B
    .restart local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    :cond_9
    const/16 v0, 0x193

    if-eq v1, v0, :cond_a

    const/16 v0, 0x191

    if-ne v1, v0, :cond_b

    .line 91
    :cond_a
    :try_start_4
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->UNAUTHORIZED_ACCESS:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0

    .line 92
    :cond_b
    const/16 v0, 0x190

    if-lt v1, v0, :cond_c

    if-ge v1, v12, :cond_c

    .line 93
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->OBJECT_NOT_FOUND:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0

    .line 94
    :cond_c
    if-lt v1, v12, :cond_0

    .line 95
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->SERVER_ERROR:Ljava/lang/Integer;

    invoke-direct {v0, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 108
    .end local v1    # "statusCode":I
    .end local v2    # "responseContents":[B
    .end local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "statusLine":Lcom/helpshift/network/StatusLine;
    .restart local v6    # "e":Ljava/io/IOException;
    :cond_d
    new-instance v0, Lcom/helpshift/network/errors/NetworkError;

    invoke-direct {v0, v6}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
