.class Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;
.super Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;
.source "DefaultNioDatagramChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile writeBufferHighWaterMark:I

.field private volatile writeBufferLowWaterMark:I

.field private volatile writeSpinCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Ljava/net/DatagramSocket;)V

    .line 43
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferHighWaterMark:I

    .line 44
    const v0, 0x8000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferLowWaterMark:I

    .line 45
    const/16 v0, 0x10

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeSpinCount:I

    .line 49
    return-void
.end method

.method private setWriteBufferHighWaterMark0(I)V
    .locals 3
    .param p1, "writeBufferHighWaterMark"    # I

    .prologue
    .line 98
    if-gez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBufferHighWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferHighWaterMark:I

    .line 103
    return-void
.end method

.method private setWriteBufferLowWaterMark0(I)V
    .locals 3
    .param p1, "writeBufferLowWaterMark"    # I

    .prologue
    .line 121
    if-gez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBufferLowWaterMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferLowWaterMark:I

    .line 126
    return-void
.end method


# virtual methods
.method public getWriteBufferHighWaterMark()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferHighWaterMark:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeBufferLowWaterMark:I

    return v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeSpinCount:I

    return v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string/jumbo v1, "writeBufferHighWaterMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferHighWaterMark0(I)V

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v1, "writeBufferLowWaterMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferLowWaterMark0(I)V

    goto :goto_0

    .line 74
    :cond_2
    const-string/jumbo v1, "writeSpinCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteSpinCount(I)V

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setOptions(Ljava/util/Map;)V

    .line 54
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferLowWaterMark0(I)V

    .line 58
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v1, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark."

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public setWriteBufferHighWaterMark(I)V
    .locals 3
    .param p1, "writeBufferHighWaterMark"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferHighWaterMark0(I)V

    .line 95
    return-void
.end method

.method public setWriteBufferLowWaterMark(I)V
    .locals 3
    .param p1, "writeBufferLowWaterMark"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->setWriteBufferLowWaterMark0(I)V

    .line 118
    return-void
.end method

.method public setWriteSpinCount(I)V
    .locals 2
    .param p1, "writeSpinCount"    # I

    .prologue
    .line 133
    if-gtz p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "writeSpinCount must be a positive integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;->writeSpinCount:I

    .line 138
    return-void
.end method
