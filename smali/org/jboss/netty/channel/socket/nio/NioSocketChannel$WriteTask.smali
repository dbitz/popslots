.class final Lorg/jboss/netty/channel/socket/nio/NioSocketChannel$WriteTask;
.super Ljava/lang/Object;
.source "NioSocketChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;)V

    .line 269
    return-void
.end method
