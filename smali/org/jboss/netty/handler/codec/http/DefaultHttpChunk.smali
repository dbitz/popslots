.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;
.super Ljava/lang/Object;
.source "DefaultHttpChunk.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpChunk;


# instance fields
.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private last:Z


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->last:Z

    return v0
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->last:Z

    .line 49
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 50
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
