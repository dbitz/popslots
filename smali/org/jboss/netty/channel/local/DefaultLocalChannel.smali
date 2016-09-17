.class final Lorg/jboss/netty/channel/local/DefaultLocalChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "DefaultLocalChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalChannel;


# instance fields
.field final bound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final config:Lorg/jboss/netty/channel/ChannelConfig;

.field private final delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

.field volatile localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

.field volatile pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

.field volatile remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

.field final writeBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V
    .locals 1
    .param p1, "parent"    # Lorg/jboss/netty/channel/local/LocalServerChannel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p5, "pairedChannel"    # Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 45
    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    .line 55
    iput-object p5, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 56
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    .line 57
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 58
    return-void
.end method


# virtual methods
.method closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 84
    .local v0, "localAddress":Lorg/jboss/netty/channel/local/LocalAddress;
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 109
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 111
    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 114
    :cond_0
    return-void

    .line 88
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 89
    .local v2, "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    if-eqz v2, :cond_2

    .line 90
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 91
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 92
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 94
    :cond_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 97
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 109
    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 101
    :cond_4
    :try_start_2
    iget-object v1, v2, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 102
    .local v1, "me":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    if-eqz v1, :cond_5

    .line 103
    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 104
    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 105
    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 107
    :cond_5
    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 109
    .end local v1    # "me":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    :catchall_0
    move-exception v3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 110
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    if-nez v4, :cond_6

    .line 111
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 109
    :cond_6
    throw v3
.end method

.method flushWriteBuffer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    iget-object v2, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 118
    .local v2, "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 126
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v1, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v1, :cond_1

    .line 136
    iget-object v3, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 162
    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_0
    return-void

    .line 131
    .restart local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 132
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    .line 133
    const-wide/16 v4, 0x1

    invoke-static {p0, v4, v5}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    throw v3

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .line 153
    .local v0, "cause":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 154
    .restart local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 159
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 149
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
