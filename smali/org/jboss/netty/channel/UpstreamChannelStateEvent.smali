.class public Lorg/jboss/netty/channel/UpstreamChannelStateEvent;
.super Ljava/lang/Object;
.source "UpstreamChannelStateEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelStateEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/UpstreamChannelStateEvent$1;
    }
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final state:Lorg/jboss/netty/channel/ChannelState;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "state"    # Lorg/jboss/netty/channel/ChannelState;
    .param p3, "value"    # Ljava/lang/Object;

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

    const-string/jumbo v1, "state"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->channel:Lorg/jboss/netty/channel/Channel;

    .line 49
    iput-object p2, p0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->state:Lorg/jboss/netty/channel/ChannelState;

    .line 50
    iput-object p3, p0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->value:Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lorg/jboss/netty/channel/ChannelState;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->state:Lorg/jboss/netty/channel/ChannelState;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "channelString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Lorg/jboss/netty/channel/UpstreamChannelStateEvent$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 102
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    :pswitch_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, " OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_0
    const-string/jumbo v2, " CLOSED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    const-string/jumbo v2, " BOUND: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v2, " UNBOUND"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 92
    const-string/jumbo v2, " CONNECTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_2
    const-string/jumbo v2, " DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    :pswitch_3
    const-string/jumbo v2, " INTEREST_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
