.class Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnpooledSendBuffer"
.end annotation


# instance fields
.field final buffer:Ljava/nio/ByteBuffer;

.field final initialPos:I

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->initialPos:I

    .line 191
    return-void
.end method


# virtual methods
.method public final finished()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

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
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public final totalBytes()J
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->initialPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 2
    .param p1, "ch"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "raddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .locals 2
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final writtenBytes()J
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;->initialPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
