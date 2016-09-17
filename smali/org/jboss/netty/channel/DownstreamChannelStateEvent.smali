.class public Lorg/jboss/netty/channel/DownstreamChannelStateEvent;
.super Ljava/lang/Object;
.source "DownstreamChannelStateEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelStateEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/DownstreamChannelStateEvent$1;
    }
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final state:Lorg/jboss/netty/channel/ChannelState;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "state"    # Lorg/jboss/netty/channel/ChannelState;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "future"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    if-nez p3, :cond_2

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "state"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->channel:Lorg/jboss/netty/channel/Channel;

    .line 51
    iput-object p2, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 52
    iput-object p3, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->state:Lorg/jboss/netty/channel/ChannelState;

    .line 53
    iput-object p4, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->value:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public getState()Lorg/jboss/netty/channel/ChannelState;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->state:Lorg/jboss/netty/channel/ChannelState;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "channelString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    sget-object v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 106
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 79
    :pswitch_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string/jumbo v2, " OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_0
    const-string/jumbo v2, " CLOSE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    const-string/jumbo v2, " BIND: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v2, " UNBIND"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 95
    const-string/jumbo v2, " CONNECT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v2, " DISCONNECT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :pswitch_3
    const-string/jumbo v2, " CHANGE_INTEREST: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
