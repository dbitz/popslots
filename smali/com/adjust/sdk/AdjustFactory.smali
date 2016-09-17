.class public Lcom/adjust/sdk/AdjustFactory;
.super Ljava/lang/Object;
.source "AdjustFactory.java"


# static fields
.field private static activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private static attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private static logger:Lcom/adjust/sdk/ILogger;

.field private static mockHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private static packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private static requestHandler:Lcom/adjust/sdk/IRequestHandler;

.field private static sessionInterval:J

.field private static subsessionInterval:J

.field private static timerInterval:J

.field private static timerStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 12
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 13
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 14
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 15
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 16
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->mockHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 18
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    .line 19
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    .line 20
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    .line 21
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;
    .locals 1
    .param p0, "config"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 78
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-nez v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    .line 82
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    goto :goto_0
.end method

.method public static getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)Lcom/adjust/sdk/IAttributionHandler;
    .locals 1
    .param p0, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p1, "attributionPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "startPaused"    # Z
    .param p3, "hasListener"    # Z

    .prologue
    .line 89
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/AttributionHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/IAttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    .line 93
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    goto :goto_0
.end method

.method public static getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->mockHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->mockHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0
.end method

.method public static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/adjust/sdk/Logger;

    invoke-direct {v0}, Lcom/adjust/sdk/Logger;-><init>()V

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 46
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method public static getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;
    .locals 1
    .param p0, "activityHandler"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startPaused"    # Z

    .prologue
    .line 26
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/adjust/sdk/PackageHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/PackageHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 30
    :goto_0
    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p0, p1, p2}, Lcom/adjust/sdk/IPackageHandler;->init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 30
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    goto :goto_0
.end method

.method public static getRequestHandler(Lcom/adjust/sdk/IPackageHandler;)Lcom/adjust/sdk/IRequestHandler;
    .locals 1
    .param p0, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 34
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/adjust/sdk/RequestHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/RequestHandler;-><init>(Lcom/adjust/sdk/IPackageHandler;)V

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IRequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 38
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    goto :goto_0
.end method

.method public static getSessionInterval()J
    .locals 4

    .prologue
    .line 64
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 65
    const-wide/32 v0, 0x1b7740

    .line 67
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    goto :goto_0
.end method

.method public static getSubsessionInterval()J
    .locals 4

    .prologue
    .line 71
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 72
    const-wide/16 v0, 0x3e8

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    goto :goto_0
.end method

.method public static getTimerInterval()J
    .locals 4

    .prologue
    .line 50
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    const-wide/32 v0, 0xea60

    .line 53
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    goto :goto_0
.end method

.method public static getTimerStart()J
    .locals 4

    .prologue
    .line 57
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    const-wide/16 v0, 0x0

    .line 60
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    goto :goto_0
.end method

.method public static setActivityHandler(Lcom/adjust/sdk/IActivityHandler;)V
    .locals 0
    .param p0, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;

    .prologue
    .line 133
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 134
    return-void
.end method

.method public static setAttributionHandler(Lcom/adjust/sdk/IAttributionHandler;)V
    .locals 0
    .param p0, "attributionHandler"    # Lcom/adjust/sdk/IAttributionHandler;

    .prologue
    .line 137
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 138
    return-void
.end method

.method public static setLogger(Lcom/adjust/sdk/ILogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/adjust/sdk/ILogger;

    .prologue
    .line 113
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 114
    return-void
.end method

.method public static setMockHttpsURLConnection(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .param p0, "mockHttpsURLConnection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 141
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->mockHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 142
    return-void
.end method

.method public static setPackageHandler(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 0
    .param p0, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 105
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 106
    return-void
.end method

.method public static setRequestHandler(Lcom/adjust/sdk/IRequestHandler;)V
    .locals 0
    .param p0, "requestHandler"    # Lcom/adjust/sdk/IRequestHandler;

    .prologue
    .line 109
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 110
    return-void
.end method

.method public static setSessionInterval(J)V
    .locals 0
    .param p0, "sessionInterval"    # J

    .prologue
    .line 125
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    .line 126
    return-void
.end method

.method public static setSubsessionInterval(J)V
    .locals 0
    .param p0, "subsessionInterval"    # J

    .prologue
    .line 129
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    .line 130
    return-void
.end method

.method public static setTimerInterval(J)V
    .locals 0
    .param p0, "timerInterval"    # J

    .prologue
    .line 117
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    .line 118
    return-void
.end method

.method public static setTimerStart(J)V
    .locals 0
    .param p0, "timerStart"    # J

    .prologue
    .line 121
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    .line 122
    return-void
.end method
