.class public Lorg/jboss/netty/handler/queue/BufferedWriteHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "BufferedWriteHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final consolidateOnFlush:Z

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Ljava/util/Queue;Z)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;Z)V
    .locals 2
    .param p2, "consolidateOnFlush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    .line 214
    iput-boolean p2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    .line 215
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "consolidateOnFlush"    # Z

    .prologue
    .line 197
    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Ljava/util/Queue;Z)V

    .line 198
    return-void
.end method

.method private consolidatedWrite(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 289
    .local v4, "size":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 290
    iget-object v6, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/channel/ChannelEvent;

    invoke-interface {v6, v5}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 320
    .end local p1    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 292
    .restart local p1    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_1
    if-eqz v4, :cond_0

    .line 296
    new-array v1, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 297
    .local v1, "data":[Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 298
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v5}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v5, v1, v3

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    :cond_2
    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 302
    .local v0, "composite":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    invoke-static {v5}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 303
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v5, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;

    invoke-direct {v5, p0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;-><init>(Lorg/jboss/netty/handler/queue/BufferedWriteHandler;Ljava/util/List;)V

    invoke-interface {v2, v5}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 319
    iget-object v5, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v5, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 320
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method public disconnectRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 347
    return-void

    .line 345
    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V

    .line 234
    return-void
.end method

.method public flush(Z)V
    .locals 6
    .param p1, "consolidateOnFlush"    # Z

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 245
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->getQueue()Ljava/util/Queue;

    move-result-object v4

    .line 251
    .local v4, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    if-eqz p1, :cond_5

    .line 252
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    monitor-enter p0

    .line 259
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 260
    .local v1, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v1, :cond_2

    .line 272
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;

    .line 273
    monitor-exit p0

    goto :goto_0

    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 263
    .restart local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v5, :cond_4

    .line 264
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    .local v3, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    move-object v2, v3

    .line 267
    .end local v3    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    .restart local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_3
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1

    .line 269
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 275
    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_5
    monitor-enter p0

    .line 277
    :goto_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 278
    .restart local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v1, :cond_6

    .line 283
    monitor-exit p0

    goto :goto_0

    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 281
    .restart local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_6
    :try_start_3
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method protected getQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public isConsolidateOnFlush()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    return v0
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 1
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    .line 331
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 336
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 337
    return-void

    .line 333
    :cond_1
    sget-boolean v0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
