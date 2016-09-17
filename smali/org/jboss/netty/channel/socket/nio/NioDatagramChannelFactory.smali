.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;
.super Ljava/lang/Object;
.source "NioDatagramChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannelFactory;


# instance fields
.field private final sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 98
    sget v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 5
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-gtz p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "workerCount (%s) must be a positive integer."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-nez p1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "workerExecutor argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 123
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    .line 124
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;
    .locals 3
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 127
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->nextWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 132
    return-void
.end method
