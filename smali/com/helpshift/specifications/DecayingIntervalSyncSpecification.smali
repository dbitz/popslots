.class public Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;
.super Ljava/lang/Object;
.source "DecayingIntervalSyncSpecification.java"

# interfaces
.implements Lcom/helpshift/specifications/SyncSpecification;


# instance fields
.field private final dataType:Ljava/lang/String;

.field private elapsedTimeThreshold:J

.field private maxTimeThresholdLimit:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/TimeUnit;Ljava/lang/String;)V
    .locals 4
    .param p1, "seedValue"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "dataType"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->maxTimeThresholdLimit:J

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->elapsedTimeThreshold:J

    .line 24
    iput-object p3, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->dataType:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public decayElapsedTimeThreshold()V
    .locals 4

    .prologue
    .line 55
    const-wide v0, 0x3ff9e353f7ced917L    # 1.618

    iget-wide v2, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->elapsedTimeThreshold:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->elapsedTimeThreshold:J

    .line 56
    iget-wide v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->elapsedTimeThreshold:J

    iget-wide v2, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->maxTimeThresholdLimit:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 57
    iget-wide v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->maxTimeThresholdLimit:J

    iput-wide v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->elapsedTimeThreshold:J

    .line 59
    :cond_0
    return-void
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public isSatisfied(IJ)Z
    .locals 4
    .param p1, "dataChangeCount"    # I
    .param p2, "elapsedTimeSinceSync"    # J

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "result":Z
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 44
    if-lez p1, :cond_0

    iget-wide v2, p0, Lcom/helpshift/specifications/DecayingIntervalSyncSpecification;->elapsedTimeThreshold:J

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :cond_0
    return v0
.end method
