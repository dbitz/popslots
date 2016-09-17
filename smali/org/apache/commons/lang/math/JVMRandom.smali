.class public final Lorg/apache/commons/lang/math/JVMRandom;
.super Ljava/util/Random;
.source "JVMRandom.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private constructed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 50
    return-void
.end method

.method public static nextLong(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Upper bound for nextInt must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/JVMRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 103
    if-gtz p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Upper bound for nextInt must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 118
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/JVMRandom;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :cond_0
    monitor-exit p0

    return-void
.end method
