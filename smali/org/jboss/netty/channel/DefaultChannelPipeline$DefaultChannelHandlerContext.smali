.class final Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultChannelHandlerContext"
.end annotation


# instance fields
.field private volatile attachment:Ljava/lang/Object;

.field private final canHandleDownstream:Z

.field private final canHandleUpstream:Z

.field private final handler:Lorg/jboss/netty/channel/ChannelHandler;

.field private final name:Ljava/lang/String;

.field volatile next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field volatile prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 3
    .param p2, "prev"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p3, "next"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 681
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    if-nez p4, :cond_0

    .line 684
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_0
    if-nez p5, :cond_1

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1
    instance-of v0, p5, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream:Z

    .line 690
    instance-of v0, p5, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream:Z

    .line 693
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream:Z

    if-nez v0, :cond_2

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handler must be either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_2
    iput-object p2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 701
    iput-object p3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 702
    iput-object p4, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->name:Ljava/lang/String;

    .line 703
    iput-object p5, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    .line 704
    return-void
.end method


# virtual methods
.method public canHandleDownstream()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream:Z

    return v0
.end method

.method public canHandleUpstream()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream:Z

    return v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 739
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {v2, v3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 740
    .local v0, "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_0

    .line 742
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v2, p1, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 747
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v2, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 752
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 753
    .local v0, "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 754
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 756
    :cond_0
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 735
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->attachment:Ljava/lang/Object;

    .line 736
    return-void
.end method
