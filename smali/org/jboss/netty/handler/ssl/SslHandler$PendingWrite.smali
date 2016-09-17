.class final Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
.super Ljava/lang/Object;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingWrite"
.end annotation


# instance fields
.field final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final outAppBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "outAppBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 1051
    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    .line 1052
    return-void
.end method
