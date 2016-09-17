.class public abstract Lorg/jboss/netty/channel/AbstractChannel;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;,
        Lorg/jboss/netty/channel/AbstractChannel$IdDeallocator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ID_DEALLOCATOR:Lorg/jboss/netty/channel/AbstractChannel$IdDeallocator;

.field static final allChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

.field private final factory:Lorg/jboss/netty/channel/ChannelFactory;

.field private final id:Ljava/lang/Integer;

.field private volatile interestOps:I

.field private final parent:Lorg/jboss/netty/channel/Channel;

.field private final pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

.field private strVal:Ljava/lang/String;

.field private strValConnected:Z

.field private final succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/jboss/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/AbstractChannel;->$assertionsDisabled:Z

    .line 34
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    .line 35
    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$IdDeallocator;

    invoke-direct {v0}, Lorg/jboss/netty/channel/AbstractChannel$IdDeallocator;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/AbstractChannel;->ID_DEALLOCATOR:Lorg/jboss/netty/channel/AbstractChannel$IdDeallocator;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p4, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p5, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 67
    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;-><init>(Lorg/jboss/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    .line 120
    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    .line 121
    iput-object p2, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    .line 122
    iput-object p3, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 123
    iput-object p4, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    .line 124
    invoke-interface {p4, p0, p5}, Lorg/jboss/netty/channel/ChannelPipeline;->attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 125
    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 2
    .param p1, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 67
    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;-><init>(Lorg/jboss/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    .line 91
    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    .line 92
    iput-object p2, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 93
    iput-object p3, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    .line 95
    invoke-static {p0}, Lorg/jboss/netty/channel/AbstractChannel;->allocateId(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    .line 96
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    sget-object v1, Lorg/jboss/netty/channel/AbstractChannel;->ID_DEALLOCATOR:Lorg/jboss/netty/channel/AbstractChannel$IdDeallocator;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 98
    invoke-interface {p3, p0, p4}, Lorg/jboss/netty/channel/ChannelPipeline;->attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 99
    return-void
.end method

.method private static allocateId(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Integer;
    .locals 2
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    .local v0, "id":Ljava/lang/Integer;
    :goto_0
    sget-object v1, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 44
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private getIdString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "answer":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 337
    :goto_0
    return-object v0

    .line 313
    :pswitch_0
    const-string/jumbo v0, "00000000"

    .line 314
    goto :goto_0

    .line 316
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    goto :goto_0

    .line 319
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    goto :goto_0

    .line 322
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    goto :goto_0

    .line 325
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    goto :goto_0

    .line 328
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    goto :goto_0

    .line 331
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    goto/16 :goto_0

    .line 334
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 200
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->bind(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    .prologue
    .line 208
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 209
    .local v0, "returnedCloseFuture":Lorg/jboss/netty/channel/ChannelFuture;
    sget-boolean v1, Lorg/jboss/netty/channel/AbstractChannel;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    return-object v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lorg/jboss/netty/channel/Channel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->compareTo(Lorg/jboss/netty/channel/Channel;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lorg/jboss/netty/channel/Channel;)I
    .locals 2
    .param p1, "o"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 218
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->connect(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->disconnect(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 173
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    return-object v0
.end method

.method public getFactory()Lorg/jboss/netty/channel/ChannelFactory;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterestOps()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    return v0
.end method

.method public getParent()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    return-object v0
.end method

.method protected getSucceededFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method protected getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lorg/jboss/netty/channel/FailedChannelFuture;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/FailedChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setClosed()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->setClosed()Z

    move-result v0

    return v0
.end method

.method public setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "interestOps"    # I

    .prologue
    .line 230
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->setInterestOps(Lorg/jboss/netty/channel/Channel;I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected setInterestOpsNow(I)V
    .locals 0
    .param p1, "interestOps"    # I

    .prologue
    .line 239
    iput p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    .line 240
    return-void
.end method

.method public setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "readable"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->isConnected()Z

    move-result v1

    .line 275
    .local v1, "connected":Z
    iget-boolean v5, p0, Lorg/jboss/netty/channel/AbstractChannel;->strValConnected:Z

    if-ne v5, v1, :cond_0

    iget-object v5, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 276
    iget-object v4, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    .line 306
    :goto_0
    return-object v4

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "[id: 0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getIdString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 284
    .local v2, "localAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 285
    .local v3, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v3, :cond_5

    .line 286
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    if-nez v5, :cond_3

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    if-eqz v1, :cond_2

    const-string/jumbo v5, " => "

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1
    :goto_2
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "strVal":Ljava/lang/String;
    iput-object v4, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    .line 305
    iput-boolean v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->strValConnected:Z

    goto :goto_0

    .line 289
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, " :> "

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    if-eqz v1, :cond_4

    const-string/jumbo v5, " => "

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 293
    :cond_4
    const-string/jumbo v5, " :> "

    goto :goto_3

    .line 296
    :cond_5
    if-eqz v2, :cond_1

    .line 297
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public unbind()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 204
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->unbind(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 259
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 263
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
