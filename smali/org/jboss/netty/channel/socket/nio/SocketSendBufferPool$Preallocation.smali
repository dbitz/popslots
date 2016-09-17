.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Preallocation"
.end annotation


# instance fields
.field final buffer:Ljava/nio/ByteBuffer;

.field refCnt:I

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V
    .locals 1
    .param p2, "capacity"    # I

    .prologue
    .line 158
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    .line 160
    return-void
.end method
