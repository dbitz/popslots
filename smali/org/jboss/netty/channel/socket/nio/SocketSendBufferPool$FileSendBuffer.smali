.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;
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
    name = "FileSendBuffer"
.end annotation


# instance fields
.field private final file:Lorg/jboss/netty/channel/FileRegion;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

.field private writtenBytes:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/FileRegion;)V
    .locals 0
    .param p2, "file"    # Lorg/jboss/netty/channel/FileRegion;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    .line 269
    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 4

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    invoke-interface {v2}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

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
    .line 296
    return-void
.end method

.method public totalBytes()J
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    invoke-interface {v0}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 1
    .param p1, "ch"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "raddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .locals 6
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    iget-wide v4, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    invoke-interface {v2, p1, v4, v5}, Lorg/jboss/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    .line 285
    .local v0, "localWrittenBytes":J
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    .line 286
    return-wide v0
.end method

.method public writtenBytes()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    return-wide v0
.end method
