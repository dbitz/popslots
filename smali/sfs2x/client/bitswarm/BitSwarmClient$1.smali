.class Lsfs2x/client/bitswarm/BitSwarmClient$1;
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
    iput-object p1, p0, Lsfs2x/client/bitswarm/BitSwarmClient$1;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 104
    iget-object v0, p0, Lsfs2x/client/bitswarm/BitSwarmClient$1;->this$0:Lsfs2x/client/bitswarm/BitSwarmClient;

    # invokes: Lsfs2x/client/bitswarm/BitSwarmClient;->onSocketConnect()V
    invoke-static {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->access$0(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    .line 105
    return-void
.end method
