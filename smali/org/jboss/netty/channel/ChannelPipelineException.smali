.class public Lorg/jboss/netty/channel/ChannelPipelineException;
.super Lorg/jboss/netty/channel/ChannelException;
.source "ChannelPipelineException.java"


# static fields
.field private static final serialVersionUID:J = 0x2ee53d0a6e3d079cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/jboss/netty/channel/ChannelException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
