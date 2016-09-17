.class public Lorg/jboss/netty/channel/FailedChannelFuture;
.super Lorg/jboss/netty/channel/CompleteChannelFuture;
.source "FailedChannelFuture.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/CompleteChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cause"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p2, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    .line 44
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
