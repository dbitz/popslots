.class final Lorg/jboss/netty/channel/socket/nio/SelectorUtil;
.super Ljava/lang/Object;
.source "SelectorUtil.java"


# static fields
.field static final DEFAULT_IO_THREADS:I

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static select(Ljava/nio/channels/Selector;)V
    .locals 4
    .param p0, "selector"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/nio/channels/CancelledKeyException;
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Ljava/nio/channels/CancelledKeyException;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " raised by a Selector - JDK bug?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
