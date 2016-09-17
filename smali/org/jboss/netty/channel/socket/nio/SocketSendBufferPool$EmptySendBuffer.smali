.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptySendBuffer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method


# virtual methods
.method public final finished()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public final totalBytes()J
    .locals 2

    .prologue
    .line 314
    const-wide/16 v0, 0x0

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
    .line 322
    const-wide/16 v0, 0x0

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
    .line 318
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final writtenBytes()J
    .locals 2

    .prologue
    .line 310
    const-wide/16 v0, 0x0

    return-wide v0
.end method
