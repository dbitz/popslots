.class public Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
.super Ljava/lang/Object;
.source "ChannelEventRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jboss/netty/util/EstimatableObjectWrapper;


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final e:Lorg/jboss/netty/channel/ChannelEvent;

.field estimatedSize:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 47
    iput-object p2, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    .line 48
    return-void
.end method


# virtual methods
.method public getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getEvent()Lorg/jboss/netty/channel/ChannelEvent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 70
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method
