.class Lsfs2x/client/util/LagMonitor$PollTimerTask;
.super Ljava/util/TimerTask;
.source "LagMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/util/LagMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/util/LagMonitor;


# direct methods
.method constructor <init>(Lsfs2x/client/util/LagMonitor;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lsfs2x/client/util/LagMonitor$PollTimerTask;->this$0:Lsfs2x/client/util/LagMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor$PollTimerTask;->this$0:Lsfs2x/client/util/LagMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lsfs2x/client/util/LagMonitor;->access$0(Lsfs2x/client/util/LagMonitor;J)V

    .line 107
    iget-object v0, p0, Lsfs2x/client/util/LagMonitor$PollTimerTask;->this$0:Lsfs2x/client/util/LagMonitor;

    # getter for: Lsfs2x/client/util/LagMonitor;->sfs:Lsfs2x/client/SmartFox;
    invoke-static {v0}, Lsfs2x/client/util/LagMonitor;->access$1(Lsfs2x/client/util/LagMonitor;)Lsfs2x/client/SmartFox;

    move-result-object v0

    new-instance v1, Lsfs2x/client/requests/PingPongRequest;

    invoke-direct {v1}, Lsfs2x/client/requests/PingPongRequest;-><init>()V

    invoke-virtual {v0, v1}, Lsfs2x/client/SmartFox;->send(Lsfs2x/client/requests/IRequest;)V

    .line 108
    return-void
.end method
