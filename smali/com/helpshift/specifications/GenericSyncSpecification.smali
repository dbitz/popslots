.class public Lcom/helpshift/specifications/GenericSyncSpecification;
.super Ljava/lang/Object;
.source "GenericSyncSpecification.java"

# interfaces
.implements Lcom/helpshift/specifications/SyncSpecification;


# instance fields
.field private final dataChangeThreshold:I

.field private final dataType:Ljava/lang/String;

.field private final elapsedTimeThreshold:J


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataChangeThreshold"    # I
    .param p2, "elapsedTimeThreshold"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "dataType"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/helpshift/specifications/GenericSyncSpecification;->dataChangeThreshold:I

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/helpshift/specifications/GenericSyncSpecification;->elapsedTimeThreshold:J

    .line 26
    iput-object p5, p0, Lcom/helpshift/specifications/GenericSyncSpecification;->dataType:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/helpshift/specifications/GenericSyncSpecification;->dataType:Ljava/lang/String;

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
    iget v1, p0, Lcom/helpshift/specifications/GenericSyncSpecification;->dataChangeThreshold:I

    if-ge p1, v1, :cond_0

    iget-wide v2, p0, Lcom/helpshift/specifications/GenericSyncSpecification;->elapsedTimeThreshold:J

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    .line 51
    :cond_1
    return v0
.end method
