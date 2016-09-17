.class public Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;
.super Ljava/lang/Object;
.source "NioServerSocketChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannelFactory;


# instance fields
.field final bossExecutor:Ljava/util/concurrent/Executor;

.field private final sink:Lorg/jboss/netty/channel/ChannelSink;

.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "bossExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 109
    sget v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V
    .locals 3
    .param p1, "bossExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "workerCount"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "bossExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p2, :cond_1

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    if-gtz p3, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "workerCount ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "must be a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 137
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 138
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-direct {v0, p2, p3}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 139
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ServerChannel;
    .locals 1
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;
    .locals 2
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .prologue
    .line 142
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 147
    return-void
.end method
