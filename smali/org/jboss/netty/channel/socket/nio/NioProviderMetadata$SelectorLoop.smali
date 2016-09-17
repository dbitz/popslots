.class final Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
.super Ljava/lang/Object;
.source "NioProviderMetadata.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectorLoop"
.end annotation


# instance fields
.field volatile done:Z

.field volatile selecting:Z

.field final selector:Ljava/nio/channels/Selector;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    .line 406
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 409
    :goto_0
    iget-boolean v4, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    if-nez v4, :cond_1

    .line 410
    monitor-enter p0

    .line 412
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :try_start_2
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 418
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    .line 421
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    .line 422
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 423
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 426
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v5, "Failed to wait for a temporary selector."

    invoke-interface {v4, v5, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 418
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    throw v4

    .line 425
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 430
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_1
    return-void
.end method
