.class Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;
.super Ljava/lang/Object;
.source "HttpTunnelingClientSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->closeReal(Lorg/jboss/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

.field final synthetic val$future:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "f"    # Lorg/jboss/netty/channel/ChannelFuture;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7$1;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7$1;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 327
    return-void
.end method
