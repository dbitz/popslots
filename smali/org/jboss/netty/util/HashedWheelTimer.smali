.class public Lorg/jboss/netty/util/HashedWheelTimer;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/Timer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;,
        Lorg/jboss/netty/util/HashedWheelTimer$Worker;
    }
.end annotation


# static fields
.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;


# instance fields
.field final iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ReusableIterator",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final mask:I

.field private final roundDuration:J

.field final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final tickDuration:J

.field final wheel:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation
.end field

.field volatile wheelCursor:I

.field private final worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

.field final workerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    const-class v1, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 113
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "tickDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 124
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 125
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .locals 7
    .param p1, "tickDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "ticksPerWheel"    # I

    .prologue
    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 148
    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "tickDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 162
    const/16 v5, 0x200

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V
    .locals 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "tickDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "ticksPerWheel"    # I

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;)V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "threadFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    if-nez p4, :cond_1

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tickDuration must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    if-gtz p5, :cond_3

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_3
    invoke-static {p5}, Lorg/jboss/netty/util/HashedWheelTimer;->createWheel(I)[Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    .line 196
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    invoke-static {v0}, Lorg/jboss/netty/util/HashedWheelTimer;->createIterators([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/ReusableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    .line 197
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    .line 200
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iput-wide p2, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    .line 203
    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v0, v0

    int-to-long v0, v0

    div-long v0, v2, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_5

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tickDuration is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_5
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v0, v0

    int-to-long v0, v0

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    .line 212
    new-instance v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hashed wheel timer #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/util/HashedWheelTimer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    .line 216
    sget-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->increase()V

    .line 217
    return-void
.end method

.method private static createIterators([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/ReusableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)[",
            "Lorg/jboss/netty/util/internal/ReusableIterator",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "wheel":[Ljava/util/Set;, "[Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    array-length v2, p0

    new-array v1, v2, [Lorg/jboss/netty/util/internal/ReusableIterator;

    .line 242
    .local v1, "iterators":[Lorg/jboss/netty/util/internal/ReusableIterator;, "[Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 243
    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/util/internal/ReusableIterator;

    aput-object v2, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-object v1
.end method

.method private static createWheel(I)[Ljava/util/Set;
    .locals 7
    .param p0, "ticksPerWheel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    if-gtz p0, :cond_0

    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-le p0, v2, :cond_1

    .line 226
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ticksPerWheel may not be greater than 2^30: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_1
    invoke-static {p0}, Lorg/jboss/netty/util/HashedWheelTimer;->normalizeTicksPerWheel(I)I

    move-result p0

    .line 231
    new-array v1, p0, [Ljava/util/Set;

    .line 232
    .local v1, "wheel":[Ljava/util/Set;, "[Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 233
    new-instance v2, Lorg/jboss/netty/util/MapBackedSet;

    new-instance v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    const/16 v4, 0x10

    const v5, 0x3f733333    # 0.95f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    invoke-direct {v2, v3}, Lorg/jboss/netty/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    return-object v1
.end method

.method private static normalizeTicksPerWheel(I)I
    .locals 1
    .param p0, "ticksPerWheel"    # I

    .prologue
    .line 249
    const/4 v0, 0x1

    .line 250
    .local v0, "normalizedTicksPerWheel":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 251
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return v0
.end method


# virtual methods
.method public newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;
    .locals 26
    .param p1, "task"    # Lorg/jboss/netty/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 306
    .local v12, "currentTime":J
    if-nez p1, :cond_0

    .line 307
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "task"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_0
    if-nez p4, :cond_1

    .line 310
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "unit"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    :cond_1
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 314
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    move-wide/from16 v20, v0

    cmp-long v5, p2, v20

    if-gez v5, :cond_2

    .line 315
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    move-wide/from16 p2, v0

    .line 318
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 319
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/HashedWheelTimer;->start()V

    .line 324
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    move-wide/from16 v20, v0

    rem-long v14, p2, v20

    .line 325
    .local v14, "lastRoundDelay":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    move-wide/from16 v20, v0

    rem-long v16, p2, v20

    .line 326
    .local v16, "lastTickDelay":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    move-wide/from16 v20, v0

    div-long v20, v14, v20

    const-wide/16 v22, 0x0

    cmp-long v5, v16, v22

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    int-to-long v0, v5

    move-wide/from16 v22, v0

    add-long v18, v20, v22

    .line 328
    .local v18, "relativeIndex":J
    add-long v7, v12, p2

    .line 330
    .local v7, "deadline":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    move-wide/from16 v20, v0

    div-long v20, p2, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    move-wide/from16 v22, v0

    rem-long v22, p2, v22

    const-wide/16 v24, 0x0

    cmp-long v5, v22, v24

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    int-to-long v0, v5

    move-wide/from16 v22, v0

    sub-long v10, v20, v22

    .line 334
    .local v10, "remainingRounds":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 336
    :try_start_0
    new-instance v4, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    int-to-long v0, v5

    move-wide/from16 v22, v0

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v11}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;Lorg/jboss/netty/util/TimerTask;JIJ)V

    .line 342
    .local v4, "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    iget v6, v4, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->stopIndex:I

    aget-object v5, v5, v6

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 347
    return-object v4

    .line 326
    .end local v4    # "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .end local v7    # "deadline":J
    .end local v10    # "remainingRounds":J
    .end local v18    # "relativeIndex":J
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 330
    .restart local v7    # "deadline":J
    .restart local v18    # "relativeIndex":J
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 344
    .restart local v10    # "remainingRounds":J
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot be started once stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 268
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/Timeout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 300
    :goto_0
    monitor-exit p0

    return-object v7

    .line 278
    :cond_0
    const/4 v4, 0x0

    .line 279
    .local v4, "interrupted":Z
    :goto_1
    :try_start_1
    iget-object v7, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    iget-object v7, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    iget-object v7, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 285
    goto :goto_1

    .line 288
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    if-eqz v4, :cond_2

    .line 289
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 292
    :cond_2
    sget-object v7, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->decrease()V

    .line 294
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 295
    .local v6, "unprocessedTimeouts":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/Timeout;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    .local v0, "arr$":[Ljava/util/Set;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 296
    .local v1, "bucket":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 300
    .end local v1    # "bucket":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 274
    .end local v0    # "arr$":[Ljava/util/Set;
    .end local v3    # "i$":I
    .end local v4    # "interrupted":Z
    .end local v5    # "len$":I
    .end local v6    # "unprocessedTimeouts":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/Timeout;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
