.class public Lcom/helpshift/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field public static EARLIEST_ALLOWED_UNIX_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/helpshift/util/TimeUtil;->EARLIEST_ALLOWED_UNIX_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTimeAdjustment(Ljava/lang/String;)Ljava/lang/Float;
    .locals 10
    .param p0, "serverTime"    # Ljava/lang/String;

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 16
    sget-object v4, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "deviceTime":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 18
    .local v3, "timeStamp":Ljava/lang/Double;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 19
    .local v1, "serverDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 21
    .local v2, "timeDelta":Ljava/lang/Float;
    return-object v2
.end method

.method public static getAdjustedTimeInMillis(Ljava/lang/Float;)J
    .locals 5
    .param p0, "timeDelta"    # Ljava/lang/Float;

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, "deviceTs":J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 38
    long-to-float v2, v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v0, v2

    .line 40
    :cond_0
    return-wide v0
.end method

.method public static getAdjustedTimestamp(Ljava/lang/Float;)Ljava/lang/String;
    .locals 8
    .param p0, "timeDelta"    # Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 26
    sget-object v2, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "deviceTs":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 29
    .local v1, "deviceTsFloat":Ljava/lang/Double;
    sget-object v2, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 32
    .end local v1    # "deviceTsFloat":Ljava/lang/Double;
    :cond_0
    return-object v0
.end method

.method public static getCurrentTimeInMillis()J
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    invoke-virtual {v0}, Lcom/helpshift/model/SdkInfoModel;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimeInMillis(Ljava/lang/Float;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    invoke-virtual {v0}, Lcom/helpshift/model/SdkInfoModel;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimestamp(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public elapsedTimeMillis()J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
