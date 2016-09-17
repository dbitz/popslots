.class final Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;
.super Ljava/lang/Object;
.source "BBClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/bitswarm/bbox/BBClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PollTimeOutMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/bitswarm/bbox/BBClient;


# direct methods
.method public constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;)V
    .locals 2

    .prologue
    .line 131
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$1(Lsfs2x/client/bitswarm/bbox/BBClient;J)V

    .line 133
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->lastPollingTime:J
    invoke-static {v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$2(Lsfs2x/client/bitswarm/bbox/BBClient;)J

    move-result-wide v4

    const-wide/32 v6, 0xafc8

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "reason"

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    new-instance v2, Lsfs2x/client/bitswarm/bbox/BBEvent;

    const-string/jumbo v3, "bb-disconnect"

    invoke-direct {v2, v3, v0}, Lsfs2x/client/bitswarm/bbox/BBEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    # invokes: Lsfs2x/client/bitswarm/bbox/BBClient;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
    invoke-static {v1, v2}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$3(Lsfs2x/client/bitswarm/bbox/BBClient;Lsfs2x/client/core/BaseEvent;)V

    .line 146
    iget-object v1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$PollTimeOutMonitor;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # getter for: Lsfs2x/client/bitswarm/bbox/BBClient;->pollScheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$4(Lsfs2x/client/bitswarm/bbox/BBClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 148
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
