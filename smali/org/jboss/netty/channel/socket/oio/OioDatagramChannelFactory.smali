.class public Lorg/jboss/netty/channel/socket/oio/OioDatagramChannelFactory;
.super Ljava/lang/Object;
.source "OioDatagramChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannelFactory;


# instance fields
.field final sink:Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;

.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 94
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;

    .line 95
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;
    .locals 2
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 98
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 103
    return-void
.end method
