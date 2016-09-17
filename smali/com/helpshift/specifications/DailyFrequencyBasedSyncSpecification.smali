.class public Lcom/helpshift/specifications/DailyFrequencyBasedSyncSpecification;
.super Ljava/lang/Object;
.source "DailyFrequencyBasedSyncSpecification.java"

# interfaces
.implements Lcom/helpshift/specifications/SyncSpecification;


# instance fields
.field private final dataType:Ljava/lang/String;

.field private final elapsedTimeThreshold:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "dailyFrequency"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x18

    div-int/2addr v1, p1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/helpshift/specifications/DailyFrequencyBasedSyncSpecification;->elapsedTimeThreshold:J

    .line 26
    iput-object p2, p0, Lcom/helpshift/specifications/DailyFrequencyBasedSyncSpecification;->dataType:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/helpshift/specifications/DailyFrequencyBasedSyncSpecification;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public isSatisfied(IJ)Z
    .locals 4
    .param p1, "dataChangeCount"    # I
    .param p2, "elapsedTimeSinceSync"    # J

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "result":Z
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 47
    if-lez p1, :cond_0

    iget-wide v2, p0, Lcom/helpshift/specifications/DailyFrequencyBasedSyncSpecification;->elapsedTimeThreshold:J

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method
