.class public final Lcom/helpshift/support/HSApiClient;
.super Ljava/lang/Object;
.source "HSApiClient.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final apiVersion:Ljava/lang/String; = "2"

.field public static final libraryVersion:Ljava/lang/String; = "4.1.1-support"

.field private static timeStampErrorReplies:I = 0x0

.field static final timeStampMaxRetries:I = 0x3


# instance fields
.field final SC_SENT:Ljava/lang/String;

.field final SOL_ACCEPT:Ljava/lang/String;

.field final SOL_REJECTED:Ljava/lang/String;

.field final SOL_REVIEW:Ljava/lang/String;

.field final apiBase:Ljava/lang/String;

.field final apiKey:Ljava/lang/String;

.field final appId:Ljava/lang/String;

.field final domain:Ljava/lang/String;

.field final scheme:Ljava/lang/String;

.field private storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/support/HSStorage;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "storage"    # Lcom/helpshift/support/HSStorage;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string/jumbo v0, "/api/lib/"

    iput-object v0, p0, Lcom/helpshift/support/HSApiClient;->apiBase:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "https://"

    iput-object v0, p0, Lcom/helpshift/support/HSApiClient;->scheme:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "Did not accept the solution"

    iput-object v0, p0, Lcom/helpshift/support/HSApiClient;->SOL_REJECTED:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "Accepted the solution"

    iput-object v0, p0, Lcom/helpshift/support/HSApiClient;->SOL_ACCEPT:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "Accepted review request"

    iput-object v0, p0, Lcom/helpshift/support/HSApiClient;->SOL_REVIEW:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "Screenshot sent"

    iput-object v0, p0, Lcom/helpshift/support/HSApiClient;->SC_SENT:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/helpshift/support/HSApiClient;->domain:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/helpshift/support/HSApiClient;->appId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/helpshift/support/HSApiClient;->apiKey:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/helpshift/support/HSApiClient;->storage:Lcom/helpshift/support/HSStorage;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiClient;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/HSApiClient;->addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiClient;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiClient;->constructGetParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/helpshift/support/HSApiClient;->addHeadersToConnection(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/support/HSApiClient;)Lcom/helpshift/support/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/support/HSApiClient;->storage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiClient;->addAuthErrorLog(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiClient;->constructPostParams(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/helpshift/support/HSApiClient;->constructPostParamsQuery(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 57
    sput p0, Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I

    return p0
.end method

.method static synthetic access$808()I
    .locals 2

    .prologue
    .line 57
    sget v0, Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I

    return v0
.end method

.method static synthetic access$900(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSApiClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/HashMap;
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Landroid/os/Handler;

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method private addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
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
    .line 217
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/helpshift/support/HSApiClient;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "uriStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/helpshift/support/HSApiClient;->appId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    new-instance v7, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v8, "appId Missing"

    invoke-direct {v7, v8}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 221
    :cond_0
    const-string/jumbo v7, "platform-id"

    iget-object v8, p0, Lcom/helpshift/support/HSApiClient;->appId:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v7, "method"

    invoke-virtual {p1, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v7, "uri"

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v7, p0, Lcom/helpshift/support/HSApiClient;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/support/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimestamp(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "ts":Ljava/lang/String;
    const-string/jumbo v7, "timestamp"

    invoke-virtual {p1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    .local v4, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 231
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v8, "screenshot"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "meta"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 233
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/helpshift/support/HSApiClient;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v7, "signature"

    const-string/jumbo v8, "&"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/helpshift/support/HSApiClient;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v7, "method"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v7, "uri"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    return-object p1

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v7, "HelpShiftDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not generate signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addAuthErrorLog(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
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
    .line 201
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "platform-id=sdk"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "token":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :try_start_0
    const-string/jumbo v3, "signature"

    const-string/jumbo v4, "&"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sdk"

    invoke-direct {p0, v4, v5}, Lcom/helpshift/support/HSApiClient;->getSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object p1

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "HelpShiftDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not generate signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addHeadersToConnection(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Helpshift-Android/4.1.1-support/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "userAgent":Ljava/lang/String;
    const-string/jumbo v2, "%s;q=1.0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/helpshift/support/util/LocaleUtil;->getAcceptLanguageHeader()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "acceptLangHead":Ljava/lang/String;
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    const-string/jumbo v2, "User-Agent"

    invoke-virtual {p0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "Accept-Language"

    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "X-HS-V"

    const-string/jumbo v3, "Helpshift-Android/4.1.1-support"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 118
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 119
    .local v0, "hexArray":[C
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 121
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 122
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 123
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 124
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 118
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructGetParams(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
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

    .line 170
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 172
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "&"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private constructPostParams(Ljava/util/HashMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
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
    .line 188
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    .local v2, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
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

    .line 191
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/helpshift/support/HSApiClient;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    new-instance v5, Lcom/helpshift/network/NameValuePair;

    invoke-direct {v5, v1, v0}, Lcom/helpshift/network/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static constructPostParamsQuery(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/network/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 99
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/network/NameValuePair;

    .line 100
    .local v2, "pair":Lcom/helpshift/network/NameValuePair;
    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 107
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/helpshift/network/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Lcom/helpshift/network/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Exception Unsupported Encoding"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    .end local v2    # "pair":Lcom/helpshift/network/NameValuePair;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getApiUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/api/lib/2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "route"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/helpshift/support/HSApiClient;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v1, "domain Missing"

    invoke-direct {v0, v1}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/HSApiClient;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiClient;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 438
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 440
    if-nez v2, :cond_0

    .line 441
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sigString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/helpshift/support/HSApiClient;->apiKey:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/helpshift/support/HSApiClient;->getSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "sigString"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p1

    .line 140
    .local v0, "data":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    new-instance v5, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v6, "apiKey Missing"

    invoke-direct {v5, v6}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 145
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "HmacSHA256"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v5, "HmacSHA256"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 147
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 148
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 149
    .local v2, "hmacData":[B
    invoke-direct {p0, v2}, Lcom/helpshift/support/HSApiClient;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 150
    .end local v2    # "hmacData":[B
    .end local v3    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/security/GeneralSecurityException;

    invoke-direct {v5, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "dataString":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 178
    check-cast v0, Ljava/lang/String;

    .line 184
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 179
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Lorg/json/JSONArray;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/util/HashMap;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 262
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;Z)V

    .line 263
    return-void
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;Z)V
    .locals 9
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/util/HashMap;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;
    .param p6, "forErrorLog"    # Z

    .prologue
    .line 268
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/helpshift/support/HSApiClient$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p6

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/support/HSApiClient$1;-><init>(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 432
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 433
    return-void
.end method

.method private sendFailMessage(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "failure"    # Landroid/os/Handler;
    .param p2, "status"    # I

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 254
    .local v1, "result":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v0, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method

.method private uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "plainData"    # Ljava/util/HashMap;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 453
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/helpshift/support/HSApiClient$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSApiClient$2;-><init>(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 613
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 614
    return-void
.end method


# virtual methods
.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "refers"    # Ljava/lang/String;
    .param p8, "messageMeta"    # Ljava/lang/String;

    .prologue
    .line 672
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 674
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "ca"

    if-ne p6, v0, :cond_1

    .line 675
    const-string/jumbo p5, "Accepted the solution"

    .line 682
    :cond_0
    :goto_0
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string/jumbo v0, "message-text"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string/jumbo v0, "type"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string/jumbo v0, "refers"

    invoke-virtual {v3, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v0, "message-meta"

    invoke-virtual {v3, v0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v1, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/issues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/messages/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 689
    return-void

    .line 676
    :cond_1
    const-string/jumbo v0, "ncr"

    if-ne p6, v0, :cond_2

    .line 677
    const-string/jumbo p5, "Did not accept the solution"

    goto :goto_0

    .line 678
    :cond_2
    const-string/jumbo v0, "ar"

    if-ne p6, v0, :cond_0

    .line 679
    const-string/jumbo p5, "Accepted review request"

    goto :goto_0
.end method

.method public addScMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "refers"    # Ljava/lang/String;
    .param p8, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 694
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 695
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "sc"

    if-ne p6, v0, :cond_0

    .line 696
    const-string/jumbo p5, "Screenshot sent"

    .line 698
    :cond_0
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string/jumbo v0, "message-text"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string/jumbo v0, "type"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string/jumbo v0, "refers"

    invoke-virtual {v3, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string/jumbo v0, "screenshot"

    invoke-virtual {v3, v0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string/jumbo v1, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/issues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/messages/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 705
    return-void
.end method

.method protected createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "meta"    # Ljava/lang/String;

    .prologue
    .line 662
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 663
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v0, "message-text"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string/jumbo v0, "meta"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/issues/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 667
    return-void
.end method

.method protected fetchFaqs(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 617
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "edfl"

    invoke-static {}, Lcom/helpshift/support/util/LocaleUtil;->isDefaultFallbackLanguageEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "/faqs/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 621
    return-void
.end method

.method protected fetchMessages(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "since"    # Ljava/lang/String;
    .param p6, "chatLaunchSource"    # Ljava/lang/String;

    .prologue
    .line 709
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 710
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string/jumbo v0, "since"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    if-eqz p6, :cond_0

    .line 713
    const-string/jumbo v0, "chat-launch-source"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_0
    const-string/jumbo v1, "GET"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/issues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/messages/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 717
    return-void
.end method

.method protected fetchMyIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "since"    # Ljava/lang/String;
    .param p5, "mc"    # Ljava/lang/String;
    .param p6, "chatLaunchSource"    # Ljava/lang/String;

    .prologue
    .line 649
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 650
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string/jumbo v0, "since"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string/jumbo v0, "mc"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    if-eqz p6, :cond_0

    .line 654
    const-string/jumbo v0, "chat-launch-source"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_0
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/my-issues/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 658
    return-void
.end method

.method protected getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 732
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 733
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "/config/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 734
    return-void
.end method

.method protected getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 754
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 756
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "edfl"

    invoke-static {}, Lcom/helpshift/support/util/LocaleUtil;->isDefaultFallbackLanguageEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string/jumbo v1, "GET"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/faqs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 758
    return-void
.end method

.method protected markHelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;

    .prologue
    .line 721
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 722
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/faqs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/helpful/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 723
    return-void
.end method

.method protected markUnhelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;

    .prologue
    .line 727
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 728
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/faqs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/unhelpful/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 729
    return-void
.end method

.method protected registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;
    .param p6, "crittercismId"    # Ljava/lang/String;

    .prologue
    .line 626
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "displayname"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v0, "email"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v0, "identifier"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    if-eqz p6, :cond_0

    .line 631
    const-string/jumbo v0, "crittercism-id"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_0
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/profiles/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 634
    return-void
.end method

.method protected reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "data"    # Ljava/util/HashMap;

    .prologue
    .line 750
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/events/"

    move-object v0, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 751
    return-void
.end method

.method protected sendCustomerSatisfactionRating(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "rating"    # Ljava/lang/Integer;
    .param p2, "feedback"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 770
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "rating"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    const-string/jumbo v0, "feedback"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_0
    const-string/jumbo v1, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/issues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/customer-survey/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 776
    return-void
.end method

.method protected sendErrorReport(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "data"    # Ljava/util/HashMap;

    .prologue
    .line 737
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/events/log"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;Z)V

    .line 738
    return-void
.end method

.method protected updateMessageSeenState(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "messageIds"    # Lorg/json/JSONArray;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "readAt"    # Ljava/lang/String;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 762
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 763
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "message-ids"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string/jumbo v0, "source"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string/jumbo v0, "read-at"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/events/messages/seen/"

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 767
    return-void
.end method

.method protected updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "deviceToken"    # Ljava/lang/String;
    .param p4, "profileId"    # Ljava/lang/String;

    .prologue
    .line 639
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "token"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/update-ua-token/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 644
    return-void
.end method
