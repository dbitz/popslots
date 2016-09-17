.class public Lcom/helpshift/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field private static final LOCATION_MIN_DISTANCE:F = 10.0f

.field private static final LOCATION_MIN_TIME:J = 0x7d0L

.field private static final TWO_MINUTES:I = 0x1d4c0

.field private static currentLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/util/LocationUtil;->currentLocation:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUpdatedCurrentLocation()Landroid/location/Location;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "all"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 131
    .local v2, "locationManager":Landroid/location/LocationManager;
    const/4 v3, 0x0

    .line 132
    .local v3, "nwLocation":Landroid/location/Location;
    const/4 v1, 0x0

    .line 133
    .local v1, "gpsLocation":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "network"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const-string/jumbo v4, "network"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 136
    :cond_0
    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "gps"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    const-string/jumbo v4, "gps"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 140
    :cond_1
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 141
    .local v0, "betterLocation":Landroid/location/Location;
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 142
    invoke-static {v3, v1}, Lcom/helpshift/util/LocationUtil;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    move-object v0, v3

    .line 147
    :cond_2
    sget-object v4, Lcom/helpshift/util/LocationUtil;->currentLocation:Landroid/location/Location;

    invoke-static {v0, v4}, Lcom/helpshift/util/LocationUtil;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    sput-object v0, Lcom/helpshift/util/LocationUtil;->currentLocation:Landroid/location/Location;

    .line 151
    :cond_3
    sget-object v4, Lcom/helpshift/util/LocationUtil;->currentLocation:Landroid/location/Location;

    return-object v4

    .end local v0    # "betterLocation":Landroid/location/Location;
    :cond_4
    move-object v0, v3

    .line 140
    goto :goto_0
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 27
    const/4 v10, 0x1

    .line 63
    :goto_0
    return v10

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 32
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 33
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 34
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 38
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 39
    const/4 v10, 0x1

    goto :goto_0

    .line 32
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 33
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 34
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 41
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 42
    const/4 v10, 0x0

    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 47
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 48
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 49
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 52
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 52
    invoke-static {v10, v11}, Lcom/helpshift/util/LocationUtil;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 56
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 57
    const/4 v10, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 48
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 49
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 58
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 59
    const/4 v10, 0x1

    goto :goto_0

    .line 60
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 61
    const/4 v10, 0x1

    goto :goto_0

    .line 63
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isSameLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 4
    .param p0, "location1"    # Landroid/location/Location;
    .param p1, "location2"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
    .param p1, "provider2"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p0, :cond_1

    .line 124
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static limitLatitude(DD)Landroid/location/Location;
    .locals 8
    .param p0, "latitudeDegrees"    # D
    .param p2, "longitudeDegrees"    # D

    .prologue
    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 91
    invoke-static {p0, p1}, Lcom/helpshift/util/LocationUtil;->limitLongitude(D)D

    move-result-wide p0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "flip":Z
    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, p0, v6

    if-lez v6, :cond_2

    .line 94
    sub-double p0, v4, p0

    .line 95
    const/4 v0, 0x1

    .line 100
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 101
    const-wide/16 v6, 0x0

    cmpl-double v6, p2, v6

    if-lez v6, :cond_3

    :goto_1
    add-double/2addr p2, v2

    .line 103
    :cond_1
    invoke-static {p2, p3}, Lcom/helpshift/util/LocationUtil;->limitLongitude(D)D

    move-result-wide p2

    .line 105
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "location":Landroid/location/Location;
    invoke-virtual {v1, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    .line 107
    invoke-virtual {v1, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    .line 108
    return-object v1

    .line 96
    .end local v1    # "location":Landroid/location/Location;
    :cond_2
    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, p0, v6

    if-gez v6, :cond_0

    .line 97
    sub-double p0, v2, p0

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-wide v2, v4

    .line 101
    goto :goto_1
.end method

.method private static limitLongitude(D)D
    .locals 6
    .param p0, "longitudeDegrees"    # D

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 80
    rem-double v0, p0, v4

    .line 82
    .local v0, "longitudeReduced":D
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 83
    sub-double/2addr v0, v4

    .line 87
    :cond_0
    :goto_0
    return-wide v0

    .line 84
    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 85
    add-double/2addr v0, v4

    goto :goto_0
.end method

.method public static sanitizeLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 6
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 72
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 71
    invoke-static {v2, v3, v4, v5}, Lcom/helpshift/util/LocationUtil;->limitLatitude(DD)Landroid/location/Location;

    move-result-object v0

    .line 73
    .local v0, "limitedLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 74
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 75
    return-object p0
.end method
