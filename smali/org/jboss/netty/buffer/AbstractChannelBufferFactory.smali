.class public abstract Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;
.super Ljava/lang/Object;
.source "AbstractChannelBufferFactory.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBufferFactory;


# instance fields
.field private final defaultOrder:Ljava/nio/ByteOrder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "defaultOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "defaultOrder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;->defaultOrder:Ljava/nio/ByteOrder;

    .line 50
    return-void
.end method


# virtual methods
.method public getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;->defaultOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method
