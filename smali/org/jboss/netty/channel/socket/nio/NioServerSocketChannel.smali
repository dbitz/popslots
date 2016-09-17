.class Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
.super Lorg/jboss/netty/channel/AbstractServerChannel;
.source "NioServerSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannel;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final config:Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

.field volatile selector:Ljava/nio/channels/Selector;

.field final shutdownLock:Ljava/util/concurrent/locks/Lock;

.field final socket:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 4
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractServerChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 52
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    .line 64
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    new-instance v2, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jboss/netty/channel/socket/DefaultServerSocketChannelConfig;-><init>(Ljava/net/ServerSocket;)V

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->config:Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    .line 85
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 86
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v3, "Failed to open a server socket."

    invoke-direct {v2, v3, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 74
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    :goto_0
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string/jumbo v3, "Failed to enter non-blocking mode."

    invoke-direct {v2, v3, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 75
    :catch_2
    move-exception v1

    .line 76
    .local v1, "e2":Ljava/io/IOException;
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "Failed to close a partially initialized socket."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->config:Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 106
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->setClosed()Z

    move-result v0

    return v0
.end method
