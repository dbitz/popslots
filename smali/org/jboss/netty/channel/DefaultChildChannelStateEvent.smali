.class public Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;
.super Ljava/lang/Object;
.source "DefaultChildChannelStateEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChildChannelStateEvent;


# instance fields
.field private final childChannel:Lorg/jboss/netty/channel/Channel;

.field private final parentChannel:Lorg/jboss/netty/channel/Channel;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V
    .locals 2
    .param p1, "parentChannel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "childChannel"    # Lorg/jboss/netty/channel/Channel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parentChannel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "childChannel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->parentChannel:Lorg/jboss/netty/channel/Channel;

    .line 45
    iput-object p2, p0, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->childChannel:Lorg/jboss/netty/channel/Channel;

    .line 46
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->parentChannel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getChildChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->childChannel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "channelString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->getChildChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, " CHILD_OPEN: "

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;->getChildChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 65
    :cond_0
    const-string/jumbo v2, " CHILD_CLOSED: "

    goto :goto_0
.end method
