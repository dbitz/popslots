.class final Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;
.super Ljava/lang/Object;
.source "NioDatagramChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;)V

    .line 328
    return-void
.end method
