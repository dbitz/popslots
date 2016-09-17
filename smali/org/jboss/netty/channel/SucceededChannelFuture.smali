.class public Lorg/jboss/netty/channel/SucceededChannelFuture;
.super Lorg/jboss/netty/channel/CompleteChannelFuture;
.source "SucceededChannelFuture.java"


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/CompleteChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
