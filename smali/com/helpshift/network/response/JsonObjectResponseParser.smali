.class public Lcom/helpshift/network/response/JsonObjectResponseParser;
.super Ljava/lang/Object;
.source "JsonObjectResponseParser.java"

# interfaces
.implements Lcom/helpshift/network/response/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpshift/network/response/ResponseParser",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponse(Lcom/helpshift/network/response/NetworkResponse;)Lcom/helpshift/network/response/Response;
    .locals 6
    .param p1, "response"    # Lcom/helpshift/network/response/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/network/response/NetworkResponse;",
            ")",
            "Lcom/helpshift/network/response/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/helpshift/network/response/NetworkResponse;->getData()[B

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/helpshift/network/response/NetworkResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-static {v4, v5}, Lcom/helpshift/network/util/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 18
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpshift/network/response/NetworkResponse;->getRequestIdentifier()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/network/response/Response;->success(Ljava/lang/Object;Ljava/lang/Integer;)Lcom/helpshift/network/response/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 22
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->PARSE_ERROR:Ljava/lang/Integer;

    invoke-direct {v3, v4, v0}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/helpshift/network/response/NetworkResponse;->getRequestIdentifier()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/network/response/Response;->error(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)Lcom/helpshift/network/response/Response;

    move-result-object v3

    goto :goto_0

    .line 21
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 22
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->PARSE_ERROR:Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/helpshift/network/response/NetworkResponse;->getRequestIdentifier()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/network/response/Response;->error(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)Lcom/helpshift/network/response/Response;

    move-result-object v3

    goto :goto_0
.end method
