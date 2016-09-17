.class public Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;
.super Ljava/lang/Object;
.source "OioServerSocketChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannelFactory;


# instance fields
.field final bossExecutor:Ljava/util/concurrent/Executor;

.field private final sink:Lorg/jboss/netty/channel/ChannelSink;

.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "bossExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "bossExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 114
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 115
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 116
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ServerChannel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;
    .locals 2
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 119
    new-instance v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 124
    return-void
.end method
