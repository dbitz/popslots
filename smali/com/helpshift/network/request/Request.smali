.class public Lcom/helpshift/network/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/network/request/Request$Method;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"

.field private static sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final errorListener:Lcom/helpshift/network/response/Response$ErrorListener;

.field private listener:Lcom/helpshift/network/response/Response$Listener;

.field private final method:I

.field private requestData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseDelivered:Z

.field private responseParser:Lcom/helpshift/network/response/ResponseParser;

.field private sequence:Ljava/lang/Integer;

.field private task:Ljava/util/concurrent/Future;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/helpshift/network/request/Request;->sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/helpshift/network/response/Response$Listener;Lcom/helpshift/network/response/Response$ErrorListener;Lcom/helpshift/network/response/ResponseParser;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/helpshift/network/response/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/helpshift/network/response/Response$Listener",
            "<TT;>;",
            "Lcom/helpshift/network/response/Response$ErrorListener;",
            "Lcom/helpshift/network/response/ResponseParser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "requestData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/helpshift/network/response/Response$Listener;, "Lcom/helpshift/network/response/Response$Listener<TT;>;"
    .local p6, "responseParser":Lcom/helpshift/network/response/ResponseParser;, "Lcom/helpshift/network/response/ResponseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/network/request/Request;->responseDelivered:Z

    .line 58
    iput p1, p0, Lcom/helpshift/network/request/Request;->method:I

    .line 59
    invoke-direct {p0, p2}, Lcom/helpshift/network/request/Request;->sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/network/request/Request;->url:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/helpshift/network/request/Request;->listener:Lcom/helpshift/network/response/Response$Listener;

    .line 61
    iput-object p5, p0, Lcom/helpshift/network/request/Request;->errorListener:Lcom/helpshift/network/response/Response$ErrorListener;

    .line 62
    iput-object p3, p0, Lcom/helpshift/network/request/Request;->requestData:Ljava/util/Map;

    .line 63
    sget-object v0, Lcom/helpshift/network/request/Request;->sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/network/request/Request;->sequence:Ljava/lang/Integer;

    .line 64
    iput-object p6, p0, Lcom/helpshift/network/request/Request;->responseParser:Lcom/helpshift/network/response/ResponseParser;

    .line 65
    return-void
.end method

.method private addAuth()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/helpshift/network/request/Request;->getApiUri()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "uriStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/network/request/Request;->requestData:Ljava/util/Map;

    if-eqz v8, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/helpshift/network/request/Request;->requestData:Ljava/util/Map;

    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 151
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v8

    iget-object v8, v8, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    invoke-virtual {v8}, Lcom/helpshift/model/AppInfoModel;->isInstalled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 152
    new-instance v8, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v9, "appId Missing"

    invoke-direct {v8, v9}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 154
    :cond_1
    const-string/jumbo v8, "platform-id"

    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v9

    iget-object v9, v9, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    invoke-virtual {v9}, Lcom/helpshift/model/AppInfoModel;->getPlatformId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v8, "method"

    invoke-virtual {p0}, Lcom/helpshift/network/request/Request;->getMethodString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v8, "uri"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/helpshift/util/TimeUtil;->getCurrentTimestamp()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "ts":Ljava/lang/String;
    invoke-static {v6}, Lcom/helpshift/util/SchemaUtil;->validateTimestamp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 159
    const-string/jumbo v8, "timestamp"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v5, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 167
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v9, "screenshot"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "meta"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 168
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/helpshift/util/StringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "dataString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    :try_start_0
    const-string/jumbo v8, "signature"

    const-string/jumbo v9, "&"

    invoke-static {v9, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/helpshift/util/SecurityUtil;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v8, "method"

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v8, "uri"

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_2
    return-object v0

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v8, "HelpshiftDebug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not generate signature: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private encodeGetParameters(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
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

    .prologue
    .line 186
    .local p1, "inputParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v2, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "&"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private encodePostParameters(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/network/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "inputParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v2, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/util/StringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    new-instance v5, Lcom/helpshift/network/NameValuePair;

    invoke-direct {v5, v1, v0}, Lcom/helpshift/network/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getApiUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/helpshift/network/util/constants/NetworkConstants;->getApiBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/helpshift/network/util/constants/NetworkConstants;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/network/request/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    move-object v0, p1

    .line 78
    .local v0, "sanitisedUrl":Ljava/lang/String;
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deliverError(Lcom/helpshift/network/errors/NetworkError;)V
    .locals 2
    .param p1, "error"    # Lcom/helpshift/network/errors/NetworkError;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->errorListener:Lcom/helpshift/network/response/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->errorListener:Lcom/helpshift/network/response/Response$ErrorListener;

    invoke-virtual {p0}, Lcom/helpshift/network/request/Request;->getSequence()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/helpshift/network/response/Response$ErrorListener;->onErrorResponse(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)V

    .line 255
    :cond_0
    return-void
.end method

.method public deliverResponse(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->listener:Lcom/helpshift/network/response/Response$Listener;

    .line 248
    .local v0, "typedListener":Lcom/helpshift/network/response/Response$Listener;, "Lcom/helpshift/network/response/Response$Listener<TT;>;"
    invoke-virtual {p0}, Lcom/helpshift/network/request/Request;->getSequence()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/helpshift/network/response/Response$Listener;->onResponse(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 249
    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x1388

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/helpshift/network/util/constants/NetworkConstants;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullUri()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    invoke-virtual {v0}, Lcom/helpshift/model/AppInfoModel;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v1, "Install information missing"

    invoke-direct {v0, v1}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/helpshift/network/util/constants/NetworkConstants;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    invoke-virtual {v1}, Lcom/helpshift/model/AppInfoModel;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/helpshift/network/request/Request;->getApiUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/helpshift/network/util/HeaderUtil;->getCommonHeaders()Ljava/util/Map;

    move-result-object v1

    .line 108
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/helpshift/network/request/Request;->method:I

    if-nez v2, :cond_1

    .line 109
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v2

    iget-object v2, v2, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    iget-object v3, p0, Lcom/helpshift/network/request/Request;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/helpshift/model/SdkInfoModel;->getEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "etag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string/jumbo v2, "If-None-Match"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v0    # "etag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 113
    :cond_1
    iget v2, p0, Lcom/helpshift/network/request/Request;->method:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 114
    const-string/jumbo v2, "Content-type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/helpshift/network/request/Request;->method:I

    return v0
.end method

.method public getMethodString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/helpshift/network/request/Request;->method:I

    packed-switch v0, :pswitch_data_0

    .line 95
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    const-string/jumbo v0, "GET"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string/jumbo v0, "POST"

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPOSTParametersQuery()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 210
    .local v1, "first":Z
    invoke-direct {p0}, Lcom/helpshift/network/request/Request;->addAuth()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/helpshift/network/request/Request;->encodePostParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/network/NameValuePair;

    .line 213
    .local v2, "pair":Lcom/helpshift/network/NameValuePair;
    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 219
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/helpshift/network/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2}, Lcom/helpshift/network/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "HelpshiftDebug"

    const-string/jumbo v7, "Exception Unsupported Encoding"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 226
    .end local v2    # "pair":Lcom/helpshift/network/NameValuePair;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getParsedURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/helpshift/network/request/Request;->getFullUri()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "url":Ljava/lang/String;
    iget v1, p0, Lcom/helpshift/network/request/Request;->method:I

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/helpshift/network/request/Request;->addAuth()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/network/request/Request;->encodeGetParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 262
    const/16 v0, 0x1388

    return v0
.end method

.method public getRequestData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->requestData:Ljava/util/Map;

    return-object v0
.end method

.method public getSequence()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->sequence:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->sequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/helpshift/network/util/constants/NetworkConstants;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/helpshift/network/request/Request;->responseDelivered:Z

    return v0
.end method

.method public isDoInput()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isDoOutput()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 274
    iget v1, p0, Lcom/helpshift/network/request/Request;->method:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingCache()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/network/request/Request;->responseDelivered:Z

    .line 231
    return-void
.end method

.method protected parseNetworkError(Lcom/helpshift/network/errors/NetworkError;)Lcom/helpshift/network/errors/NetworkError;
    .locals 0
    .param p1, "networkError"    # Lcom/helpshift/network/errors/NetworkError;

    .prologue
    .line 243
    return-object p1
.end method

.method protected parseNetworkResponse(Lcom/helpshift/network/response/NetworkResponse;)Lcom/helpshift/network/response/Response;
    .locals 2
    .param p1, "response"    # Lcom/helpshift/network/response/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpshift/network/response/NetworkResponse;",
            ")",
            "Lcom/helpshift/network/response/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/helpshift/network/request/Request;->responseParser:Lcom/helpshift/network/response/ResponseParser;

    .line 239
    .local v0, "typedParser":Lcom/helpshift/network/response/ResponseParser;, "Lcom/helpshift/network/response/ResponseParser<TT;>;"
    invoke-interface {v0, p1}, Lcom/helpshift/network/response/ResponseParser;->parseResponse(Lcom/helpshift/network/response/NetworkResponse;)Lcom/helpshift/network/response/Response;

    move-result-object v1

    return-object v1
.end method

.method public setFutureTask(Ljava/util/concurrent/Future;)Lcom/helpshift/network/request/Request;
    .locals 0
    .param p1, "requestTask"    # Ljava/util/concurrent/Future;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/helpshift/network/request/Request;->task:Ljava/util/concurrent/Future;

    .line 73
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/helpshift/network/request/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "HelpshiftDebug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/network/request/Request;->sequence:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
