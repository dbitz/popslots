.class public Lcom/adjust/sdk/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

.field private static dateFormat:Ljava/text/SimpleDateFormat; = null

.field private static final fieldReadErrorMessage:Ljava/lang/String; = "Unable to read \'%s\' field in migration device with message (%s)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    .line 491
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 492
    .local v0, "bigInt":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "formatString":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createGETHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 2
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "clientSdk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->createHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 286
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 288
    return-object v0
.end method

.method public static createHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "clientSdk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xea60

    .line 337
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "url":Ljava/net/URL;
    invoke-static {v1}, Lcom/adjust/sdk/AdjustFactory;->getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 341
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string/jumbo v2, "Client-SDK"

    invoke-virtual {v0, v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 343
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 345
    return-object v0
.end method

.method public static createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "clientSdk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/net/ssl/HttpsURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 293
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->createHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 294
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string/jumbo v2, "POST"

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 297
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 298
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 300
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 301
    .local v1, "wr":Ljava/io/DataOutputStream;
    invoke-static {p2}, Lcom/adjust/sdk/Util;->getPostDataString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 303
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 305
    return-object v0
.end method

.method protected static createUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateFormat(J)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # J

    .prologue
    .line 84
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/Util;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 87
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Boolean;
    .param p1, "second"    # Ljava/lang/Boolean;

    .prologue
    .line 431
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Enum;
    .param p1, "second"    # Ljava/lang/Enum;

    .prologue
    .line 419
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Integer;
    .param p1, "second"    # Ljava/lang/Integer;

    .prologue
    .line 427
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Long;
    .param p1, "second"    # Ljava/lang/Long;

    .prologue
    .line 423
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "second"    # Ljava/lang/Object;

    .prologue
    .line 394
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 395
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalsDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 6
    .param p0, "first"    # Ljava/lang/Double;
    .param p1, "second"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 409
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 411
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static equalsMap(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 2
    .param p0, "first"    # Ljava/util/Map;
    .param p1, "second"    # Ljava/util/Map;

    .prologue
    .line 401
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 402
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    .line 402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onDeviceIdRead"    # Lcom/adjust/sdk/OnDeviceIdsRead;

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    .line 96
    .local v1, "logger":Lcom/adjust/sdk/ILogger;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 97
    const-string/jumbo v2, "GoogleAdId being read in the background"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "GoogleAdId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GoogleAdId read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-interface {p1, v0}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 122
    .end local v0    # "GoogleAdId":Ljava/lang/String;
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string/jumbo v2, "GoogleAdId being read in the foreground"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v2, Lcom/adjust/sdk/Util$1;

    invoke-direct {v2, p1}, Lcom/adjust/sdk/Util$1;-><init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Context;

    aput-object p0, v3, v4

    .line 121
    invoke-virtual {v2, v3}, Lcom/adjust/sdk/Util$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginKeys(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getPostDataString(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 312
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "encodedName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 314
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 316
    const-string/jumbo v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    .end local v2    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    .line 324
    .end local v1    # "encodedName":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, "now":J
    invoke-static {v4, v5}, Lcom/adjust/sdk/Util;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "dateString":Ljava/lang/String;
    const-string/jumbo v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v8, "sent_at"

    const-string/jumbo v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 480
    .local v2, "hashString":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 481
    .local v0, "bytes":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 482
    .local v3, "mesd":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 483
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 484
    .local v1, "hash":[B
    invoke-static {v1}, Lcom/adjust/sdk/Util;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 487
    .end local v0    # "bytes":[B
    .end local v1    # "hash":[B
    .end local v3    # "mesd":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 485
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static hashBoolean(Ljava/lang/Boolean;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 435
    if-nez p0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashEnum(Ljava/lang/Enum;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Enum;

    .prologue
    .line 456
    if-nez p0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashLong(Ljava/lang/Long;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Long;

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashMap(Ljava/util/Map;)I
    .locals 1
    .param p0, "value"    # Ljava/util/Map;

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashString(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p0, :cond_1

    .line 71
    const/4 p0, 0x0

    .line 80
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "matcher":Ljava/util/regex/Matcher;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object p0

    .line 74
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 75
    .restart local v1    # "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 76
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 371
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 369
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string/jumbo v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .locals 17
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v11, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v7

    .line 211
    .local v7, "logger":Lcom/adjust/sdk/ILogger;
    const/4 v9, 0x0

    .line 213
    .local v9, "responseCode":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 216
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x190

    if-lt v13, v14, :cond_1

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 222
    .local v2, "inputStream":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 227
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v13, "Failed to read response. (%s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    throw v13

    .line 219
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 233
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    .line 234
    invoke-virtual/range {p0 .. p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 238
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v10

    .line 240
    .local v10, "responseData":Lcom/adjust/sdk/ResponseData;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "stringResponse":Ljava/lang/String;
    const-string/jumbo v13, "Response: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_5

    .line 280
    :cond_4
    :goto_2
    return-object v10

    .line 247
    :cond_5
    const/4 v4, 0x0

    .line 249
    .local v4, "jsonResponse":Lorg/json/JSONObject;
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4    # "jsonResponse":Lorg/json/JSONObject;
    .local v5, "jsonResponse":Lorg/json/JSONObject;
    move-object v4, v5

    .line 256
    .end local v5    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v4    # "jsonResponse":Lorg/json/JSONObject;
    :goto_3
    if-eqz v4, :cond_4

    .line 260
    iput-object v4, v10, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v13, "message"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "message":Ljava/lang/String;
    iput-object v8, v10, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 265
    const-string/jumbo v13, "timestamp"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 266
    const-string/jumbo v13, "adid"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 268
    if-nez v8, :cond_6

    .line 269
    const-string/jumbo v8, "No message found"

    .line 272
    :cond_6
    if-eqz v9, :cond_7

    .line 273
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_7

    .line 274
    const-string/jumbo v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v13, 0x1

    iput-boolean v13, v10, Lcom/adjust/sdk/ResponseData;->success:Z

    goto :goto_2

    .line 250
    .end local v8    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 251
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v13, "Failed to parse json response. (%s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .restart local v8    # "message":Ljava/lang/String;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v7, v8, v13}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iput-object v8, v10, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    goto :goto_3

    .line 277
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    const-string/jumbo v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-interface {v7, v13, v14}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 380
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 378
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string/jumbo v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 389
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 387
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string/jumbo v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "closable":Ljava/io/Closeable;
    const/4 v4, 0x0

    .line 143
    .local v4, "object":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 144
    .local v3, "inputStream":Ljava/io/FileInputStream;
    move-object v1, v3

    .line 146
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v0, "bufferedStream":Ljava/io/BufferedInputStream;
    move-object v1, v0

    .line 149
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    .local v5, "objectStream":Ljava/io/ObjectInputStream;
    move-object v1, v5

    .line 153
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "Read %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "object":Ljava/lang/Object;, "TT;"
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :goto_0
    if-eqz v1, :cond_0

    .line 169
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 175
    :cond_0
    :goto_1
    return-object v4

    .line 155
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "Failed to find %s class (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 162
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "%s file not found"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/ClassCastException;
    :try_start_4
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "Failed to cast %s object (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 164
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "Failed to open %s file for reading (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "Failed to read %s object (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 171
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v2

    .line 172
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string/jumbo v7, "Failed to close %s file for reading (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInputStream$GetField;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 362
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p2

    .line 360
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string/jumbo v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "object":Ljava/lang/Object;, "TT;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "closable":Ljava/io/Closeable;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 182
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    move-object v1, v4

    .line 184
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v0, "bufferedStream":Ljava/io/BufferedOutputStream;
    move-object v1, v0

    .line 187
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .local v3, "objectStream":Ljava/io/ObjectOutputStream;
    move-object v1, v3

    .line 191
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string/jumbo v6, "Wrote %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .end local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v1, :cond_0

    .line 201
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    :cond_0
    :goto_1
    return-void

    .line 193
    .restart local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/NotSerializableException;
    :try_start_3
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string/jumbo v6, "Failed to serialize %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 196
    .end local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/NotSerializableException;
    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string/jumbo v6, "Failed to open %s for writing (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p3, v7, v9

    aput-object v2, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 204
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string/jumbo v6, "Failed to close %s file for writing (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p3, v7, v9

    aput-object v2, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
