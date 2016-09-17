.class Lsfs2x/client/bitswarm/BitSwarmClient$10;
.super Ljava/util/TimerTask;
.source "BitSwarmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/bitswarm/BitSwarmClient;->retryConnection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private final synthetic val$retryTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient$10;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    iput-object p2, p0, Lsfs2x/client/bitswarm/BitSwarmClient$10;->val$retryTimer:Ljava/util/Timer;

    .line 380
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient$10;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    # getter for: Lsfs2x/client/bitswarm/BitSwarmClient;->socket:Lsfs2x/client/core/sockets/ISocketLayer;
    invoke-static {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->access$8(Lsfs2x/client/bitswarm/BitSwarmClient;)Lsfs2x/client/core/sockets/ISocketLayer;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient$10;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    # getter for: Lsfs2x/client/bitswarm/BitSwarmClient;->lastIpAddress:Ljava/lang/String;
    invoke-static {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->access$9(Lsfs2x/client/bitswarm/BitSwarmClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsfs2x/client/bitswarm/BitSwarmClient$10;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    # getter for: Lsfs2x/client/bitswarm/BitSwarmClient;->lastTcpPort:I
    invoke-static {v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->access$10(Lsfs2x/client/bitswarm/BitSwarmClient;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lsfs2x/client/core/sockets/ISocketLayer;->connect(Ljava/lang/String;I)V

    .line 386
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient$10;->val$retryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 387
    return-void
.end method
