.class public Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;
.super Ljava/lang/Object;
.source "DefaultWriteCompletionEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/WriteCompletionEvent;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final writtenAmount:J


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;J)V
    .locals 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "writtenAmount"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writtenAmount must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->channel:Lorg/jboss/netty/channel/Channel;

    .line 46
    iput-wide p2, p0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->writtenAmount:J

    .line 47
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public getWrittenAmount()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->writtenAmount:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "channelString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, " WRITTEN_AMOUNT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;->getWrittenAmount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
