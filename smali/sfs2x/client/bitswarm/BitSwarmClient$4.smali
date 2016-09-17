.class Lsfs2x/client/bitswarm/BitSwarmClient$4;
.super Ljava/lang/Object;
.source "BitSwarmClient.java"

# interfaces
.implements Lsfs2x/client/core/IEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/bitswarm/BitSwarmClient;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/bitswarm/BitSwarmClient;


# direct methods
.method constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient$4;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 3
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 122
    iget-object v1, p0, Lsfs2x/client/bitswarm/BitSwarmClient$4;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "message"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lsfs2x/client/bitswarm/BitSwarmClient;->onSocketError(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->access$3(Lsfs2x/client/bitswarm/BitSwarmClient;Ljava/lang/String;)V

    .line 123
    return-void
.end method
