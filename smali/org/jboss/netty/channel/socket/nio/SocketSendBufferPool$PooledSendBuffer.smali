.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PooledSendBuffer"
.end annotation


# instance fields
.field final buffer:Ljava/nio/ByteBuffer;

.field final initialPos:I

.field private final parent:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p2, "parent"    # Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->parent:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 226
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->initialPos:I

    .line 228
    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->parent:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    .line 252
    .local v0, "parent":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    if-nez v1, :cond_0

    .line 253
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 254
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    invoke-direct {v2, v3, v0, v4}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;)V

    iput-object v2, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    .line 258
    :cond_0
    return-void
.end method

.method public totalBytes()J
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->initialPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 2
    .param p1, "ch"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "raddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .locals 2
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writtenBytes()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->initialPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
