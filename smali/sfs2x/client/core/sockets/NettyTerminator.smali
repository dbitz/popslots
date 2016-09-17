.class public final Lsfs2x/client/core/sockets/NettyTerminator;
.super Ljava/util/TimerTask;
.source "NettyTerminator.java"


# instance fields
.field private cb:Lorg/jboss/netty/bootstrap/ClientBootstrap;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/bootstrap/ClientBootstrap;)V
    .locals 4
    .param p1, "cb"    # Lorg/jboss/netty/bootstrap/ClientBootstrap;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    iput-object p1, p0, Lsfs2x/client/core/sockets/NettyTerminator;->cb:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    .line 17
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lsfs2x/client/core/sockets/NettyTerminator;->timer:Ljava/util/Timer;

    .line 18
    iget-object v0, p0, Lsfs2x/client/core/sockets/NettyTerminator;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lsfs2x/client/core/sockets/NettyTerminator;->cb:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-virtual {v0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->releaseExternalResources()V

    .line 25
    iget-object v0, p0, Lsfs2x/client/core/sockets/NettyTerminator;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 26
    return-void
.end method
