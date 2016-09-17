.class public Lorg/jboss/netty/channel/DefaultFileRegion;
.super Ljava/lang/Object;
.source "DefaultFileRegion.java"

# interfaces
.implements Lorg/jboss/netty/channel/FileRegion;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final count:J

.field private final file:Ljava/nio/channels/FileChannel;

.field private final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultFileRegion;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 0
    .param p1, "file"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    .line 20
    iput-wide p2, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->position:J

    .line 21
    iput-wide p4, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->position:J

    return-wide v0
.end method

.method public releaseExternalResources()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/jboss/netty/channel/DefaultFileRegion;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v2, "Failed to close a file."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;J)J
    .locals 8
    .param p1, "target"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    iget-wide v2, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    sub-long v4, v2, p2

    .line 34
    .local v4, "count":J
    cmp-long v2, v4, v0

    if-ltz v2, :cond_0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected: 0 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 43
    :goto_0
    return-wide v0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    iget-wide v2, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->position:J

    add-long/2addr v2, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    goto :goto_0
.end method
