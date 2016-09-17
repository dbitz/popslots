.class final Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;
.super Ljava/lang/Object;
.source "NioClientSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisterTask"
.end annotation


# instance fields
.field private final boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    .locals 0
    .param p1, "boss"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    .line 407
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 412
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->socket:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    const/16 v4, 0x8

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    .line 419
    .local v0, "connectTimeout":I
    if-lez v0, :cond_0

    .line 420
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    int-to-long v6, v0

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    .line 422
    :cond_0
    return-void

    .line 414
    .end local v0    # "connectTimeout":I
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/nio/channels/ClosedChannelException;
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method
