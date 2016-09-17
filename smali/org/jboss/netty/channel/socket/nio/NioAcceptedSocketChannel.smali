.class final Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;
.super Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
.source "NioAcceptedSocketChannel.java"


# instance fields
.field final bossThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;Ljava/lang/Thread;)V
    .locals 7
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p5, "socket"    # Ljava/nio/channels/SocketChannel;
    .param p6, "worker"    # Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .param p7, "bossThread"    # Ljava/lang/Thread;

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;)V

    .line 46
    iput-object p7, p0, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;->bossThread:Ljava/lang/Thread;

    .line 48
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;->setConnected()V

    .line 49
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 50
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 51
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 52
    return-void
.end method
