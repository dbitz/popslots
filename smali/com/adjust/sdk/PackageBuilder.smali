.class Lcom/adjust/sdk/PackageBuilder;
.super Ljava/lang/Object;
.source "PackageBuilder.java"


# static fields
.field private static logger:Lcom/adjust/sdk/ILogger;


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private adjustConfig:Lcom/adjust/sdk/AdjustConfig;

.field attribution:Lcom/adjust/sdk/AdjustAttribution;

.field private createdAt:J

.field private deviceInfo:Lcom/adjust/sdk/DeviceInfo;

.field extraParameters:Ljava/util/Map;
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

.field referrer:Ljava/lang/String;

.field reftag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/PackageBuilder;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V
    .locals 2
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;
    .param p2, "deviceInfo"    # Lcom/adjust/sdk/DeviceInfo;
    .param p3, "activityState"    # Lcom/adjust/sdk/ActivityState;
    .param p4, "createdAt"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    .line 39
    iput-object p2, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    .line 40
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 41
    iput-wide p4, p0, Lcom/adjust/sdk/PackageBuilder;->createdAt:J

    .line 42
    return-void

    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/adjust/sdk/ActivityState;->shallowCopy()Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method private addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 280
    .local v0, "intValue":I
    :goto_1
    int-to-long v2, v0

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0

    .line 278
    .end local v0    # "intValue":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addDate(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p3, p4}, Lcom/adjust/sdk/Util;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "dateString":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addDouble(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%.5f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "doubleString":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addDuration(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "durationInMilliSeconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p3

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 255
    .local v0, "durationInSeconds":J
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private addInt(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "valueString":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 268
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "jsonString":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkDeviceIds(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "mac_sha1"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mac_md5"

    .line 198
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android_id"

    .line 199
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gps_adid"

    .line 200
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lcom/adjust/sdk/PackageBuilder;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Missing device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    return-void
.end method

.method private fillPluginKeys(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 213
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;
    .locals 2
    .param p1, "activityKind"    # Lcom/adjust/sdk/ActivityKind;

    .prologue
    .line 104
    new-instance v0, Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/ActivityPackage;-><init>(Lcom/adjust/sdk/ActivityKind;)V

    .line 105
    .local v0, "activityPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setClientSdk(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method private getDefaultParameters()Ljava/util/Map;
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
    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectDeviceInfo(Ljava/util/Map;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectConfig(Ljava/util/Map;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectActivityState(Ljava/util/Map;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectCreatedAt(Ljava/util/Map;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->checkDeviceIds(Ljava/util/Map;)V

    .line 120
    return-object v0
.end method

.method private getEventSuffix(Lcom/adjust/sdk/AdjustEvent;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "\'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "(%.5f %s, \'%s\')"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIdsParameters()Ljava/util/Map;
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
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectDeviceInfoIds(Ljava/util/Map;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectConfig(Ljava/util/Map;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectCreatedAt(Ljava/util/Map;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->checkDeviceIds(Ljava/util/Map;)V

    .line 132
    return-object v0
.end method

.method private injectActivityState(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "android_uuid"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, v1, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "session_count"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v1, v1, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    int-to-long v2, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    .line 177
    const-string/jumbo v0, "subsession_count"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v1, v1, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    int-to-long v2, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    .line 178
    const-string/jumbo v0, "session_length"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v1, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 179
    const-string/jumbo v0, "time_spent"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v1, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 180
    return-void
.end method

.method private injectAttribution(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v0, "tracker"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "campaign"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "adgroup"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "creative"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private injectConfig(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "app_token"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v2, "environment"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "device_known"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 166
    const-string/jumbo v2, "needs_response_details"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustConfig;->hasListener()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "playAdId":Ljava/lang/String;
    const-string/jumbo v2, "gps_adid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, "isTrackingEnabled":Ljava/lang/Boolean;
    const-string/jumbo v2, "tracking_enabled"

    invoke-direct {p0, p1, v2, v0}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 172
    return-void
.end method

.method private injectCreatedAt(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "created_at"

    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->createdAt:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDate(Ljava/util/Map;Ljava/lang/String;J)V

    .line 184
    return-void
.end method

.method private injectDeviceInfo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageBuilder;->injectDeviceInfoIds(Ljava/util/Map;)V

    .line 137
    const-string/jumbo v0, "fb_id"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->fbAttributionId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "app_version"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "device_type"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->deviceType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "device_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "device_manufacturer"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "os_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->osName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "os_version"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "api_level"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->apiLevel:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "language"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->language:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "country"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->country:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "screen_size"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->screenSize:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v0, "screen_format"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->screenFormat:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "screen_density"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->screenDensity:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "display_width"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->displayWidth:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "display_height"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->displayHeight:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageBuilder;->fillPluginKeys(Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method private injectDeviceInfoIds(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "mac_sha1"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->macSha1:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "mac_md5"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->macShortMd5:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "android_id"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public buildAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getIdsParameters()Ljava/util/Map;

    move-result-object v1

    .line 95
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v2}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 96
    .local v0, "attributionPackage":Lcom/adjust/sdk/ActivityPackage;
    const-string/jumbo v2, "attribution"

    invoke-virtual {v0, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 100
    return-object v0
.end method

.method public buildClickPackage(Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "clickTime"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getIdsParameters()Ljava/util/Map;

    move-result-object v1

    .line 77
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "source"

    invoke-direct {p0, v1, v2, p1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v2, "click_time"

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/adjust/sdk/PackageBuilder;->addDate(Ljava/util/Map;Ljava/lang/String;J)V

    .line 79
    const-string/jumbo v2, "reftag"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->reftag:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "params"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->extraParameters:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    const-string/jumbo v2, "referrer"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v1}, Lcom/adjust/sdk/PackageBuilder;->injectAttribution(Ljava/util/Map;)V

    .line 84
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v2}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 85
    .local v0, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    const-string/jumbo v2, "/sdk_click"

    invoke-virtual {v0, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 89
    return-object v0
.end method

.method public buildEventPackage(Lcom/adjust/sdk/AdjustEvent;)Lcom/adjust/sdk/ActivityPackage;
    .locals 6
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v1

    .line 59
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "event_count"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v3, Lcom/adjust/sdk/ActivityState;->eventCount:I

    int-to-long v4, v3

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    .line 60
    const-string/jumbo v2, "event_token"

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "revenue"

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDouble(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V

    .line 62
    const-string/jumbo v2, "currency"

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "callback_params"

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    const-string/jumbo v2, "partner_params"

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v2}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 67
    .local v0, "eventPackage":Lcom/adjust/sdk/ActivityPackage;
    const-string/jumbo v2, "/event"

    invoke-virtual {v0, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageBuilder;->getEventSuffix(Lcom/adjust/sdk/AdjustEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 71
    return-object v0
.end method

.method public buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    .line 46
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "last_interval"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v3, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 47
    const-string/jumbo v2, "default_tracker"

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v2}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 50
    .local v1, "sessionPackage":Lcom/adjust/sdk/ActivityPackage;
    const-string/jumbo v2, "/session"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 54
    return-object v1
.end method
